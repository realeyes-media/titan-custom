#!/bin/sh
tail -f logs/titan.log &
titan $1
