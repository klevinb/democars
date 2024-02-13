## To start neptune software:

 - We need to pull the latest docker image:
    ```
    docker pull neptunesoftware/planet9:v23.10.3
    ```

 - Run the docker image as a container and expose it on 8080:
    ```
    docker run --name neptune  -p 8080:8080 -d neptunesoftware/planet9:v23.10.3
    ```

## To start the proxy:

 - Build the proxy docker image
    ```
    docker build -t proxy . 
    ```

 - Run the docker image as a container and expose it on port 443
    ```
    docker run -d --name proxy -p 443:443 proxy
    ```
