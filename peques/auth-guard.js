(() => {
  const profile = new URLSearchParams(location.search).get("profile") || "mireia";
  const sessionKey = "mundoAprendizajeSession_" + profile;
  const API_URL = "https://mi-mundo-aprendizaje-api.paguerapiso.workers.dev";
  const root = document.documentElement;

  root.style.visibility = "hidden";

  const showPage = () => { root.style.visibility = ""; };
  const goToLogin = () => location.replace("index.html");
  const clearSession = () => {
    try { localStorage.removeItem(sessionKey); } catch(e) {}
  };

  // Perfil invitado: modo visita. Se abre sin PIN y sin sesión.
  // Su progreso vive en su propia clave (mundoAprendizajeProgressV3_guest).
  if(profile === "guest") {
    showPage();
    return;
  }

  // En local se permite abrir las páginas para revisarlas sin depender del Worker.
  if(location.protocol === "file:" || ["localhost","127.0.0.1"].includes(location.hostname)) {
    showPage();
    return;
  }

  let session = null;
  try { session = JSON.parse(localStorage.getItem(sessionKey) || "null"); } catch(e) {}

  const now = Math.floor(Date.now() / 1000);
  if(!session || !session.token || !session.expiresAt || Number(session.expiresAt) <= now) {
    clearSession();
    goToLogin();
    return;
  }

  const controller = new AbortController();
  const timeout = setTimeout(() => controller.abort(), 8000);

  (async () => {
    try {
      const response = await fetch(API_URL, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ action: "check_session", token: session.token }),
        signal: controller.signal
      });
      const data = await response.json();
      if(response.ok && data && data.ok) {
        showPage();
        return;
      }
      clearSession();
      goToLogin();
    } catch(e) {
      clearSession();
      goToLogin();
    } finally {
      clearTimeout(timeout);
    }
  })();
})();
