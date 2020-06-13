#!/bin/bash

MAIN_DIR=$PWD

build_npm_project() {
  MODULE_PATH=$1
  echo ""
  echo "+++"
  echo "+++ BUILDING MODULE $MODULE_PATH"
  echo "+++"
  cd $MODULE_PATH && {
    npm install
    npm run build
    if [ $? -ne 0 ]
    then
      echo ""
      echo "+++"
      echo "+++ BUILDING MODULE $MODULE_PATH FAILED"
      echo "+++"
      exit 1
    else
      echo ""
      echo "+++"
      echo "+++ BUILDING MODULE $MODULE_PATH SUCCESSFUL"
      echo "+++"
    fi
    cd $MAIN_DIR
  }
}

build_npm_project ../../hugo/hugo-npm