# play-bolt

[Bolt](https://slack.dev/bolt/concepts)

## Development on local

```console
$ cp .env.sample .env
$ vi .env  # fix
$ npm install
$ node app.js
$ ngrok http 13000
```

## Development on kubernetes(minikube)

```console
$ cp .env.sample .env
$ vi .env  # fix
$ kubectl create secret generic play-bolt --from-env-file .env
$ eval $(minikube docker-env)
$ docker build -t play-bolt:latest .
$ kubectl apply -f k8s.yml
$ ngrok http $(minikube service play-bolt --format "{{.IP}}:{{.Port}}")
```
