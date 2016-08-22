jekyll build
TEMP=`mktemp -dt`
cp -r _site/* $TEMP
git checkout -B gh-pages
rm -rf *
mv $TEMP/* .
git add -A .
git commit -a -m "Site updated"
git push silshack gh-pages --force
git checkout -
echo yolo