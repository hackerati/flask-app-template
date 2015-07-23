# flask-app-template
Template quick start app for Python Flask apps on AWS



###Temp helpful tip:

If you get an error such as:

````
socket.error: [Errno 48] Address already in use
````

The following commands may help find and kill the process:

Get the PID:

```bash
$ lsof -i :5000
```

Kill any running python process

```bash
$ sudo kill -9 PID
```


