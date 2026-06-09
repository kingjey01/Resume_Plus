@echo off

cd /d F:\resume_plus_clean

start cmd /k "graphify-rs watch --path . --output graphify-out"

start cmd /k "graphify-rs -v serve --graph graphify-out/graph.json"