# db/seeds.rb
5.times do |i|
  Customer.create!(
    full_name: "Customer #{i + 1}",
    phone_number: "123-456-7890",
    email_address: i.even? ? nil : "customer#{i + 1}@example.com",
    notes: "Some notes about Customer #{i + 1}"
  )
end
