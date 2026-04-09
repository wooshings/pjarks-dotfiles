#!/bin/sh

if ifconfig en0 | grep -q "inet "; then
  sketchybar --set $NAME icon="􀙇" label=""
else
  sketchybar --set $NAME icon="􀙈" label="Disconnected"
fi
