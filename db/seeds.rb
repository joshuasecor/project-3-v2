# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# New levels
Level.create(name: 'Beginner')

Level.create(name: 'Intermediate')

Level.create(name: 'Advanced')


# New Categories
Category.create(name: 'Anusara')

Category.create(name: 'Ashtanga')

Category.create(name: 'Bikram')

Category.create(name: 'Hatha')

Category.create(name: 'Iyengar')

Category.create(name: 'Restorative')

Category.create(name: 'Vinyasa')

Category.create(name: 'Other')


# New services
Service.create(name: 'Power Yoga', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', is_featured: true, level_id: 3, category_id: 3)

Service.create(name: 'Ashtanga Vinyasa', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', is_featured: true, level_id: 2, category_id: 7)

Service.create(name: 'Candlelight Yoga', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', is_featured: true, level_id: 1, category_id: 6)


# About data
About.create(about_text: 'Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', address_line_1: '1410 Second Street', address_line_2: '1st Floor', city: 'Santa Monica', state: 'CA', zip: '90401', email: 'info@branchstudio.com', phone: '310-555-7283')


# New trainers
Trainer.create(first_name: 'Josh', last_name: 'Secor', bio: 'Josh ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consequat commodo arcu at dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis id vulputate odio. Praesent dapibus tincidunt orci id faucibus.', is_featured: true)
Trainer.create(first_name: 'Will', last_name: 'Cebron', bio: 'Will pulvinar nunc ligula, facilisis consequat odio pharetra nec. Suspendisse potenti. Etiam fringilla, quam quis euismod tempor, nulla lectus tincidunt ex, et facilisis erat lectus nec sapien. Nulla facilisi.', is_featured: true)
Trainer.create(first_name: 'Monique', last_name: 'Wolf', bio: 'Monique consectetur ante enim, sit amet luctus lacus posuere non. Proin et nisi maximus, dictum purus nec, pellentesque mauris. Aliquam pharetra odio et felis ultrices euismod. Aenean vulputate interdum mollis. Ut sem justo, congue id maximus non, ultricies id lacus.', is_featured: true)


# New appointments
Appointment.create(service_id: 1, trainer_id: 1, date: '2015-03-18', start_time: '2015-03-20 08:00:00', end_time: '2008-03-20 09:00:00')
Appointment.create(service_id: 2, trainer_id: 2, date: '2015-03-19', start_time: '2015-03-20 09:00:00', end_time: '2008-03-20 10:00:00')
Appointment.create(service_id: 3, trainer_id: 3, date: '2015-03-20', start_time: '2015-03-20 10:30:00', end_time: '2008-03-20 12:00:00')
Appointment.create(service_id: 1, trainer_id: 3, date: '2015-03-20', start_time: '2015-03-20 10:30:00', end_time: '2008-03-20 12:00:00')

# Admin user
User.create(email: 'admin@branchstudio.com', password: 'password', is_admin: true)



