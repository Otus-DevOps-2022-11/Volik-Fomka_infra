# Volik-Fomka_infra

[![Build Status](https://travis-ci.org/Volik-Fomka/Volik-Fomka_infra.svg?branch=main)](https://travis-ci.org/Volik-Fomka/Volik-Fomka_infra)

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

ДЗ к 6 уроку:
testapp_IP = 51.250.85.180
testapp_port = 9292

Создание инстанса:
	yc compute instance create \
 	 --name reddit-app1 \
 	 --hostname reddit-app1 \
 	 --memory=4 \
 	 --core-fraction=100 \
	  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
	  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 	 --metadata-from-file user-data=stup.yaml \
	  --metadata serial-port-enable=1

ДЗ к 10 уроку:

После удаления директории и запуска плейбука таска с клонированием изменилась на changed, потому что ansible провёл изменения
