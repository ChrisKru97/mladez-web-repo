#!/bin/bash

cd public
rm -rf edit app
mkdir edit
mkdir app

cd ../../mladez_bystrice_flutter
flutter build web
cp -R ./build/web/ ../web-repo/public/app/

cd ../mladez-bystrice-edit
PUBLIC_URL='edit' && yarn build
cp -R ./build/* ../web-repo/public/edit/

cd ../web-repo

firebase deploy
