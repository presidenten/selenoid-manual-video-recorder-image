# Selenoid-manual-video-recorder

Clone of [selenoid/video-recorder](https://github.com/aerokube/selenoid-images/tree/master/selenium/video) that does not automatically spawn ffmpeg with vnc recording.

Containers of this image can start/stop ffmpeg by running `docker exec name sh -c 'ffmpeg ...'`

Available on hub.docker.com as presidenten/selenoid-manual-video-recorder.

## Installation
```shell
docker image pull presidenten/selenoid-manual-video-recorder
```
