#!/bin/bash
ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 output.jpeg
