/* Mi Mundo de Aprendizaje — módulo compartido de progreso (fase 1).
   Script clásico, sin dependencias. Expone window.MiProgreso.
   Centraliza la clave, la carga tolerante, el recálculo de estrellas,
   el guardado y la normalización del área activa. */
(function (global) {
  'use strict';

  var PREFIX = 'mundoAprendizajeProgressV3_';
  var STAR_TYPES = ['gold', 'silver', 'bronze'];

  function isPlainObject(value) {
    return !!value && typeof value === 'object' && !Array.isArray(value);
  }

  function emptyProgress() {
    return { stars: 0, rounds: 0, byGame: {}, byArea: {} };
  }

  function key(profile) {
    return PREFIX + profile;
  }

  function load(profile) {
    var data = null;
    try {
      var raw = global.localStorage.getItem(key(profile));
      if (raw) data = JSON.parse(raw);
    } catch (e) {
      data = null;
    }
    if (!isPlainObject(data)) data = emptyProgress();
    if (!isPlainObject(data.byGame)) data.byGame = {};
    if (!isPlainObject(data.byArea)) data.byArea = {};
    return data;
  }

  function recalc(data) {
    if (!isPlainObject(data)) data = emptyProgress();
    if (!isPlainObject(data.byArea)) data.byArea = {};
    data.stars = Object.values(data.byArea).reduce(function (sum, area) {
      return sum + STAR_TYPES.reduce(function (subtotal, type) {
        return subtotal + (Number(area && area[type]) || 0);
      }, 0);
    }, 0);
    return data;
  }

  function persist(profile, data) {
    recalc(data);
    try {
      global.localStorage.setItem(key(profile), JSON.stringify(data));
    } catch (e) {
      /* Cuota llena o almacenamiento bloqueado: la partida sigue en memoria. */
    }
    return data;
  }

  function area(data, areaKey) {
    if (!isPlainObject(data)) data = emptyProgress();
    if (!isPlainObject(data.byArea)) data.byArea = {};
    var target = data.byArea[areaKey];
    if (!isPlainObject(target)) {
      target = { gold: 0, silver: 0, bronze: 0 };
      data.byArea[areaKey] = target;
    }
    STAR_TYPES.forEach(function (type) {
      target[type] = Math.max(0, Number(target[type]) || 0);
    });
    return target;
  }

  global.MiProgreso = {
    key: key,
    load: load,
    recalc: recalc,
    persist: persist,
    area: area
  };
})(window);
