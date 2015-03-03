# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# New services
Service.create(name: 'Power Yoga', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', is_featured: true)

Service.create(name: 'Ashtanga Vinyasa', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', is_featured: true)

Service.create(name: 'Candlelight Yoga', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', is_featured: true)


# New appointments
Appointment.create(service_id: '1', date: '2015-03-20', start_time: '2015-03-20 08:00:00', end_time: '2008-03-20 09:00:00')
Appointment.create(service_id: '2', date: '2015-03-20', start_time: '2015-03-20 09:00:00', end_time: '2008-03-20 10:00:00')
Appointment.create(service_id: '3', date: '2015-03-20', start_time: '2015-03-20 10:30:00', end_time: '2008-03-20 12:00:00')
