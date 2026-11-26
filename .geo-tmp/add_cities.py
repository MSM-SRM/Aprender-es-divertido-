#!/usr/bin/env python3
"""Añade Ceuta y Melilla a ccaa-geometry.geojson conservando las 17 existentes.

Se conserva la geometría completa (todos los anillos) de cada ciudad.
En el dibujo del juego se omiten anillos menores al 0.05 % del área principal
solo para Ceuta/Melilla (islotes diminutos del conjunto IGN); documentado en GEOMETRIA.md.
"""
import json
from pathlib import Path

REPO = Path("/home/runner/work/Aprender-es-divertido-/Aprender-es-divertido-")
GEO = REPO / "peques/puzzle-comunidades/ccaa-geometry.geojson"
SOURCES = REPO / ".geo-tmp/esp-adm1-simplified.geojson"


def ring_area(ring):
    n = len(ring)
    s = 0.0
    for i in range(n):
        x1, y1 = ring[i][0], ring[i][1]
        x2, y2 = ring[(i + 1) % n][0], ring[(i + 1) % n][1]
        s += x1 * y2 - x2 * y1
    return abs(s) / 2.0


def main():
    geo = json.loads(GEO.read_text(encoding="utf-8"))
    src = json.loads(SOURCES.read_text(encoding="utf-8"))

    map_name_id = {"Ceuta": ("51", "Ciudad Autónoma de Ceuta"), "Melilla": ("52", "Ciudad Autónoma de Melilla")}

    new_features = []
    for f in src["features"]:
        name = f["properties"].get("shapeName") or ""
        match = next((m for m in map_name_id if m in name), None)
        if match is None:
            continue
        cid, pretty = map_name_id[match]
        feat = {
            "type": "Feature",
            "properties": {
                "id": cid,
                "name": pretty,
                "source": "Instituto Geografico Nacional (España) vía geoBoundaries / World Bank / GADM 4.0, licencia CC BY 4.0",
            },
            "geometry": f["geometry"],  # toda la geometría real (incluidos islotes)
        }
        print("AGREGADO:", cid, pretty, "anillos:", sum(len(p) for p in f["geometry"]["coordinates"]))
        new_features.append(feat)

    print("Features totales:", len(geo["features"]), "+", len(new_features), "=", len(geo["features"]) + len(new_features))
    out = dict(geo)
    out["features"] = geo["features"] + new_features
    out["name"] = "Comunidades y Ciudades Autónomas de España"
    out["source"] = "Code for America / click_that_hood (MIT, 17 comunidades); Instituto Geografico Nacional (España) vía geoBoundaries / World Bank / GADM 4.0 (CC BY 4.0, Ceuta y Melilla); simplificado para el juego"
    GEO.write_text(json.dumps(out, ensure_ascii=False, separators=(",", ":")), encoding="utf-8")
    print("ESCIBIDO", GEO)


if __name__ == "__main__":
    main()
