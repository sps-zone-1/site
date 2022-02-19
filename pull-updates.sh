# pull update from main
git pull origin master

# pull updates from submodules

cd public
git checkout master
git pull origin master 

cd ../themes/hugo-whisper-theme
git checkout master
git pull origin master

cd ../../