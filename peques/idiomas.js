
(function () {
  const languages = {
    es: {
      flag: "espflag.PNG",
      name: "Español",
      code: "es-ES",
      text: {}
    },
    en: {
      flag: "ukflag.PNG",
      name: "English",
      code: "en-GB",
      text: {
        "¿Quién va a jugar hoy? ✨": "Who's playing today? ✨",
        "Elige tu perfil para entrar en tu mundo de aprendizaje.": "Choose your profile to enter your learning world.",
        "¡Rincón de chistes!": "Joke corner!",
        "🔊 Escuchar chiste": "🔊 Hear the joke",
        "🔁 Repetir chiste": "🔁 Repeat the joke",
        "😄 Otro chiste": "😄 Another joke",
        "¡Aprender puede ser una aventura!": "Learning can be an adventure!",
        "Pequeños retos, grandes descubrimientos. Elige un juego y consigue estrellas a tu ritmo.": "Small challenges, big discoveries. Choose a game and earn stars at your own pace.",
        "Cambiar perfil": "Switch profile",
        "Nivel:": "Level:",
        "🔊 Escuchar": "🔊 Listen",
        "🎮 Elige una actividad": "🎮 Choose an activity",
        "Contar objetos": "Count objects",
        "Cuenta y elige el número.": "Count and choose the number.",
        "Palabras mágicas": "Magic words",
        "Escucha y reconoce palabras.": "Listen and recognise words.",
        "Memoria divertida": "Fun memory game",
        "Encuentra las parejas iguales.": "Find the matching pairs.",
        "Escucha y aprende": "Listen and learn",
        "🏆 Mi progreso": "🏆 My progress",
        "Se guarda en este dispositivo": "Saved on this device",
        "¡Cada intento cuenta!": "Every try counts!",
        "Juega para ganar tus primeras estrellas.": "Play to earn your first stars.",
        "Reiniciar progreso": "Reset progress",
        "← Volver al menú": "← Back to menu",
        "¡Vamos allá!": "Let's go!",
        "¡Muy bien! ⭐ ¡Has ganado una estrella!": "Well done! ⭐ You earned a star!",
        "¡Buen intento! Prueba otra vez 😊": "Good try! Try again 😊",
        "¡Correcto!": "Correct!",
        "¡Casi! Escucha otra vez y prueba 😊": "Almost! Listen again and try 😊",
        "¡Pareja encontrada! ⭐": "Match found! ⭐",
        "¡Lo has conseguido! Todas las parejas 🎉": "You did it! All pairs matched 🎉",
        "¡Buen trabajo!": "Great job!",
        "⭐ 0 estrellas": "⭐ 0 stars",
        "0 retos": "0 challenges",
        "Nivel descubrir": "Discovery level",
        "Nivel practicar": "Practice level",
        "Hecho con cariño para aprender jugando 💜 · Cada perfil tiene su propio progreso.": "Made with love for learning through play 💜 · Each profile has its own progress."
      }
    },
    ca: {
      flag: "catflag.PNG",
      name: "Català",
      code: "ca-ES",
      text: {
        "¿Quién va a jugar hoy? ✨": "Qui jugarà avui? ✨",
        "Elige tu perfil para entrar en tu mundo de aprendizaje.": "Tria el teu perfil per entrar al teu món d'aprenentatge.",
        "¡Rincón de chistes!": "Racó d'acudits!",
        "🔊 Escuchar chiste": "🔊 Escolta l'acudit",
        "🔁 Repetir chiste": "🔁 Repeteix l'acudit",
        "😄 Otro chiste": "😄 Un altre acudit",
        "¡Aprender puede ser una aventura!": "Aprendre pot ser una aventura!",
        "Pequeños retos, grandes descubrimientos. Elige un juego y consigue estrellas a tu ritmo.": "Petits reptes, grans descobriments. Tria un joc i aconsegueix estrelles al teu ritme.",
        "Cambiar perfil": "Canviar de perfil",
        "Nivel:": "Nivell:",
        "🔊 Escuchar": "🔊 Escoltar",
        "🎮 Elige una actividad": "🎮 Tria una activitat",
        "Contar objetos": "Comptar objectes",
        "Cuenta y elige el número.": "Compta i tria el nombre.",
        "Palabras mágicas": "Paraules màgiques",
        "Escucha y reconoce palabras.": "Escolta i reconeix paraules.",
        "Memoria divertida": "Memòria divertida",
        "Encuentra las parejas iguales.": "Troba les parelles iguals.",
        "Escucha y aprende": "Escolta i aprèn",
        "🏆 Mi progreso": "🏆 El meu progrés",
        "Se guarda en este dispositivo": "Es desa en aquest dispositiu",
        "¡Cada intento cuenta!": "Cada intent compta!",
        "Juega para ganar tus primeras estrellas.": "Juga per guanyar les teves primeres estrelles.",
        "Reiniciar progreso": "Reiniciar el progrés",
        "← Volver al menú": "← Tornar al menú",
        "¡Vamos allá!": "Som-hi!",
        "¡Muy bien! ⭐ ¡Has ganado una estrella!": "Molt bé! ⭐ Has guanyat una estrella!",
        "¡Buen intento! Prueba otra vez 😊": "Bon intent! Torna-ho a provar 😊",
        "¡Buen trabajo!": "Molt bona feina!",
        "Nivel descubrir": "Nivell de descoberta",
        "Nivel practicar": "Nivell de pràctica",
        "Hecho con cariño para aprender jugando 💜 · Cada perfil tiene su propio progreso.": "Fet amb estima per aprendre jugant 💜 · Cada perfil té el seu propi progrés."
      }
    },
    de: {
      flag: "deuflag.PNG",
      name: "Deutsch",
      code: "de-DE",
      text: {
        "¿Quién va a jugar hoy? ✨": "Wer spielt heute? ✨",
        "Elige tu perfil para entrar en tu mundo de aprendizaje.": "Wähle dein Profil und betrete deine Lernwelt.",
        "¡Rincón de chistes!": "Witze-Ecke!",
        "🔊 Escuchar chiste": "🔊 Witz anhören",
        "🔁 Repetir chiste": "🔁 Witz wiederholen",
        "😄 Otro chiste": "😄 Noch ein Witz",
        "¡Aprender puede ser una aventura!": "Lernen kann ein Abenteuer sein!",
        "Pequeños retos, grandes descubrimientos. Elige un juego y consigue estrellas a tu ritmo.": "Kleine Herausforderungen, große Entdeckungen. Wähle ein Spiel und sammle Sterne in deinem Tempo.",
        "Cambiar perfil": "Profil wechseln",
        "Nivel:": "Stufe:",
        "🔊 Escuchar": "🔊 Anhören",
        "🎮 Elige una actividad": "🎮 Wähle eine Aktivität",
        "Contar objetos": "Objekte zählen",
        "Cuenta y elige el número.": "Zähle und wähle die richtige Zahl.",
        "Palabras mágicas": "Zauberwörter",
        "Escucha y reconoce palabras.": "Höre zu und erkenne Wörter.",
        "Memoria divertida": "Memory-Spiel",
        "Encuentra las parejas iguales.": "Finde die passenden Paare.",
        "Escucha y aprende": "Hören und lernen",
        "🏆 Mi progreso": "🏆 Mein Fortschritt",
        "Se guarda en este dispositivo": "Wird auf diesem Gerät gespeichert",
        "¡Cada intento cuenta!": "Jeder Versuch zählt!",
        "Juega para ganar tus primeras estrellas.": "Spiele und verdiene deine ersten Sterne.",
        "Reiniciar progreso": "Fortschritt zurücksetzen",
        "← Volver al menú": "← Zurück zum Menü",
        "¡Vamos allá!": "Los geht's!",
        "¡Muy bien! ⭐ ¡Has ganado una estrella!": "Sehr gut! ⭐ Du hast einen Stern verdient!",
        "¡Buen intento! Prueba otra vez 😊": "Gut versucht! Probiere es noch einmal 😊",
        "¡Buen trabajo!": "Gut gemacht!",
        "Nivel descubrir": "Entdeckerstufe",
        "Nivel practicar": "Übungsstufe",
        "Hecho con cariño para aprender jugando 💜 · Cada perfil tiene su propio progreso.": "Mit Liebe zum spielerischen Lernen 💜 · Jedes Profil hat seinen eigenen Fortschritt."
      }
    }
  };

  const storageKey = "mundoAprendizajeLanguage";
  const originalText = new WeakMap();
  let currentLanguage = "es";
  let observer;

  function translatePage() {
    const walker = document.createTreeWalker(
      document.body,
      NodeFilter.SHOW_TEXT
    );

    const nodes = [];
    while (walker.nextNode()) {
      const node = walker.currentNode;
      if (!node.parentElement.closest(
        "script,style,.language-switcher"
      )) nodes.push(node);
    }

    nodes.forEach(node => {
      if (!originalText.has(node)) {
        originalText.set(node, node.nodeValue);
      }

      const original = originalText.get(node);
      const leading = (original.match(/^\s*/) || [""])[0];
      const trailing = (original.match(/\s*$/) || [""])[0];
      const key = original.trim();
      const translation = languages[currentLanguage].text[key];

      node.nodeValue = translation
        ? leading + translation + trailing
        : original;
    });
  }

  function setLanguage(lang) {
    if (!languages[lang]) return;
    currentLanguage = lang;
    try {
      localStorage.setItem(storageKey, lang);
    } catch (e) {}

    document.documentElement.lang = languages[lang].code;
    document.querySelectorAll(".language-switcher button")
      .forEach(button => {
        button.setAttribute(
          "aria-pressed",
          String(button.dataset.lang === lang)
        );
      });

    if (observer) observer.disconnect();
    translatePage();
    watchPage();
  }

  function watchPage() {
    if (observer) observer.disconnect();
    observer = new MutationObserver(() => {
      observer.disconnect();
      translatePage();
      watchPage();
    });
    observer.observe(document.body, {
      childList: true,
      characterData: true,
      subtree: true
    });
  }

  function createSelector() {
    const bar = document.createElement("nav");
    bar.className = "language-switcher";
    bar.setAttribute("aria-label", "Choose language");

    Object.entries(languages).forEach(([lang, item]) => {
      const button = document.createElement("button");
      button.type = "button";
      button.dataset.lang = lang;
      button.title = item.name;
      button.setAttribute("aria-label", item.name);

      const img = document.createElement("img");
      img.src = "./imagenes/" + item.flag;
      img.alt = item.name;
      img.onerror = () => {
        img.style.display = "none";
        button.textContent = lang.toUpperCase();
      };

      button.appendChild(img);
      button.addEventListener("click", () => setLanguage(lang));
      bar.appendChild(button);
    });

    const style = document.createElement("style");
    style.textContent = `
      .language-switcher {
        display:flex; justify-content:flex-end; align-items:center;
        gap:7px; padding:6px 0 12px; position:relative; z-index:20;
      }
      .language-switcher button {
        width:42px; height:34px; padding:3px; border-radius:9px;
        background:#fff; border:2px solid #e7e3ff;
        display:flex; align-items:center; justify-content:center;
      }
      .language-switcher button[aria-pressed="true"] {
        border-color:#6558d3; box-shadow:0 0 0 2px #6558d344;
      }
      .language-switcher img {
        display:block; width:100%; height:100%; object-fit:contain;
      }
      @media(max-width:380px) {
        .language-switcher {gap:4px}
        .language-switcher button {width:36px;height:30px}
      }
    `;
    document.head.appendChild(style);

    const app = document.querySelector(".app") || document.body;
    app.insertBefore(bar, app.firstChild);
  }

  function start() {
    createSelector();

    try {
      const saved = localStorage.getItem(storageKey);
      if (saved && languages[saved]) currentLanguage = saved;
    } catch (e) {}

    setLanguage(currentLanguage);
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", start);
  } else {
    start();
  }
})();

