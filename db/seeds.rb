# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Usman Asif', role: 'admin', email: 'usman@test.com', password: 'admin123!', password_confirmation: 'admin123!', admin: true)

User.create(name: 'Badar Shafiq',  role: 'manager', email: 'badar@test.com',  password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Rehmat Qadir',  role: 'manager', email: 'rehmat@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Faisal Waleed', role: 'manager', email: 'faisal@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Jawad Firdous', role: 'manager', email: 'jawad@test.com',  password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Ahsan Elahi',   role: 'manager', email: 'ahsan@test.com',  password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Waleed Asghar', role: 'manager', email: 'waleed@test.com',  password: 'admin123!', password_confirmation: 'admin123!')

User.create(name: 'Ashar Ali',     role: 'developer', email: 'ashar@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Haseeb Khan',   role: 'developer', email: 'haseeb@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Talha Mughal',  role: 'developer', email: 'Talha@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Anas Masood',   role: 'developer', email: 'Anas@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Muneeb Sheikh', role: 'developer', email: 'Muneeb@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Amir Rao',      role: 'developer', email: 'Amir@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Muneeb Ahmad',  role: 'developer', email: 'Muneeb@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Ali Adnan',     role: 'developer', email: 'ali@test.com', password: 'admin123!', password_confirmation: 'admin123!')

User.create(name: 'Abdul Wahab',   role: 'sqa', email: 'Abdul@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Junaid Zaka',   role: 'sqa', email: 'Junaid@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Abdul Wadood',  role: 'sqa', email: 'Wadood@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Tahir Ahmad',   role: 'sqa', email: 'Tahir@test.com', password: 'admin123!', password_confirmation: 'admin123!')
User.create(name: 'Sarim Ali',     role: 'sqa', email: 'Sarim@test.com', password: 'admin123!', password_confirmation: 'admin123!')

Project.create(name: 'Sapling', description: 'Hrms Product', manager_id: 2)
Project.create(name: 'Concert Finance', description: 'Finance Product', manager_id: 2)
Project.create(name: 'Hay Stack', description: 'Stack Product', manager_id: 2)
Project.create(name: 'Patient IQ', description: 'Patients Product', manager_id: 3)
Project.create(name: 'go moment', description: 'Hrms Product', manager_id: 3)
