FactoryBot.define do
  factory :offer do
    advertiser_name { Faker::Company.name }
    url             { Faker::Internet.url('example.com', '/foobar.html') }
    description     { Faker::Lorem.paragraph }
    starts_at       { Faker::Date.between(2.days.ago, Date.today) }
  end
end
