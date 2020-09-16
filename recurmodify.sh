#!/usr/bin/env bash
lastmodf(){
here="$(pwd)"
while true; do
 if [[ -d "$(ls -rt | tail -n 1)" ]]; then
  cd "$(ls -rt | tail -n 1)"
 elif [[ -f "$(ls -rt | tail -n 1)" ]]; then 
  echo "Last modified file: $(pwd)/$(ls -rt | tail -n 1)"
  cd "$here"
  return
 else
  cd ..
  echo "Last modified empty directory: $(pwd)/$(ls -rt | tail -n 1)"
  cd "$here"
  return
 fi
done
}
