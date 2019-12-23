# 54-react-nginx-dev-ssl
Setting up a (docker + nginx + react + ssl) development environment

## Getting Started

You just need docker and docker-compose installed on you system.
Update the files with the domain and the password for the ssl certificate

After this ...

Run
```sh
docker-compose build
```
```sh
docker-compose up
```


## Others things

If you used Toolbox, then run
```sh
docker-machine ip
```
to find your ip.

To see your app:

```sh
http://yourip:80
```
