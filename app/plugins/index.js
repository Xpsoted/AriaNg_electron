/*!
 * AriaNg GUI
 * 
 * Copyright (c) 2018-2023 Xpsoted
 * Released under the MIT license
 * 
 * Source Code: https://github.com/Xpsoted/ariaNg-electron
 */

// @ts-check

/**
 * @typedef {import("../native_node_modules/node_modules/ariaNg-electron-plugins-core").Plugin} Plugin
 * @type {Plugin[]}
 */
const plugins = [
    require("./show-path"),
    require("./contextmenu"),
    require("./progress-bar"),
    require("./save-local-config"),
    require("./notification"),
    require("./trackers"),
    require("./power-save-blocker"),
]

module.exports = plugins
