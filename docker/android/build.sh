#!/usr/bin/env bash

set -e -x

export FASTLANE_DISABLE_COLORS=1
export REALM_DISABLE_ANALYTICS=1
export STATUS_RELEASE_STORE_PASSWORD=1TteVCyHykCa
export STATUS_RELEASE_KEY_ALIAS=status-im
export STATUS_RELEASE_KEY_PASSWORD=1TteVCyHykCa

#make clean
## Prep
#bundle install --quiet
#make prepare-android
## Lint
#lein cljfmt check
## Test
#lein test-cljs
## Build
#lein prod-build-android
# Compile
id
cd android
./gradlew assembleRelease -PbuildUrl=TEST -Dorg.gradle.daemon=false
