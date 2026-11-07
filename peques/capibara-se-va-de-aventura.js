(() => {
  'use strict';

  const params = new URLSearchParams(location.search);
  const profiles = ['sofia', 'mireia', 'guest'];
  const profile = profiles.includes(params.get('profile')) ? params.get('profile') : 'guest';
  const localeKey = `capibaraAventuraLanguage_${profile}`;
  const strings = {
    es: {
      back: '← Volver a Juegos', tagline: '¡Acompaña a Capi de aventura y descubre palabras nuevas!',
      hero: 'Capi, la capibara, se va de viaje a vivir la aventura de aprender nuevas palabras. ¿Le quieres acompañar a aprender? ¿Adónde quieres ir con Capi primero…?',
      heroAlt: 'Capi, la capibara aventurera, camina de lado con un kimono rosa de jiu-jitsu, una mochila y un mapa.',
      heroRegion: 'Capi, la capibara aventurera',
      loading: 'Preparando las aventuras y sus fotografías…', loadError: 'No se pudieron cargar las aventuras. Abre esta página desde el servidor local del proyecto.',
      badData: 'La aventura no está completa: debe tener 11 lugares, 20 palabras por lugar y sus fotografías con atribuciones. Revisa los datos antes de jugar.',
      where: '¿Adónde vamos?', locationHint: 'Elige una aventura. Cada lugar tiene 20 palabras con fotografías reales.',
      learn: 'Aprende las palabras', learnHeading: 'Tarjeta para aprender una palabra', quizHeading: 'Juego de unir las fotos con sus palabras',
      previous: '← Anterior', choosePlace: '← Elegir lugar', next: 'Siguiente →', startQuiz: '¡A jugar! Unir fotos y palabras →',
      listen: 'Escuchar', listenAria: word => `Escuchar la palabra ${word}`,
      quizPrompt: '¿Qué palabra corresponde a esta foto?', correct: '¡Muy bien! 🌟', tryAgain: '¡Casi! Prueba con otra palabra.',
      nextQuestion: 'Siguiente foto →', finish: '¡Aventura completada!', score: (score, total) => `Has unido ${score} de ${total} fotos con su palabra. ¡Buen trabajo!`,
      replay: 'Jugar otra vez', chooseAgain: 'Elegir otro lugar',
      credits: 'Créditos', creditsHint: 'Toca este botón cinco veces seguidas para ver las autorías y licencias de las fotografías.',
      creditsRevealed: 'Créditos visibles. Vuelve a tocar Créditos para cerrarlos.', creditsIntro: 'Fotografías de Wikimedia Commons. Autoría, licencia y archivo original:',
      photoBy: 'Fotografía de',       file: 'Archivo de Wikimedia Commons', modified: 'imagen recortada', language: 'English',
      imagesAlt: word => `Fotografía de ${word}`, progress: (index, total) => `Foto ${index} de ${total}`,
      locationCount: count => `${count} palabras con fotos`, languageName: 'Español', retry: 'Volver a las tarjetas'
    },
    en: {
      back: '← Back to Games', tagline: 'Join Capi on an adventure and discover new words!',
      hero: 'Capi, the capybara, is setting off on a journey to live the adventure of learning new words. Will you join her to learn? Where would you like to go with Capi first…?',
      heroAlt: 'Capi the capybara walks sideways wearing a pink jiu-jitsu gi, an adventure backpack, and carrying a map.',
      heroRegion: 'Capi the adventurous capybara',
      loading: 'Getting the adventures and their photos ready…', loadError: 'The adventures could not be loaded. Open this page using the project’s local web server.',
      badData: 'This adventure is incomplete: it needs 11 places, 20 words per place, and properly credited photos. Check the game data before playing.',
      where: 'Where shall we go?', locationHint: 'Choose an adventure. Every place has 20 words with real photographs.',
      learn: 'Learn the words', learnHeading: 'Learning card', quizHeading: 'Match the photos to their words',
      previous: '← Previous', choosePlace: '← Choose place', next: 'Next →', startQuiz: 'Let’s play! Match photos and words →',
      listen: 'Listen', listenAria: word => `Listen to the word ${word}`,
      quizPrompt: 'Which word matches this photo?', correct: 'Great job! 🌟', tryAgain: 'Not quite. Try another word.',
      nextQuestion: 'Next photo →', finish: 'Adventure complete!', score: (score, total) => `You matched ${score} out of ${total} photos to their words. Great work!`,
      replay: 'Play again', chooseAgain: 'Choose another place',
      credits: 'Credits', creditsHint: 'Tap this button five times in a row to view photo credits and licences.',
      creditsRevealed: 'Credits shown. Tap Credits again to close them.', creditsIntro: 'Photos from Wikimedia Commons. Author, licence and original file:',
      photoBy: 'Photo by', file: 'Wikimedia Commons file', modified: 'cropped image', language: 'Español',
      imagesAlt: word => `Photo of ${word}`, progress: (index, total) => `Photo ${index} of ${total}`,
      locationCount: count => `${count} words with photos`, languageName: 'English', retry: 'Review the cards'
    }
  };
  let language = params.get('uiLang') === 'en' ? 'en' : params.get('uiLang') === 'es' ? 'es' : '';
  if (!language) {
    try { language = localStorage.getItem(localeKey) === 'en' ? 'en' : 'es'; } catch (error) { language = 'es'; }
  }
  try { localStorage.setItem(localeKey, language); } catch (error) {}
  const $ = id => document.getElementById(id);
  const wordAudio = $('wordAudio');
  let ui = strings[language];
  const stages = ['loadingStage', 'locationsStage', 'learnStage', 'quizStage', 'finishStage'];
  let packs = [];
  let selectedPack = null;
  let learnIndex = 0;
  let quizItems = [];
  let quizIndex = 0;
  let correctAnswers = 0;
  let answered = false;
  let audioRequest = 0;

  function setText(id, text) {
    $(id).textContent = text;
  }

  function setStage(id) {
    stopWordAudio();
    stages.forEach(stageId => $(stageId).classList.toggle('active', stageId === id));
    const heading = id === 'locationsStage' ? $('locationsTitle') : $(id).querySelector('h2');
    if (heading) heading.focus?.();
  }

  function audioPath(item) {
    if (!item || !item.image) return '';
    const base = item.image.split('/').pop().replace(/\.[^.]+$/, '');
    return `audios/capibara-vocabulario/${language}/${base}.mp3`;
  }

  function stopWordAudio() {
    audioRequest++;
    if (!wordAudio) return;
    wordAudio.onended = null;
    wordAudio.onerror = null;
    try { wordAudio.pause(); wordAudio.currentTime = 0; } catch (error) {}
  }

  function speakWordFallback(item) {
    if (!('speechSynthesis' in window) || typeof SpeechSynthesisUtterance !== 'function') return;
    try {
      const utterance = new SpeechSynthesisUtterance(item[language]);
      utterance.lang = language === 'en' ? 'en-GB' : 'es-ES';
      utterance.rate = .82;
      window.speechSynthesis.cancel();
      window.speechSynthesis.speak(utterance);
    } catch (error) {}
  }

  function playWordAudio(item) {
    if (!item || !wordAudio) return;
    stopWordAudio();
    const request = audioRequest;
    const source = audioPath(item);
    if (!source) return;
    wordAudio.onerror = () => {
      if (request === audioRequest) speakWordFallback(item);
    };
    wordAudio.src = source;
    const playback = wordAudio.play();
    if (playback && typeof playback.catch === 'function') playback.catch(() => {});
  }

  function createCreditRow(credit, label, index, total) {
    const line = document.createElement('li');
    const name = document.createElement('strong');
    name.textContent = total > 1 ? `${label} (${index + 1})` : label;
    line.append(name, ' · ', `${ui.photoBy} ${credit.author} · `);
    const license = document.createElement('a');
    license.href = credit.licenseUrl || credit.source;
    license.target = '_blank';
    license.rel = 'noopener noreferrer';
    license.textContent = credit.license;
    line.appendChild(license);
    if (credit.modified) line.append(` · ${ui.modified}`);
    line.append(' · ');
    const source = document.createElement('a');
    source.href = credit.source;
    source.target = '_blank';
    source.rel = 'noopener noreferrer';
    source.textContent = `${ui.file}: ${credit.file.replace(/^File:/, '')}`;
    line.appendChild(source);
    return line;
  }

  function renderCredits() {
    const container = $('creditsContent');
    container.replaceChildren();
    if (!packs.length) return;
    const intro = document.createElement('p');
    intro.className = 'credits-intro';
    intro.textContent = ui.creditsIntro;
    container.appendChild(intro);
    packs.forEach(pack => {
      const heading = document.createElement('h3');
      heading.textContent = `${pack.emoji} ${pack[language]}`;
      container.appendChild(heading);
      const list = document.createElement('ul');
      pack.items.forEach(item => {
        const sources = [item, ...(item.additionalCredits || [])];
        sources.forEach((credit, index) => {
          list.appendChild(createCreditRow(credit, item[language], index, sources.length));
        });
      });
      container.appendChild(list);
    });
  }

  function makePhoto(item) {
    const photos = [
      { image: item.image, alt: ui.imagesAlt(item[language]) },
      ...(item.additionalImages || []).map(photo => ({ image: photo.image, alt: photo[language] || ui.imagesAlt(item[language]) }))
    ];
    const gallery = document.createElement(photos.length > 1 ? 'div' : 'img');
    if (photos.length > 1) {
      gallery.className = 'photo-gallery';
      gallery.setAttribute('role', 'group');
      gallery.setAttribute('aria-label', ui.imagesAlt(item[language]));
    }
    photos.forEach(photo => {
      const image = photos.length === 1 ? gallery : document.createElement('img');
      image.className = 'photo';
      image.src = photo.image;
      image.alt = photo.alt;
      image.width = 520;
      image.height = 370;
      image.loading = 'eager';
      image.decoding = 'async';
      if (photos.length > 1) gallery.appendChild(image);
    });
    return gallery;
  }

  function addWordLabels(container, item) {
    const word = document.createElement('p');
    word.className = 'word';
    word.textContent = item[language];
    const translation = document.createElement('p');
    translation.className = 'translation';
    translation.textContent = item[language === 'es' ? 'en' : 'es'];
    const listen = document.createElement('button');
    listen.type = 'button';
    listen.className = 'speak-word';
    listen.textContent = `🔊 ${ui.listen}`;
    listen.setAttribute('aria-label', ui.listenAria(item[language]));
    listen.addEventListener('click', () => playWordAudio(item));
    container.append(word, translation, listen);
  }

  function renderLocations() {
    const list = $('locationList');
    list.replaceChildren();
    packs.forEach(pack => {
      const button = document.createElement('button');
      button.type = 'button';
      button.className = 'location';
      button.dataset.locationId = pack.id;
      const emoji = document.createElement('span');
      emoji.className = 'emoji';
      emoji.setAttribute('aria-hidden', 'true');
      emoji.textContent = pack.emoji;
      const label = document.createElement('span');
      label.append(document.createTextNode(pack[language]));
      const count = document.createElement('small');
      count.textContent = ui.locationCount(pack.items.length);
      label.appendChild(count);
      button.append(emoji, label);
      button.addEventListener('click', () => startPack(pack));
      list.appendChild(button);
    });
  }

  function startPack(pack) {
    selectedPack = pack;
    learnIndex = 0;
    setText('learnLocation', `${pack.emoji} ${pack[language]}`);
    setStage('learnStage');
    renderLearningCard();
  }

  function renderLearningCard() {
    const item = selectedPack.items[learnIndex];
    $('learnCount').textContent = ui.progress(learnIndex + 1, selectedPack.items.length);
    const card = $('learnCard');
    card.replaceChildren(makePhoto(item));
    addWordLabels(card, item);
    playWordAudio(item);
    $('learnBack').disabled = false;
    $('learnBack').textContent = learnIndex === 0 ? ui.choosePlace : ui.previous;
    $('learnNext').textContent = learnIndex === selectedPack.items.length - 1 ? ui.startQuiz : ui.next;
  }

  function startQuiz() {
    quizItems = [...selectedPack.items].sort(() => Math.random() - 0.5);
    quizIndex = 0;
    correctAnswers = 0;
    answered = false;
    setText('quizLocation', `${selectedPack.emoji} ${selectedPack[language]}`);
    $('quizPrompt').textContent = ui.quizPrompt;
    setStage('quizStage');
    renderQuestion();
  }

  function renderQuestion(preserveAnswer = false) {
    stopWordAudio();
    const keepAnswer = preserveAnswer && answered;
    const item = quizItems[quizIndex];
    $('quizCount').textContent = ui.progress(quizIndex + 1, quizItems.length);
    const card = $('quizCard');
    card.replaceChildren(makePhoto(item));
    const distractors = selectedPack.items.filter(candidate => candidate !== item).sort(() => Math.random() - 0.5).slice(0, 3);
    const answers = [item, ...distractors].sort(() => Math.random() - 0.5);
    const answerList = $('answerList');
    answerList.replaceChildren();
    answers.forEach(answer => {
      const button = document.createElement('button');
      button.type = 'button';
      button.className = 'answer';
      button.textContent = answer[language];
      button.addEventListener('click', () => checkAnswer(button, answer === item));
      answerList.appendChild(button);
    });
    $('feedback').textContent = keepAnswer ? ui.correct : '';
    $('feedback').classList.toggle('error', false);
    $('quizNext').hidden = !keepAnswer;
    $('quizNext').textContent = quizIndex === quizItems.length - 1 ? ui.finish : ui.nextQuestion;
    if (keepAnswer) {
      answerList.querySelectorAll('button').forEach(answer => {
        answer.disabled = true;
        if (answer.textContent === item[language]) answer.classList.add('correct');
      });
    } else {
      answered = false;
    }
  }

  function checkAnswer(button, correct) {
    if (answered) return;
    if (!correct) {
      $('feedback').textContent = ui.tryAgain;
      $('feedback').classList.add('error');
      return;
    }
    answered = true;
    correctAnswers++;
    button.classList.add('correct');
    $('answerList').querySelectorAll('button').forEach(answer => { answer.disabled = true; });
    $('feedback').textContent = ui.correct;
    $('feedback').classList.remove('error');
    $('quizNext').hidden = false;
    playWordAudio(quizItems[quizIndex]);
  }

  function saveCompletion() {
    if (!window.MiProgreso) return;
    const progress = MiProgreso.load(profile);
    progress.rounds = (Number(progress.rounds) || 0) + 1;
    progress.byGame.capibara_aventura = (Number(progress.byGame.capibara_aventura) || 0) + 1;
    const gameArea = MiProgreso.area(progress, 'juegos');
    gameArea.gold++;
    MiProgreso.persist(profile, progress);
  }

  function finishQuiz() {
    setText('finishTitle', `${ui.finish} ${selectedPack.emoji}`);
    setText('finishScore', ui.score(correctAnswers, quizItems.length));
    $('replayQuiz').textContent = ui.replay;
    $('chooseAgain').textContent = ui.chooseAgain;
    saveCompletion();
    setStage('finishStage');
  }

  function applyLanguage() {
    stopWordAudio();
    ui = strings[language];
    document.documentElement.lang = language;
    document.title = language === 'es' ? 'Capi se va de aventura · Mi Mundo de Aprendizaje' : 'Capi Goes on an Adventure · My Learning World';
    const isSofia = profile === 'sofia';
    $('back').href = isSofia ? `index.html?profile=${profile}` : `areas-test.html?area=juegos&profile=${profile}`;
    setText('back', ui.back);
    setText('gameTitle', language === 'es' ? 'Capi se va de aventura' : 'Capi Goes on an Adventure');
    setText('tagline', ui.tagline);
    setText('heroText', ui.hero);
    $('capiHero').alt = ui.heroAlt;
    $('heroRegion').setAttribute('aria-label', ui.heroRegion);
    setText('loadingMessage', ui.loading);
    setText('locationsTitle', ui.where);
    setText('locationsHint', ui.locationHint);
    setText('learnTitle', ui.learnHeading);
    setText('quizTitle', ui.quizHeading);
    setText('creditsTitle', ui.credits);
    setText('creditsHint', ui.creditsHint);
    if (!$('creditsContent').hidden) renderCredits();
    $('languageToggle').textContent = ui.language;
    $('languageToggle').setAttribute('aria-label', language === 'es' ? 'Cambiar a English' : 'Switch to Español');
    if (packs.length) renderLocations();
    if (selectedPack && $('learnStage').classList.contains('active')) {
      setText('learnLocation', `${selectedPack.emoji} ${selectedPack[language]}`);
      renderLearningCard();
    } else if (selectedPack && $('quizStage').classList.contains('active')) {
      setText('quizLocation', `${selectedPack.emoji} ${selectedPack[language]}`);
      $('quizPrompt').textContent = ui.quizPrompt;
      renderQuestion(true);
    } else if (selectedPack && $('finishStage').classList.contains('active')) {
      setText('finishTitle', `${ui.finish} ${selectedPack.emoji}`);
      setText('finishScore', ui.score(correctAnswers, quizItems.length));
      $('replayQuiz').textContent = ui.replay;
      $('chooseAgain').textContent = ui.chooseAgain;
    }
  }

  function validateData(data) {
    return Array.isArray(data) && data.length === 11 && data.every(pack =>
      pack.id && pack.es && pack.en && pack.emoji && Array.isArray(pack.items) && pack.items.length === 20 &&
      pack.items.every(item => {
        const validCredit = credit => credit && credit.author && credit.license && credit.source && credit.file;
        const additionalImages = item.additionalImages || [];
        const additionalCredits = item.additionalCredits || [];
        return item.es && item.en && item.image && validCredit(item) &&
          Array.isArray(additionalImages) && Array.isArray(additionalCredits) &&
          additionalImages.length === additionalCredits.length &&
          additionalImages.every(photo => photo && photo.image && photo.es && photo.en) &&
          additionalCredits.every(validCredit);
      })
    );
  }

  const creditsButton = $('creditsTitle');
  const creditsContent = $('creditsContent');
  const creditsStatus = $('creditsStatus');
  let creditsActivations = 0;

  function closeCredits() {
    creditsContent.hidden = true;
    creditsButton.setAttribute('aria-expanded', 'false');
    creditsStatus.textContent = '';
  }

  function revealCredits() {
    if (!packs.length) return;
    renderCredits();
    creditsContent.hidden = false;
    creditsButton.setAttribute('aria-expanded', 'true');
    creditsStatus.textContent = ui.creditsRevealed;
    creditsContent.focus();
  }

  creditsButton.addEventListener('click', () => {
    if (!creditsContent.hidden) {
      closeCredits();
      creditsActivations = 0;
      return;
    }
    creditsActivations++;
    if (creditsActivations >= 5) {
      creditsActivations = 0;
      revealCredits();
    }
  });
  document.addEventListener('pointerdown', event => {
    if (!creditsButton.contains(event.target)) creditsActivations = 0;
  }, true);
  document.addEventListener('click', event => {
    if (!creditsButton.contains(event.target)) creditsActivations = 0;
  }, true);
  document.addEventListener('keydown', event => {
    if (event.target !== creditsButton || !['Enter', ' '].includes(event.key)) creditsActivations = 0;
  }, true);

  $('learnBack').addEventListener('click', () => {
    if (learnIndex === 0) {
      setStage('locationsStage');
      return;
    }
    learnIndex--;
    renderLearningCard();
  });
  $('learnNext').addEventListener('click', () => {
    if (learnIndex < selectedPack.items.length - 1) {
      learnIndex++;
      renderLearningCard();
      return;
    }
    startQuiz();
  });
  $('quizNext').addEventListener('click', () => {
    if (quizIndex < quizItems.length - 1) {
      quizIndex++;
      renderQuestion();
      return;
    }
    finishQuiz();
  });
  $('replayQuiz').addEventListener('click', startQuiz);
  $('chooseAgain').addEventListener('click', () => {
    selectedPack = null;
    setStage('locationsStage');
  });
  $('languageToggle').addEventListener('click', () => {
    language = language === 'es' ? 'en' : 'es';
    try { localStorage.setItem(localeKey, language); } catch (error) {}
    params.set('profile', profile);
    params.set('uiLang', language);
    history.replaceState(null, '', `${location.pathname}?${params.toString()}${location.hash}`);
    applyLanguage();
  });
  $('back').addEventListener('click', () => {
    if (profile === 'sofia') {
      try { sessionStorage.setItem('mundoAprendizajeReturnSofia', '1'); } catch (error) {}
    }
  });

  applyLanguage();
  fetch('capibara-vocabulario.json')
    .then(response => {
      if (!response.ok) throw new Error('Data request failed');
      return response.json();
    })
    .then(data => {
      if (!validateData(data)) throw new Error('Incomplete vocabulary data');
      packs = data;
      renderLocations();
      setStage('locationsStage');
    })
    .catch(error => {
      setText('loadingMessage', error.message === 'Incomplete vocabulary data' ? ui.badData : ui.loadError);
      $('loadingMessage').classList.add('error');
    });
})();
