# 下载webhook
sudo apt update
sudo apt install webhook

# 生成service文件
sudo tee /etc/systemd/system/webhook.service << EOF
[Unit]
Description=Webhook Service

[Service]
ExecStart=/usr/bin/webhook -hooks $(pwd)/webhook.json -verbose -port 324
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# 注册并且启动服务
sudo systemctl enable webhook
sudo systemctl start webhook