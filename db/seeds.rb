5.times{ User.create!( email: FFaker::Internet.email, password: 'password', name: FFaker::Name.name, avatar: FFaker::Avatar.image, birthday: FFaker::Time.date, street_address: FFaker::AddressUS.street_address, apt_num: FFaker::AddressUS.secondary_address, city: FFaker::AddressUS.city, state: FFaker::AddressUS.state, zip: FFaker::AddressUS.zip_code, phone_num: FFaker::PhoneNumber.phone_number )} 


7.times { Contest.create!( event_name: FFaker::CheesyLingo.title, event_date: FFaker::Time.date, cell_value: rand(1..5), sport: FFaker::Sport.name, prizes: [FFaker::BaconIpsum.word, FFaker::BaconIpsum.word] )}

results = [[], [1], [1,2], [2]]

500.times{ Cell.create!( contest_id: rand(1..7), user_id: rand(1..5), position: [rand(0..9), rand(0..9)], result: results.sample )}