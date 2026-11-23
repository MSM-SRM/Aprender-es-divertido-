#!/usr/bin/env python3
"""Generate every Spanish territory audio file with Piper Davefx."""
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent
MANIFEST = ROOT / "audio-manifest.json"
MODEL_DIR = ROOT / ".piper-models"
VOICE = "es_ES-davefx-medium"


def run(cmd, *, input_text=None):
    subprocess.run(cmd, input=input_text, text=True, check=True)


def main():
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    entries = []
    for territory in manifest["territories"]:
        entries.append((territory["intro"]["file"], territory["intro"]["text"]))
        entries.extend((fact["file"], fact["text"]) for fact in territory["facts"])

    expected = int(manifest.get("totalAudioFiles", 209))
    if len(entries) != expected:
        raise SystemExit(f"ERROR: el manifiesto declara {expected} audios, pero contiene {len(entries)}.")

    MODEL_DIR.mkdir(parents=True, exist_ok=True)
    run(["python", "-m", "piper.download_voices", VOICE, "--download-dir", str(MODEL_DIR)])
    model = MODEL_DIR / f"{VOICE}.onnx"
    if not model.exists():
        raise SystemExit(f"No se encontró el modelo Piper: {model}")

    generated = 0
    for index, (relative_path, text) in enumerate(entries, start=1):
        output = ROOT / relative_path
        output.parent.mkdir(parents=True, exist_ok=True)
        wav = output.with_suffix(".wav")
        run(
            ["python", "-m", "piper", "--model", str(model), "--output_file", str(wav)],
            input_text=text,
        )
        run([
            "ffmpeg", "-y", "-loglevel", "error", "-i", str(wav),
            "-codec:a", "libmp3lame", "-b:a", "128k", str(output),
        ])
        wav.unlink(missing_ok=True)
        generated += 1
        print(f"[{generated}/{expected}] {relative_path}", flush=True)

    missing = [str(ROOT / path) for path, _ in entries if not (ROOT / path).is_file()]
    if missing:
        raise SystemExit("Faltan audios: " + ", ".join(missing[:10]))

    total_bytes = sum((ROOT / path).stat().st_size for path, _ in entries)
    print(f"OK: {generated} MP3 generados. Tamaño total: {total_bytes / 1024 / 1024:.1f} MB.")


if __name__ == "__main__":
    main()
