const webpack = require('webpack')
const HtmlWebpackPlugin = require('html-webpack-plugin')

const babel_options = { presets: ['es2015'] }

module.exports = {
  entry: `${__dirname}/src/index.js`,
  output: {
    path: `${__dirname}/../public`,
    filename: 'bundle.js'
  },

  plugins: [
    new HtmlWebpackPlugin({title: 'Rails/Riot.js SPA'}),
    new webpack.ProvidePlugin({riot: 'riot'})
  ],
  module: {
    loaders: [
      { test: /\.tag$/, loader: `babel?${JSON.stringify(babel_options)}!riotjs`, exclude: /node_modules/ },
      { test: /\.js$/, loader: `babel?${JSON.stringify(babel_options)}`, exclude: /node_modules/ },
      { test: /index.html$/, loader: 'file' }
    ]
  },

  devtool: "#source-map"
}
