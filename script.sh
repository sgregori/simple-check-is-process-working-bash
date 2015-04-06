#!/bin/sh

$PROCESS='example_process'
$LAUNCH_PROCESS='/usr/bin/example_process --example_option'

pids=$(ps axfu | grep $PROCESS | grep -v grep | grep -v check | wc -l)

if [ $pids -lt 1 ]; then
    echo "Process $1 is not working."
    echo "Starting process..."
    $LAUNCH_PROCESS
fi
