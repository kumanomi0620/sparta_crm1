Faker::Config.locale = :ja
3.times do |index|
  Company.create(
    name: Faker::Company.name,
    url: "http://www.test{#index}.co.jp/",
    address: Faker::Address.city + "12-23#{index}"
  )
end

# 下記の4行を追加
Post.create(position_name: "社長")
Post.create(position_name: "部長")
Post.create(position_name: "課長")
Post.create(position_name: "平社員")

# post_idを追加
100.times do |index|
  Customer.create(
    family_name: Faker::Name.last_name,
    given_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    company_id: rand(3) + 1,
    post_id: rand(1..4)
  )
end
