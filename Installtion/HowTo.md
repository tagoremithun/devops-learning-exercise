================== custom script to run automatically during boot ==============

create script 

vi /var/tmp/test_script.sh


vi /etc/systemd/system/sample.service

############################## Add code

[Unit]
Description=Description for sample script goes here
After=network.target

[Service]
Type=simple
ExecStart=/var/tmp/test_script.sh
TimeoutStartSec=0

[Install]
WantedBy=default.target

##############################


systemctl daemon-reload


systemctl enable sample.service

systemctl start sample.service

systemctl reboot
