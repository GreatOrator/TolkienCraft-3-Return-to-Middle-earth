#!/bin/bash

# java 8 complains that 
# "ignoring option PermSize=256m; support was removed in 8.0"
# so removed -XX:PermSize=256m ...
java -Xms3072m -Xmx5120m -Xmn768m -XX:TargetSurvivorRatio=80 -XX:MaxTenuringThreshold=15 -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=40 -XX:GCPauseIntervalMillis=150 -XX:+AggressiveOpts -XX:+TieredCompilation -XX:ReservedCodeCacheSize=2048m -XX:+UseCodeCacheFlushing -XX:CompileThreshold=1000 -jar forge-1.10.2-12.18.3.2316-universal.jar nogui
