#!/bin/bash

# Create rails project
read -p "Enter project name: " project_name
echo $project_name

# Generates a new rails project with given project_name.
rails new --database=postgresql --javascript=js --skip-turbolinks --skip-bundle ../$project_name

# Copies updated Gemfile into new project.
cp template_Gemfile ../$project_name/Gemfile

cp template_database.yml ../$project_name/config/database.yml

mkdir ../$project_name/templates
cp template_database.yml ../$project_name/templates/database.yml

cp template_gitignore ../$project_name/.gitignore

# Copy the assets templates into the project
cp template_application.css.scss ../$project_name/app/assets/stylesheets/application.css.scss
cp template_bootstrap_import.css.scss ../$project_name/app/assets/stylesheets/bootstrap_import.css.scss
rm ../$project_name/app/assets/stylesheets/application.css # We remove the original
cp template_application.js ../$project_name/app/assets/javascripts/application.js
rm ../$project_name/app/helpers/application_helper.rb
cp template_application_helper.rb ../$project_name/app/helpers/application_helper.rb

# automatic deployment files
cp capistrano/Capfile ../$project_name/
cp capistrano/assets.rb ../$project_name/config/
cp capistrano/db.rb ../$project_name/config/
cp capistrano/deploy.rb ../$project_name/config/
cp capistrano/project.rb ../$project_name/config/

cd ../$project_name

#psql postgres -c "CREATE ROLE magnet SUPERUSER LOGIN;"
#createuser -s -w magnet
sudo -u postgres createuser -s $USER
sudo -u postgres createdb -O $USER "${project_name}_development"
sudo -u postgres createdb -O $USER "${project_name}_test"

sed -i -e "s/DATABASE_NAME/${project_name}/g" config/database.yml
sed -i -e "s/USERNAME/${USER}/g" config/database.yml

# automatic deployment basic configuration
sed -i -e "s/PROJECT_NAME/${project_name}/g" config/deploy.rb

bundle

rails generate devise:install

rails generate devise User

rake db:migrate

rails generate controller static home --no-helper --no-assets --no-test-framework

rake db:migrate

echo -e "***"
echo -e "NOTES:"
echo -e "\nIn order to use capistrano, the target hosts must be set on '${project_name}/config/deploy.rb'"
echo -e "***"
