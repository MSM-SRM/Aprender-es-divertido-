#!/usr/bin/env python3
"""Generate two Davefx Piper test samples from the project's audio manifest."""
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent
MANIFEST = ROOT / "audio-manifest.json"
MODEL_DIR = ROOT / ".piper-models"
OUT_DIR = ROOT / "muestras-davefx"
VOICE = "es_ES-davefx-medium"

def run(cmd, *, input_text=None):
    subprocess.run(cmd, input=input_text, text=True, check=True)

def main():
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    territory = next(t for t in manifest["territories"] if t["id"] == "andalucia")
    intro = territory["intro"]["text"]
    # Choose a longer fact to hear pacing and pronunciation in a full sentence.
    fact = next(f["text"] for f in territory["facts"] if f["number"] == 6)

    MODEL_DIR.mkdir(exist_ok=True)
    OUT_DIR.mkdir(exist_ok=True)

    run(["python", "-m", "piper.download_voices", VOICE, "--download-dir", str(MODEL_DIR)])

    samples = [
        ("01-presentacion-andalucia", intro),
        ("02-curiosidad-andalucia", fact),
    ]
    model = MODEL_DIR / f"{VOICE}.onnx"
    for filename, text in samples:
        wav = OUT_DIR / f"{filename}.wav"
        mp3 = OUT_DIR / f"{filename}.mp3"
        run(["python", "-m", "piper", "--model", str(model), "--output_file", str(wav)], input_text=text)
        run(["ffmpeg", "-y", "-i", str(wav), "-codec:a", "libmp3lame", "-b:a", "128k", str(mp3)])
        wav.unlink(missing_ok=True)
        print(f"Generado: {mp3.name}")

if __name__ == "__main__":
    main()
