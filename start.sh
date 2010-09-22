#!/bin/sh
ERL_ARGS="+K true +A 32 -env ERL_MAX_PORTS=500000 -smp +P 250000"
cd `dirname $0`
exec erl $ERL_ARGS -pa $PWD/ebin $PWD/deps/*/ebin -boot start_sasl -s reloader -s retards
