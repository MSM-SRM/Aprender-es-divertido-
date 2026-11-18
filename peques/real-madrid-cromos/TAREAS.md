# Real Madrid Cromos — tareas abiertas

> Actualizado: 17/11/2026 · Estado de partida: integración DIAMANTE construida y verificada en local; cara TODOS rediseñada como visual (trofeos con icono y años, escudo + bandera, estadísticas con iconos), sin publicar.

## Bloqueantes para publicar

- [ ] **Autorización del usuario** para commit y push. Ya autorizados (17/11): la isla «Real Madrid» en `mundo-mireia.html`, el área `real-madrid` en `areas-test.html` y el cambio de portada del juego.

## Datos (dossier del 15/11/2026)

- [ ] **Carta doble Di Stéfano (referencia v2 del usuario, 17/11):** añadir RCD Espanyol 1964–1965 (60 partidos, 14 goles) cuando se confirme con fuente primaria; contrastar River «1945 · 1947–1949» (¿regreso en 1953?), Huracán «1946 · cedido» y Millonarios «1949–1952» vs «1949–1953»; añadir temporadas a Balón de Oro (1957, 1959), Súper Balón de Oro (1989) y Pichichi (5 veces). Detalle en `REFERENCIA-CARTA-DOSTRARES.md`.
- [ ] CR7: confirmar si el retiro internacional anunciado el 5-11-2026 sigue vigente y actualizar el corte 30-10-2026 si cambia.
- [ ] CR7: resolver 451 (Real Madrid) vs 450 (LALIGA); el anverso usa 451 con nota.
- [ ] CR7: asistencias 131* vs 119 (LALIGA) — criterio de asistencia distinto; contrastar.
- [ ] CR7: League Cup de Manchester United «2?» — REVISAR recuento y temporadas.
- [ ] CR7: verificar qué premios individuales corresponden a la etapa Madrid antes de etiquetarlos como madridistas.
- [ ] CR7: Al-Nassr — verificar oficialmente otros títulos de liga/copa antes de contarlos.
- [ ] Di Stéfano: desglose de títulos (¿Pequeña Copa del Mundo cuenta en el 17?) y carrera previa (River/Huracán/Millonarios) sin desglose fiable.
- [ ] Di Stéfano: verificar ficha RFEF de España (31/23) y Copa Colombia 1953.
- [ ] Raúl: explicar el 15 de FIFA frente al desglose que suma 16; fijar criterio.
- [ ] Raúl: Al-Sadd — confirmar Copa Príncipe 2014* y palmarés completo.
- [ ] Modrić: fijar desglose final de 28 títulos (Intercontinental FIFA 2024 incluida o no).
- [ ] Modrić: goles 43 [VERIFICAR ficha oficial]; Croacia 182/27* — comprobar cifra final.
- [ ] Benzema: Al-Ittihad sin cifras ni desglose de títulos — actualizar con fuente oficial saudí.
- [ ] Benzema: Francia 97/37* — comprobar FFF.
- [ ] Puskás: tercera Copa de Europa (temporada exacta) y Copa del Rey 1*; liga húngara 5* con temporadas.
- [ ] Gento: Copa de España 2 o 3* y desglose que suma 23; Racing Santander sin datos.
- [ ] Gento: aclarar la nota del Balón de Oro 1960 (segundo puesto*) antes de incluir premios.
- [ ] Ramos: títulos 22 — contrastar desglose (Intercontinental vs Mundial de Clubes); Sevilla segunda etapa y Monterrey sin datos.
- [ ] Casillas: verificar el total de 19 con ficha oficial; no sumar Intercontinental y Mundial de Clubes como títulos distintos.
- [ ] Asistencias históricas (Di Stéfano, Raúl, Modrić, Benzema, Zidane, Gento, Ramos): sin registro homogéneo; solo incorporar con confirmación primaria.

## Assets

- [ ] **9 cartas Diamante** (Di Stéfano, Raúl, Modrić, Benzema, Puskás, Zidane, Gento, Ramos, Casillas): **nuevo formato v2** — generar cada cara por separado siguiendo la referencia doble de Di Stéfano (`REFERENCIA-CARTA-DOSTRARES.md`): anverso con mosaico arcoíris y placa dorada; reverso «Trayectoria profesional» con bandera + escudo + años por club y laureles individuales. Sin «N/D» (regla del proyecto). Generación bloqueada el 17/11 por cuota/credenciales; reintentar el 18/11. Al tenerlas: `cardImage` + `number` en `players.json`, `assetPending: false`, QA reglas 8/9/10 y verificación completa.
- [ ] Pedir al usuario el archivo original de la carta doble de Di Stéfano (solo la pegó en el chat) y guardarlo como `REFERENCIA_DOBLE_DiStefano.png` en `assets/`.
- [ ] Dorsales históricos elegidos (9/7/10/9/10/5/11/4/1) — pendientes de integrar en el JSON junto a las cartas (la referencia v2 no muestra dorsal; decidir con el usuario si se mantiene la placa con dorsal de la v1).
- [ ] Escudos oficiales de clubes (ahora SVG provisionales con colores e iniciales) y trofeos/banderas como imágenes reales si el usuario quiere (sujeto a licencias).
- [ ] Marcos Oro y Blanco/Violeta: localizar los originales (el Oro tiene referencia `marco-oro-original-referencia.png`; el Blanco/Violeta está pendiente de definir y aprobar).
- [ ] Resto de la lista de 50 (lista sin aprobar por el usuario; distribución 10/10/30).

## Juego

- [ ] Quiz «¿Quién es este jugador?» con 4 opciones (fase 3 del documento maestro) y arquitectura preparada para el modo efemérides.
- [ ] Historias concretas (4–5 por jugador) con texto breve para niños.
- [ ] Progreso/colección por perfil y claves de localStorage propias (whitelist en `mi-progreso.html`).
- [x] **Integración en el mapa (17/11, con autorización del usuario):** acceso «Real Madrid» en `mundo-mireia.html` + área `real-madrid` en `areas-test.html` con el juego «Real Madrid Cromos». Flujo verificado en local: mapa → placa → área → juego. La zona está pensada como hub para este y otros juegos futuros.
- [x] **Placa en el mapa (18/11):** se retira la isla SVG (mala resolución) y se pone un recuadro con escudo + «Real Madrid» / «Cromos y juegos» en el hueco de agua al sur de Ciencias, junto a Mitología Griega (x 16,5 %, y 73 %). Verificado sin solaparse con la zona clicable de Mitología ni desbordar a 1440/1280/1024/851/768/390/320 px.
- [ ] **Valorar con el usuario el coste de una imagen de mapa mejor** (más resolución y más huecos para islas/juegos) y, si se aprueba, sustituir la placa por la isla generada. La placa actual es la solución «de momento».
- [x] **Giro 3D entre caras (18/11):** el cambio MADRID ↔ TODOS gira la carta 180° (`rotateY`, 0,62 s), con altura animada y sincronizada, `inert`/`aria-hidden` en la cara oculta y respeto a `prefers-reduced-motion`. Verificado a 817/390/320 px.
- [ ] **Integrar los 3 diseños del usuario** (CR7, Di Stéfano y Raúl, cartas de dos caras): pedirlos en `Downloads\RM cromos` (ver README, sección de assets). Al llegar: recortar anverso/reverso si vienen juntos, guardarlos en `assets/players/<id>/`, añadir `cardImageFront`/`cardImageBack` al JSON, adaptar la vista y ampliar el QA.
- [ ] Traducciones ES/EN/CA/DE si se integra en el sitio multilingüe (fallback: castellano).

## Verificación pendiente de esta fase

- [x] QA `tests/validar-datos.html`: 10 reglas PASS (265 estadísticas, 20 caras, 10 jugadores).
- [x] Layout sin desbordamiento horizontal a 1280/817, 390 y 320 px; sin errores de consola. Re-verificado 17/11 tras el rediseño TODOS (iconos, tiles, escudos, banderas); corregido el salto de línea de los años largos a 320 px.
- [ ] Revisar la marca de agua del escudo (queda como forma geométrica con `opacity:.13`; valorar un SVG más fiel si el usuario lo pide).
- [ ] Mostrar al usuario el nuevo diseño TODOS con captura cuando la ventana del navegador esté visible.
