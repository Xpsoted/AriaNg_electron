
# AriaNg electron

> 一个基于electron的 Aria2 图形界面客户端
原项目：[Xmader/AriaNG Gui](https://github.com/Xmader/aria-ng-gui/)

![](https://aria-ng.xmader.com/Screenshot1.png)

## 特性

* 集成aria2c
* 多线程下载
* 未完成任务退出自动保存 <!-- (Bug: 需要暂停才能保存进度) -->
* 支持PT/BT
* 下载完成消息通知
* 多语言支持
* 支持配置多个 aria2 RPC
* 支持打开下载文件夹, 在文件管理器中显示已下载的文件 (仅限使用内置的Aria2 RPC)
* 使用响应式布局, 支持各种计算机或移动设备
* 友好的界面交互

## [下载](https://github.com/Xpsoted/AriaNg_electron/releases/)

## Aria2 配置文件路径

* Windows: `%APPDATA%/aria-ng-gui/aria2.conf`
* Linux: `~/.config/aria-ng-gui/aria2.conf` 或 `$XDG_CONFIG_HOME/aria-ng-gui/aria2.conf`
* macOS: `~/Library/Application Support/aria-ng-gui/aria2.conf`
