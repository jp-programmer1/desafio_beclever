const dotenv = require("dotenv");
dotenv.config();
require("@babel/register")({
  presets: ["@babel/preset-env"]
});

module.exports = require('./app.js')