const esbuild = require("esbuild");
esbuild.build({
    entryPoints: ["js/oxidized.js"],
    target: ['es6'],
    bundle: true,
    publicPath: "/scripts",
    outdir: "./lib/oxidized/web/public/scripts"
  })
  .catch((e) => console.error(e.message));

esbuild.build({
    entryPoints: ["css/oxidized.css"],
    bundle: true,
    loader: {
      '.eot': 'file',
      '.ttf': 'file',
      '.svg': 'file',
      '.woff': 'file',
      '.woff2': 'file'
    },
    assetNames: '[name]',
    publicPath: "/styles",
    outdir: "./lib/oxidized/web/public/styles"
  })
  .catch((e) => console.error(e.message));
