# Dockerize Vue JS Application 

# For Development
## Docker
Build docker image
```
docker build -t vue-app:dev .
```

 Run Docker Container
```
docker run -v ${PWD}:/app -v /app/node_modules -p 8081:8080 --rm vue-app:dev
```
and then try visit [http://localhost:8181](http://localhost:8181) in your browser

*Note : windows Users may not support ${PWD}, Please use absolute path instead of*

## Docker Compose
Build and Run using docker-compose
```
docker-compose up -d --build
```

# For Production

## Docker
Build docker image
```
docker build -f Dockerfile-prod -t vue-app:prod .
```
Run Docker Container
```
docker run -it -p 80:80 --rm vue-app:prod
```
and then try visit [http://localhost](http://localhost) in your browser

## Docker Compose 
Build and Run using docker-compose
```
docker-compose -f docker-compose-prod.yml up -d --build
```

and then try visit [http://localhost](http://localhost) in your browser


### Reference
* [https://v2.vuejs.org/v2/cookbook/dockerize-vuejs-app.html](https://v2.vuejs.org/v2/cookbook/dockerize-vuejs-app.html)
*  [https://qdmana.com/2021/09/20210901000128115o.html](hhttps://qdmana.com/2021/09/20210901000128115o.html)
