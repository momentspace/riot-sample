var path = require('path');
var webpack = require('webpack');

module.exports = {
  entry: './app/app.js',
  output: {
    path: __dirname + '/www',
    filename: 'bundle.js',
    publicPath: ''
  },
  module: {
     rules: [
        {
           test: /\.tag$/,
           enforce: 'pre',
           exclude: /node_modules/,
           use: [
              {
                 loader: 'riot-tag-loader',
                 options: {
                    // template: 'pug',   // テンプレートを指定（任意）
                    debug: true
                 }
              }
           ]
        },
        {
           test: /\.js|\.tag$/,
           enforce: 'post',
           exclude: /node_modules/,
           use: [
              {
                 loader: 'babel-loader',
                 options: {
                    presets: `es2015-riot`
                 }
              }
           ]
        }
     ]
  },
  externals : {
  },
  devServer: {
    contentBase: 'www'
  },
  resolve: {
    extensions: ['.js', '.tag'],
    modules: [
      path.resolve("./app"),
      "node_modules"
    ],
  },
  plugins: [
    new webpack.ProvidePlugin({ riot: 'riot' })
    // new webpack.ProvidePlugin({
    //   $: "jquery",
    //   jQuery: "jquery",
    //   "window.jQuery": "jquery"
    // })
  ]
}


