@echo off
set str=%*
set "str=%str:\=/%"
set "DOCKER_IMAGE=ghcr.io/ximeraproject/ximeralatex:v2.6.7a"
echo Starting docker %DOCKER_IMAGE% with args  %str%  in directory %cd%.
echo docker run --rm --net="host" --mount type=bind,source=%cd%,target=/code %DOCKER_IMAGE% xmlatex %str%
docker run --rm --net="host" --mount type=bind,source=%cd%,target=/code %DOCKER_IMAGE% xmlatex %str%