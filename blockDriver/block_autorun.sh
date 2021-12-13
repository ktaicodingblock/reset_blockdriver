#!/usr/bin/env bash
cd /home/pi/blockcoding/kt_ai_makers_kit_block_coding_driver/blockDriver/
AUTO_RUN_URL=$1

if [ -z "${AUTO_RUN_URL}" ];then
    echo "Usage: $0 <auto-run-url>"
    exit 1
fi

# if [ $# -eq 0 ]
# then
#     echo "자동 실행 시킬 gen 스크립트의 주소를 입력해 주세요."
#     exit 1
# fi

# if [ ! -f "$1" ]; then
#     echo "파일의 위치를 찾을 수 없습니다."
#     exit 1
# fi
# kill -9 $(ps aux | grep 'phantomjs' | awk 'NR==1{print $2}')
# DISPLAY=:0 node /home/pi/blockcoding/kt_ai_makers_kit_block_coding_driver/blockDriver/p_autorun.js "$1" &
DISPLAY=:0 sh runBlock.sh $1 &

#setsid node /home/pi/blockcoding/kt_ai_makers_kit_block_coding_driver/blockDriver/p_autorun.js "$1" &
#node /home/pi/blockcoding/kt_ai_makers_kit_block_coding_driver/blockDriver/blockDriver.js --autorun
