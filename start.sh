#!/bin/sh -xe

GITBOOK_DIR=/gitbook
BUILD_DIR=/gitbook_dest

cd $GITBOOK_DIR
gitbook install

case "$1" in
  init)
    gitbook init
    ;;
  serve)
    gitbook serve $GITBOOK_DIR $BUILD_DIR
    ;;
  build)
    gitbook build $GITBOOK_DIR $BUILD_DIR
    ;;
  pdf)
    gitbook pdf $GITBOOK_DIR $BUILD_DIR
    ;;
  ebook)
    gitbook ebook $GITBOOK_DIR $BUILD_DIR
    ;;
  *)
    echo "Usage $0 {init|serve}"
    exit 1
    ;;
esac
