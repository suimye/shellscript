#!/bin/bash

# TouchBarServer プロセスの PID を取得してキルする
pid=$(pgrep TouchBarServer)

if [ -z "$pid" ]; then
  echo "TouchBarServer のプロセスが見つかりません。"
else
  kill -9 $pid
  echo "TouchBarServer のプロセス (PID: $pid) を終了しました。"
fi

