/* Banderas del mundo — datos de continentes y países.
   Cada país: [código ISO 3166-1 alfa-2, nombre en español, dificultad].
   Dificultad: 1 = país fácil (muy conocido), 2 = país difícil.
   Las banderas son SVG de flag-icons (MIT, © Panayiotis Lipiridis)
   guardadas en banderas/banderas/<código>.svg */
window.BANDERAS_DATA = {
  continentes: [
    {
      id: 'europa',
      nombre: 'Europa',
      color: '#5aa9ee',
      paises: [
        ['es', 'España', 1], ['fr', 'Francia', 1], ['de', 'Alemania', 1], ['it', 'Italia', 1],
        ['gb', 'Reino Unido', 1], ['pt', 'Portugal', 1], ['nl', 'Países Bajos', 1], ['be', 'Bélgica', 1],
        ['ch', 'Suiza', 1], ['at', 'Austria', 1], ['gr', 'Grecia', 1], ['se', 'Suecia', 1],
        ['no', 'Noruega', 1], ['dk', 'Dinamarca', 1], ['ie', 'Irlanda', 1], ['pl', 'Polonia', 1],
        ['is', 'Islandia', 2], ['fi', 'Finlandia', 2], ['ee', 'Estonia', 2], ['lv', 'Letonia', 2],
        ['lt', 'Lituania', 2], ['by', 'Bielorrusia', 2], ['cz', 'República Checa', 2], ['sk', 'Eslovaquia', 2],
        ['hu', 'Hungría', 2], ['ro', 'Rumanía', 2], ['bg', 'Bulgaria', 2], ['rs', 'Serbia', 2],
        ['hr', 'Croacia', 2], ['si', 'Eslovenia', 2], ['ba', 'Bosnia y Herzegovina', 2], ['me', 'Montenegro', 2],
        ['mk', 'Macedonia del Norte', 2], ['al', 'Albania', 2], ['mt', 'Malta', 2], ['cy', 'Chipre', 2],
        ['lu', 'Luxemburgo', 2], ['mc', 'Mónaco', 2], ['ad', 'Andorra', 2], ['sm', 'San Marino', 2],
        ['li', 'Liechtenstein', 2], ['md', 'Moldavia', 2], ['ua', 'Ucrania', 2], ['ru', 'Rusia', 2]
      ]
    },
    {
      id: 'norteamerica',
      nombre: 'Norteamérica',
      color: '#4fc08a',
      paises: [
        ['us', 'Estados Unidos', 1], ['ca', 'Canadá', 1], ['mx', 'México', 1], ['cu', 'Cuba', 1],
        ['gt', 'Guatemala', 2], ['hn', 'Honduras', 2], ['sv', 'El Salvador', 2], ['ni', 'Nicaragua', 2],
        ['cr', 'Costa Rica', 2], ['pa', 'Panamá', 2], ['do', 'República Dominicana', 2], ['ht', 'Haití', 2],
        ['jm', 'Jamaica', 2], ['bs', 'Bahamas', 2], ['tt', 'Trinidad y Tobago', 2], ['bz', 'Belice', 2]
      ]
    },
    {
      id: 'sudamerica',
      nombre: 'Sudamérica',
      color: '#38b2ac',
      paises: [
        ['br', 'Brasil', 1], ['ar', 'Argentina', 1], ['co', 'Colombia', 1], ['cl', 'Chile', 1],
        ['pe', 'Perú', 1], ['ve', 'Venezuela', 1], ['ec', 'Ecuador', 1], ['bo', 'Bolivia', 1],
        ['gy', 'Guyana', 2], ['sr', 'Surinam', 2], ['uy', 'Uruguay', 2], ['py', 'Paraguay', 2]
      ]
    },
    {
      id: 'asia',
      nombre: 'Asia',
      color: '#f2a24b',
      paises: [
        ['cn', 'China', 1], ['jp', 'Japón', 1], ['in', 'India', 1], ['kr', 'Corea del Sur', 1],
        ['th', 'Tailandia', 1], ['vn', 'Vietnam', 1], ['id', 'Indonesia', 1], ['sa', 'Arabia Saudí', 1],
        ['il', 'Israel', 1], ['ae', 'Emiratos Árabes Unidos', 1], ['ph', 'Filipinas', 1], ['my', 'Malasia', 1],
        ['sg', 'Singapur', 1], ['tr', 'Turquía', 1],
        ['mn', 'Mongolia', 2], ['kz', 'Kazajistán', 2], ['uz', 'Uzbekistán', 2], ['kg', 'Kirguistán', 2],
        ['tj', 'Tayikistán', 2], ['tm', 'Turkmenistán', 2], ['af', 'Afganistán', 2], ['np', 'Nepal', 2],
        ['bt', 'Bután', 2], ['bd', 'Bangladés', 2], ['lk', 'Sri Lanka', 2], ['mv', 'Maldivas', 2],
        ['mm', 'Myanmar', 2], ['la', 'Laos', 2], ['kh', 'Camboya', 2], ['bn', 'Brunéi', 2],
        ['tl', 'Timor Oriental', 2], ['kp', 'Corea del Norte', 2], ['qa', 'Catar', 2], ['kw', 'Kuwait', 2],
        ['bh', 'Baréin', 2], ['om', 'Omán', 2], ['ye', 'Yemen', 2], ['jo', 'Jordania', 2],
        ['lb', 'Líbano', 2], ['sy', 'Siria', 2], ['iq', 'Irak', 2], ['ir', 'Irán', 2],
        ['am', 'Armenia', 2], ['ge', 'Georgia', 2], ['az', 'Azerbaiyán', 2]
      ]
    },
    {
      id: 'africa',
      nombre: 'África',
      color: '#e9748a',
      paises: [
        ['eg', 'Egipto', 1], ['ma', 'Marruecos', 1], ['za', 'Sudáfrica', 1], ['ke', 'Kenia', 1],
        ['ng', 'Nigeria', 1], ['et', 'Etiopía', 1], ['gh', 'Ghana', 1], ['dz', 'Argelia', 1],
        ['tn', 'Túnez', 1], ['sn', 'Senegal', 1], ['tz', 'Tanzania', 1], ['mg', 'Madagascar', 1],
        ['ly', 'Libia', 2], ['sd', 'Sudán', 2], ['ss', 'Sudán del Sur', 2], ['td', 'Chad', 2],
        ['ne', 'Níger', 2], ['ml', 'Malí', 2], ['mr', 'Mauritania', 2], ['gm', 'Gambia', 2],
        ['gw', 'Guinea-Bisáu', 2], ['gn', 'Guinea', 2], ['sl', 'Sierra Leona', 2], ['lr', 'Liberia', 2],
        ['ci', 'Costa de Marfil', 2], ['bf', 'Burkina Faso', 2], ['tg', 'Togo', 2], ['bj', 'Benín', 2],
        ['cm', 'Camerún', 2], ['cf', 'República Centroafricana', 2], ['ga', 'Gabón', 2], ['cg', 'Congo', 2],
        ['cd', 'República Democrática del Congo', 2], ['ao', 'Angola', 2], ['zm', 'Zambia', 2], ['zw', 'Zimbabue', 2],
        ['mw', 'Malaui', 2], ['mz', 'Mozambique', 2], ['bw', 'Botsuana', 2], ['na', 'Namibia', 2],
        ['ls', 'Lesoto', 2], ['sz', 'Esuatini', 2], ['rw', 'Ruanda', 2], ['bi', 'Burundi', 2],
        ['ug', 'Uganda', 2], ['so', 'Somalia', 2], ['dj', 'Yibuti', 2], ['er', 'Eritrea', 2],
        ['cv', 'Cabo Verde', 2], ['st', 'Santo Tomé y Príncipe', 2], ['km', 'Comoras', 2], ['sc', 'Seychelles', 2],
        ['mu', 'Mauricio', 2]
      ]
    },
    {
      id: 'oceania',
      nombre: 'Oceanía',
      color: '#9b7be0',
      paises: [
        ['au', 'Australia', 1], ['nz', 'Nueva Zelanda', 1], ['fj', 'Fiyi', 1],
        ['pg', 'Papúa Nueva Guinea', 1], ['ws', 'Samoa', 1],
        ['to', 'Tonga', 2], ['vu', 'Vanuatu', 2], ['sb', 'Islas Salomón', 2], ['pw', 'Palaos', 2],
        ['fm', 'Micronesia', 2], ['mh', 'Islas Marshall', 2], ['nr', 'Nauru', 2], ['ki', 'Kiribati', 2],
        ['tv', 'Tuvalu', 2]
      ]
    }
  ]
};
