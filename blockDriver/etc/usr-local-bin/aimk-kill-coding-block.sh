#!/usr/bin/env bash

# 이 스크립트는 브라우저와 blockDriver를 강제 종료시킨다.
# blockDriver.js에서 이 스크립트를 실행하므로
# blockDriver를 브라우저보다 나중에 kill하는게 좋겠다.
# kill 명령을 실행하는 프로세스를 kill하는 상황이 된다.

# browser kill
sudo killall -9 chromium-browser-v7

if [ -r /var/run/aimk/blockDriver.pid ]; then 
    read pid < /var/run/aimk/blockDriver.pid
    sudo kill -9 $pid
fi
