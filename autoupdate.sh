#!/usr/bin/bash
if
  sudo apt update && sudo apt upgrade -y 
then
  echo "The update & upgrade has been done successfully"
fi
