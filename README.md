# Volik-Fomka_infra
Volik-Fomka Infra repository

ДЗ к 5 уроку:

bastion_IP = 158.160.39.44
someinternalhost_IP = 10.128.0.13

1. К someinternalhost можно подключиться с помощью команды:

    ssh -J appuser@158.160.39.44 appuser@10.128.0.13

1.1 Алиас можно настроить в  ~/.ssh/config

	Host bastion
    HostName 158.160.39.44
    IdentityFile ~/.ssh/appuser
    User appuser

	Host someinternalhost
    HostName 10.128.0.13
    User appuser
	ProxyCommand ssh -q -W %h:%p bastion

2. Настроил подключение к 158.160.39.44.sslip.io по https

	wget https://158.160.39.44.sslip.io
	--2023-01-24 11:04:06--  https://158.160.39.44.sslip.io/
	Resolving 158.160.39.44.sslip.io (158.160.39.44.sslip.io)... 158.160.39.44
	Connecting to 158.160.39.44.sslip.io (158.160.39.44.sslip.io)|158.160.39.44|:443... connected.
