# alpine-rsyslog
rsyslog server based on alpine image.

It listens on 514 TCP/UDP and dumps all messages to the console.

Usage:
```
docker run --name rsyslog --rm -it -p 514:514 dddpaul/rsyslog
```

Or you can run in debug mode:
```
docker run --name rsyslog --rm -it -p 514:514 dddpaul/rsyslog -d
```

Feed logger with messages:
```
echo 'Jan 29 09:47:14 superapp/forwarding,json {"message":"blablabla","hostname":"host","id":"1"}' | nc -v 127.0.0.1 514
```

You should see something like this:
```
<13>2017-01-29T09:47:14+00:00 172.17.0.1 superapp/forwarding,json {"message":"blablabla","hostname":"host","id":"1"}
```
