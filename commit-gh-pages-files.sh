#cd docs

#echo "Removing existing files"
#rm -rf * && git add . && git commit -m"Removing old publication" && git push && cd ..

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd docs && git add -f . && git commit -m "Publishing to gh-pages" && cd ..
git push origin gh-pages