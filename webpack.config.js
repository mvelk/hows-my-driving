const path = require('path');
module.exports = {
  entry: './frontend/entry.js',
  output: {
    path: path.join(__dirname, 'app', 'assets', 'javascripts'),
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      {
        test: /\.js?$/,
        exclude: /(node_modules|bower_components)/,
        loaders: ["babel?presets[]=es2015"]
      },
      { test: /\.coffee$/, loader: "coffee-loader" },
      { test: /\.(coffee\.md|litcoffee)$/, loader: "coffee-loader?literate" }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['', '.js']
  }
};
