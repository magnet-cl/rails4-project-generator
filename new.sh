#!/bin/bash

# Create rails project
read -p "Enter project name: " project_name
echo $project_name

export cap_project_name=`echo $project_name | sed -e "s/\b\(.\)/\u\1/g"`

# Generates a new rails project with given project_name.
rails new --database=postgresql --skip-turbolinks --skip-bundle ../$project_name

# Copies updated Gemfile into new project.
cp template_Gemfile ../$project_name/Gemfile

cp template_database.yml ../$project_name/config/database.yml
cp template_database.yml ../$project_name/config/database.yml.example

cp template_gitignore ../$project_name/.gitignore

# Copy the assets templates into the project
cp template_application.css.scss ../$project_name/app/assets/stylesheets/application.css.scss
cp template_bootstrap_import.css.scss ../$project_name/app/assets/stylesheets/bootstrap_import.css.scss
rm ../$project_name/app/assets/stylesheets/application.css # We remove the original
cp template_application.js ../$project_name/app/assets/javascripts/application.js
rm ../$project_name/app/helpers/application_helper.rb # Remove the original
cp template_application_helper.rb ../$project_name/app/helpers/application_helper.rb
rm ../$project_name/app/views/layouts/application.html.erb # Remove the original
cp template_application.html.slim ../$project_name/app/views/layouts/application.html.slim

#Copy folder structure
cp -r project/. ../$project_name

# automatic deployment files
cp capistrano/Capfile ../$project_name/
cp capistrano/assets.rb ../$project_name/config/
cp capistrano/db.rb ../$project_name/config/
cp capistrano/deploy.rb ../$project_name/config/
cp capistrano/project.rb ../$project_name/config/

pushd ../$project_name

#psql postgres -c "CREATE ROLE magnet SUPERUSER LOGIN;"
#createuser -s -w magnet
sudo -u postgres createuser -s $USER
sudo -u postgres createdb -O $USER "${project_name}_development"
sudo -u postgres createdb -O $USER "${project_name}_test"

sed -i -e "s/DATABASE_NAME/${project_name}/g" config/database.yml
sed -i -e "s/USERNAME/${USER}/g" config/database.yml

sed -i -e "s/PROJECT_NAME/${cap_project_name}/g" config/application.rb 

# automatic deployment basic configuration
sed -i -e "s/PROJECT_NAME/${project_name}/g" config/deploy.rb

bundle

# Default landing and route to root
rails generate controller static home --template-engine=slim --no-helper --no-assets --no-test-framework
# Users
rails generate devise:install

rails g model User first_name:string last_name:string is_admin:boolean
rails generate devise User

rails g cancan:ability

popd
cp template_routes.rb ../$project_name/config/routes.rb
pushd ../$project_name



rake db:migrate

echo -e "***"
echo -e "NOTES:"
echo -e "\nIn order to use capistrano, the target hosts must be set on '${project_name}/config/deploy.rb'"
echo -e "***"
