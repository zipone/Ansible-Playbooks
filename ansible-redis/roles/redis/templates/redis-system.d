[Unit]
Description=Redis Server
After=network.target

[Service]
User=root
Group=root
ExecStart={{ redis_path }}/redis-{{ redis_version }}/src/redis-server {{ redis_path }}/redis-{{ redis_version }}/redis.conf
LimitNOFILE=55535
Restart=always
RestartSec=6
ExecStop={{ redis_path }}/redis-{{ redis_version }}/src/redis-cli shutdown

[Install]
WantedBy=multi-user.target
