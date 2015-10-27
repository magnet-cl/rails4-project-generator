# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create({
  email: 'admin@admin.com',
  first_name: 'Admin',
  last_name: 'App',
  password: '12345678',
  password_confirmation: '12345678',
  is_admin: true
})
User.create({
  email: 'test@magnet.cl',
  first_name: 'Test',
  last_name: 'Team',
  password: '12345678',
  password_confirmation: '12345678'
})
User.create({
  email: 'client@magnet.cl',
  first_name: 'Client',
  last_name: 'User',
  password: '12345678',
  password_confirmation: '12345678'
})
