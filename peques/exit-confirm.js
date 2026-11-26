/* Mi Mundo de Aprendizaje — confirmación de salida de los juegos.
   Popup propio con «Sí» a la izquierda y «No» a la derecha, en botones
   separados. Expone window.confirmarSalida(opciones) y activa solo los
   controles marcados con data-confirm-exit. */
(function (global) {
  'use strict';

  // Si el script ya se cargó (por ejemplo, una página lo incluye directamente
  // y además progress-shared.js lo inyecta), no se duplican los manejadores.
  if (global.confirmarSalida) return;

  var RETURN_KEY = 'mundoAprendizajeReturnSofia';
  var overlay = null;
  var titleEl = null;
  var textEl = null;
  var yesBtn = null;
  var noBtn = null;
  var resolver = null;
  var lastFocus = null;
  var previousOverflow = '';

  var STYLES = [
    '.exit-confirm{position:fixed;inset:0;z-index:99999;display:grid;place-items:center;padding:20px;font-family:"Trebuchet MS",system-ui,sans-serif}',
    '.exit-confirm[hidden]{display:none}',
    '.exit-confirm__backdrop{position:absolute;inset:0;background:rgba(24,12,48,.58);-webkit-backdrop-filter:blur(3px);backdrop-filter:blur(3px)}',
    '.exit-confirm__dialog{position:relative;width:min(100%,430px);background:#fff;border:3px solid #c9b6ff;border-radius:26px;padding:24px 22px 20px;text-align:center;box-shadow:0 24px 60px #2b145099;color:#3b2b45}',
    '.exit-confirm__emoji{font-size:44px;line-height:1}',
    '.exit-confirm__title{margin:8px 0 6px;font-size:clamp(1.15rem,4.6vw,1.45rem);line-height:1.2;color:#4a2380}',
    '.exit-confirm__text{margin:0 auto 18px;max-width:34ch;font-size:clamp(.95rem,3.6vw,1.05rem);line-height:1.35;color:#5a4a68}',
    '.exit-confirm__actions{display:flex;align-items:stretch;justify-content:center;gap:18px}',
    '.exit-confirm__btn{flex:1 1 0;min-width:0;min-height:52px;padding:10px 12px;border-radius:999px;font:inherit;font-weight:900;font-size:clamp(.95rem,3.4vw,1.05rem);line-height:1.1;cursor:pointer;touch-action:manipulation}',
    '.exit-confirm__btn--yes{border:2px solid #7b3fe4;background:linear-gradient(#9b5cff,#6a21c9);color:#fff;box-shadow:0 5px 0 #4a0f96}',
    '.exit-confirm__btn--no{border:2px solid #b9a6e6;background:#fff;color:#4a2380;box-shadow:0 5px 0 #e3d9ff}',
    '.exit-confirm__btn:focus-visible{outline:3px solid #2b6fb0;outline-offset:3px}',
    '.exit-confirm__btn:active{transform:translateY(2px);box-shadow:none}',
    '@media (max-width:360px){.exit-confirm{padding:12px}.exit-confirm__dialog{padding:20px 15px 16px}.exit-confirm__actions{gap:12px}}',
    '@media (prefers-reduced-motion:reduce){.exit-confirm *{transition:none!important;animation:none!important}}'
  ].join('\n');

  function injectStyles() {
    if (document.getElementById('exitConfirmStyles')) return;
    var style = document.createElement('style');
    style.id = 'exitConfirmStyles';
    style.textContent = STYLES;
    document.head.appendChild(style);
  }

  function build() {
    if (overlay) return;
    injectStyles();

    overlay = document.createElement('div');
    overlay.className = 'exit-confirm';
    overlay.hidden = true;
    overlay.innerHTML =
      '<div class="exit-confirm__backdrop" data-exit-choice="no"></div>' +
      '<div class="exit-confirm__dialog" role="alertdialog" aria-modal="true" aria-labelledby="exitConfirmTitle" aria-describedby="exitConfirmText">' +
        '<div class="exit-confirm__emoji" aria-hidden="true">🎮</div>' +
        '<h2 class="exit-confirm__title" id="exitConfirmTitle"></h2>' +
        '<p class="exit-confirm__text" id="exitConfirmText"></p>' +
        '<div class="exit-confirm__actions">' +
          '<button type="button" class="exit-confirm__btn exit-confirm__btn--yes" data-exit-choice="yes"></button>' +
          '<button type="button" class="exit-confirm__btn exit-confirm__btn--no" data-exit-choice="no"></button>' +
        '</div>' +
      '</div>';
    document.body.appendChild(overlay);

    titleEl = overlay.querySelector('#exitConfirmTitle');
    textEl = overlay.querySelector('#exitConfirmText');
    yesBtn = overlay.querySelector('.exit-confirm__btn--yes');
    noBtn = overlay.querySelector('.exit-confirm__btn--no');

    overlay.addEventListener('click', function (event) {
      var choice = event.target.closest('[data-exit-choice]');
      if (!choice) return;
      close(choice.getAttribute('data-exit-choice') === 'yes');
    });

    overlay.addEventListener('keydown', function (event) {
      if (event.key === 'Escape') {
        event.preventDefault();
        close(false);
        return;
      }
      if (event.key !== 'Tab') return;
      var buttons = [yesBtn, noBtn];
      var index = buttons.indexOf(document.activeElement);
      event.preventDefault();
      var next = event.shiftKey ? (index <= 0 ? buttons.length - 1 : index - 1) : (index + 1) % buttons.length;
      buttons[next].focus();
    });
  }

  function close(answer) {
    if (!overlay || overlay.hidden) return;
    overlay.hidden = true;
    document.documentElement.style.overflow = previousOverflow;
    var done = resolver;
    resolver = null;
    if (lastFocus && typeof lastFocus.focus === 'function') lastFocus.focus();
    lastFocus = null;
    if (done) done(answer === true);
  }

  function confirmarSalida(options) {
    options = options || {};
    build();

    if (resolver) close(false);

    lastFocus = document.activeElement;
    titleEl.textContent = options.title || '¿Quieres salir del juego?';
    textEl.textContent = options.text || 'Volverás a tu página de inicio.';
    yesBtn.textContent = options.yes || 'Sí, salir';
    noBtn.textContent = options.no || 'No, seguir';
    previousOverflow = document.documentElement.style.overflow;
    document.documentElement.style.overflow = 'hidden';
    overlay.hidden = false;
    noBtn.focus();

    return new Promise(function (resolve) {
      resolver = resolve;
    });
  }

  function esPerfilSofia() {
    try {
      return new URLSearchParams(global.location.search).get('profile') === 'sofia';
    } catch (error) {
      return false;
    }
  }

  global.confirmarSalida = confirmarSalida;

  // Intercepta en fase de captura para que el control original no navegue
  // hasta que el usuario confirme. Si confirma, se repite el clic.
  document.addEventListener('click', function (event) {
    var control = event.target.closest('[data-confirm-exit]');
    if (!control || control.getAttribute('data-exit-confirmed') === '1') return;

    event.preventDefault();
    event.stopPropagation();

    var options = {};
    if (control.getAttribute('data-exit-title')) options.title = control.getAttribute('data-exit-title');
    if (control.getAttribute('data-exit-text')) options.text = control.getAttribute('data-exit-text');
    if (control.getAttribute('data-exit-yes')) options.yes = control.getAttribute('data-exit-yes');
    if (control.getAttribute('data-exit-no')) options.no = control.getAttribute('data-exit-no');

    confirmarSalida(options).then(function (ok) {
      if (!ok) return;
      // Solo se marca el regreso sin PIN cuando la página pertenece a Sofía.
      // El mismo juego puede abrirse con Mireia y no debe afectar a su sesión.
      if (control.hasAttribute('data-exit-return') && esPerfilSofia()) {
        try { sessionStorage.setItem(RETURN_KEY, '1'); } catch (error) {}
      }
      control.setAttribute('data-exit-confirmed', '1');
      control.click();
      setTimeout(function () { control.removeAttribute('data-exit-confirmed'); }, 0);
    });
  }, true);
})(window);
