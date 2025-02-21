#!/bin/bash
set -ex

RUN_FLUXBOX=${RUN_FLUXBOX:-yes}
RUN_XTERM=${RUN_XTERM:-yes}

case $RUN_FLUXBOX in
  false|no|n|0)
    rm -f /app/conf.d/fluxbox.conf
    ;;
esac

case $RUN_FIREFOX in
  false|no|n|0)
    rm -f /app/conf.d/firefox.conf
    ;;
esac

exec supervisord -c /app/supervisord.conf
