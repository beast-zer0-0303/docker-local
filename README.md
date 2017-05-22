# docker-local

CTF で使用する用 docker

## docker-toolbox install

```
brew cask install docker-toolbox
```

## docker 起動

```
docker-machine start default
eval "$(docker-machine env default)"
```

## image 作成

```
sh scripts/docker-build.sh
```

## アクセス方法

docker run -it ctflocal

## docker-compose 起動方法

```
docker-compose up -d
```

## docker ゴミ掃除

```
docker rm $(docker ps -a -q)
docker rmi $(docker images -f "dangling=true" -q)
docker rmi [imageId] --force
```
