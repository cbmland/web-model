sudo rm -r ./data/saved_model/
sudo docker run -v ~/Desktop/emoji-scavenger-hunt-master/data:/data -it cbmland/model-builder
sudo cp -f ./data/scavenger_classes.ts ./src/js/
sudo cp -f ./data/saved_model_web/* ./dist/model/
yarn build
cd dist
git pull
git add *
git commit -m 'build-all'
git push


