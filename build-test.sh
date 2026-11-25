#!/bin/sh
# Same clang flags as `make test-helper`; deprecation warnings hidden.
mkdir -p .build
clang -fobjc-arc -Wno-arc-performSelector-leaks -Wno-incomplete-implementation \
  -Wno-deprecated-declarations \
  -framework Foundation -framework AppKit -framework ImageIO -framework LinkPresentation \
  Tests/IMsgHelperTests/ReplyParentTests.m -o .build/ReplyParentTests
