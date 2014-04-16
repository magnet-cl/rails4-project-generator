#!/bin/bash

# Create rails project
read -p "Enter project name: " project_name
echo $project_name

# Generates a new rails project with given project_name.
rails new ../$project_name --skip-bundle

# Copies updated Gemfile into new project.
cp template_Gemfile ../$project_name/Gemfile

cp template_database.yml ../$project_name/config/database.yml

mkdir ../$project_name/templates
cp template_database.yml ../$project_name/templates/database.yml

cp template_gitignore ../$project_name/.gitignore

cd ../$project_name

#psql postgres -c "CREATE ROLE magnet SUPERUSER LOGIN;"
#createuser -s -w magnet
sudo -u postgres createuser -s $USER
sudo -u postgres createdb -O $USER "${project_name}_development"
sudo -u postgres createdb -O $USER "${project_name}_test"

sed -i -e "s/DATABASE_NAME/${project_name}/g" config/database.yml
sed -i -e "s/USERNAME/${USER}/g" config/database.yml

bundle

rails generate devise:install

rails generate devise User

rake db:migrate

rails generate active_admin:install

# fix for activeadmin
count=$(grep "ActiveAdmin.routes(self)" config/routes.rb | wc -l)
if [ $count -gt 1 ]
  then
    sed -i '0,/ActiveAdmin.routes(self)/ s///' config/routes.rb
fi

rails generate active_admin:assets

rails generate controller static home

rake db:migrate

echo "***"
echo "NOTE:\nThis project has the Active Admin gem, which tends to have CSS conflicts with other CSS frameworks, particularly Bootstrap.\nIn order to fix this, you must not include the active_admin.css.scss file into the application, as the admin page includes it separately."
echo "***"
