#!/usr/bin/env bash
lastmodfile(){
here="$(pwd)"
while true; do
 if [[ -d "$(ls -rt | tail -n 1)" ]]; then
  cd "$(ls -rt | tail -n 1)"
 elif [[ -f "$(ls -rt | tail -n 1)" ]]; then 
  echo \" "$(ls -rt | tail -n 1)" \" is the last modified file\!
  cd "$here"
  return
 else
  cd ..
  echo \" "$(ls -rt | tail -n 1)" \" is an empty directory and is the last modified\!
  cd "$here"
  return
 fi
done
}
