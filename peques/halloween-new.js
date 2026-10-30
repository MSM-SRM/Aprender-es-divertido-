/* Novedades de Halloween por perfil.
   Guarda en localStorage qué actividades nuevas ya ha abierto cada perfil. */
(function () {
  'use strict';

  var PREFIX = 'mundoHalloweenSeenV1_';
  var items = ['room-on-the-broom', 'my-first-halloween', 'once-upon-a-halloween'];

  function key(profile) {
    return PREFIX + (profile || 'mireia');
  }

  function getSeen(profile) {
    try {
      var raw = localStorage.getItem(key(profile));
      if (!raw) return [];
      var parsed = JSON.parse(raw);
      if (!Array.isArray(parsed)) return [];
      return parsed.filter(function (id) { return typeof id === 'string'; });
    } catch (e) {
      return [];
    }
  }

  function saveSeen(profile, seen) {
    try {
      localStorage.setItem(key(profile), JSON.stringify(seen));
      return true;
    } catch (e) {
      return false;
    }
  }

  function isNew(id, profile) {
    if (items.indexOf(id) === -1) return false;
    return getSeen(profile).indexOf(id) === -1;
  }

  function markSeen(id, profile) {
    var seen = getSeen(profile);
    if (items.indexOf(id) === -1) return seen;
    if (seen.indexOf(id) === -1) {
      seen.push(id);
      saveSeen(profile, seen);
    }
    return seen;
  }

  function hasNew(profile) {
    var seen = getSeen(profile);
    return items.some(function (id) { return seen.indexOf(id) === -1; });
  }

  window.HalloweenNew = {
    items: items,
    key: key,
    getSeen: getSeen,
    isNew: isNew,
    markSeen: markSeen,
    hasNew: hasNew
  };
})();
