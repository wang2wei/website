# 部署  [![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

1.部署时配置 xxray core 的版本、UUID（"alterId"默认为64）和连接缓存。

2.服务端部署后，应 open app ，显示 Bad Request，表示部署成功。

3.更新 xxray 版本，修改 app settings-->Config Vars-->VER，程序自动重启，通过view Logs确认。

4.客户端配置 client_config.json, 建议使用 cn_sniproxy+websocket+tls 传输协议。
