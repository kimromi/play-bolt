# play-bolt

[Bolt](https://slack.dev/bolt/concepts)

## Development on local

```console
$ npm install
$ node app.js
$ ngrok http 13000
```

## Development on kubernetes(minikube)

```console
$ eval $(minikube docker-env)
$ docker build -t play-bolt:latest .
$ kubectl apply -f k8s.yml
$ ngrok http $(minikube service play-bolt --format "{{.IP}}:{{.Port}}")
```
