#!/bin/bash

cd public
rm -rf edit app
mkdir edit
mkdir app

cd ../../mladez_bystrice_flutter
flutter build
cp -R ./build ../../web-repo/public/app

cd ../../mladez-bystrice-edit
yarn build
cp -R ./build ../../web-repo/public/edit

cd ../web-repo

firebase deploy