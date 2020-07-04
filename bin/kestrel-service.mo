[Unit]
Description={{description}}

[Service]
WorkingDirectory=/home/{{user}}/web/{{domain}}/aspnetcore/{{appname}}
ExecStart=/usr/bin/dotnet /home/{{user}}/web/{{domain}}/aspnetcore/{{appname}}/{{appname}}.dll
Restart=always
# Restart service after 10 seconds if the dotnet service crashes:
RestartSec=10
KillSignal=SIGINT
SyslogIdentifier=kestrel-{{domain}}-{{appname}}
User={{user}}
Environment=ASPNETCORE_ENVIRONMENT=Production
Environment=DOTNET_PRINT_TELEMETRY_MESSAGE=false

[Install]
WantedBy=multi-user.target
