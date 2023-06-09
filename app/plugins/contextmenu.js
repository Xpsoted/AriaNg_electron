/*!
 * AriaNg GUI
 * 
 * Copyright (c) 2018-2023 Xpsoted
 * Released under the MIT license
 * 
 * Source Code: https://github.com/Xpsoted/ariaNg-electron
 * 
 * contextmenu.js - 添加右键菜单
 */

// @ts-check

const { ipcRenderer } = require("electron")

/**
 * @typedef {import("./index").Plugin} Plugin
 * @type {Plugin}
 */
module.exports = {
    activate(context) {

        // 添加右键菜单
        context.addListener("contextmenu", (e) => {
            e.preventDefault()

            const activeElement = document.activeElement
            const tagName = activeElement.tagName.toLocaleLowerCase()

            if (tagName == "input" || tagName == "textarea") {
                ipcRenderer.send("right_btn")
            }
        })

    }
}
