#!/bin/bash
echo "Attemping to force server to stop"
ps aux |grep jekyll |awk '{print $2}' | xargs kill -9