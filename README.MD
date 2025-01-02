 Zabbix Project

## 1.
Make Sure to export the following environment variables on the server

```
POSTGRES_USER=<your_postgres_user>
POSTGRES_PASSWORD=<your_postgres_password>
ZBX_SERVER_HOST=<zabbix_server_dns_or_ip>  # Replace with the Zabbix Server's DNS or IP address
ZBX_AGENT2_HOSTNAME=<zabbix_agent2_hostname>
ZBX_AGENT2_LISTENPORT=<zabbix_agent2_listen_port>
```

## 2.

Build the Zabbix Server

```
cd server/
docker-compose up -d
```


## 3.

To view the Zabbix Server Go to URL:

```
http://localhost:8080
```
