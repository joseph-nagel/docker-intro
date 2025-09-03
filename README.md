# Docker intro

This is just a minimal introduction to [Docker](https://www.docker.com/).
The goal is to jump-start moving forward from research to production.
Docker containers establish a very lightweight virtualization solution that may
support the reproducibility and portability of ML model development and deployment.


## Instructions

1.  Install the [Docker Engine](https://docs.docker.com/engine/).
    - On Linux distributions adopting the systemd service manager, which is the majority,
      one may then need to start Docker by running `sudo systemctl start docker`.
    - Try `sudo -i` or, better yet, `sudo -s`, if you find continuous `sudo`-ing annoying.
      At the very least, the commands below have to be run with root privileges.
    - You may want to familiarize yourself with some Docker commands, for example by consulting `docker help`.

        | Command | Description |
        | ------------- | ------------- |
        | `docker images` | List available images |
        | `docker rmi <image_name>` | Remove image |
        | `docker ps` | List running containers |
        | `docker ps -a` | List all containers |

2.  Make sure that everything works properly:
    ```
    docker run hello-world
    ```

3.  Build an image from the shipped dockerfile:
    ```
    docker build -t my-image .
    ```

4.  Create and run a container from the image:
    ```
    docker run -p 8888:8888 my-image
    ```

5.  You can also run a container interactively:
    ```
    docker run -it --rm --entrypoint /bin/bash my-image
    ```
