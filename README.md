# OpenAI Spinning Up Dockerfile.

A Dockerfile for [OpenAI's Spinning Up tutorial](https://spinningup.openai.com/en/latest/user/installation.html).

## MacOS 

Set up an X11 forwarding test image, install XQuartz, and test X11 forwarding from a Docker iamge to the host.
1. `docker build --tag xeyes -f xeyesDockerfile`
2. `brew install --cask xquartz`
3. Open XQuarts > Settings > Security > Allow Connections From Network Clients.
4. Reboot.
5. `xhost +localhost`
6. `docker run -it --rm --env="DISPLAY=host.docker.internal:0" xeyes`

Build and run the Spinning Up image.
1. `export DOCKER_DEFAULT_PLATFORM=linux/amd64` 
2. `docker build --tag open-ai-spinning-up:latest .`
3. `docker run -it --rm --env="DISPLAY=host.docker.internal:0" open-ai-spinning-up:latest`
