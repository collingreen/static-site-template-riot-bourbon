mkdir -p contents/scripts/vendor
mkdir -p contents/styles/vendor

# explicitly move the bower components we need to contents

# jquery
mkdir -p contents/scripts/vendor/jquery
cp bower_components/jquery/dist/jquery.min.js contents/scripts/vendor/jquery/
cp bower_components/jquery/dist/jquery.min.map contents/scripts/vendor/jquery/

# riot
mkdir -p contents/scripts/vendor/riot
cp bower_components/riot/riot+compiler.min.js contents/scripts/vendor/riot

# normalize-css
mkdir -p contents/styles/vendor/normalize-css
cp bower_components/normalize-css/normalize.css contents/styles/vendor/normalize-css/normalize.scss

# bourbon, bitters, neat
cp -r bower_components/bourbon/app/assets/stylesheets contents/styles/vendor/bourbon
cp -r bower_components/bitters/app/assets/stylesheets contents/styles/vendor/bitters
cp -r bower_components/neat/app/assets/stylesheets contents/styles/vendor/neat

# patch bitters to work outside of rails
sed -i '.bak' "s/neat-helpers/..\/neat\/neat-helpers/" contents/styles/vendor/bitters/_grid-settings.scss
