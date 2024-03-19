require 'open-uri'

nba_players = [
  "LeBron James", "Kevin Durant", "Stephen Curry", "Kawhi Leonard",
  "Giannis Antetokounmpo", "James Harden", "Chris Paul", "Damian Lillard",
  "Anthony Davis", "Joel Embiid", "Luka Dončić", "Nikola Jokić",
  "Jimmy Butler", "Kyrie Irving", "Russell Westbrook", "Paul George",
  "Klay Thompson", "Karl-Anthony Towns", "Jayson Tatum", "Zion Williamson"
]

nba_players.each_with_index do |name, index|
  # Sanitize name to create a valid email address
  sanitized_name = name.downcase.gsub(/\s+/, ".").gsub(/[^a-z0-9.]/, "")
  email = index.even? ? nil : "#{sanitized_name}@example.com"

  customer = Customer.create!(
    full_name: name,
    phone_number: "123-456-78#{format('%02d', index)}",
    email_address: email,
    notes: "NBA player - #{name}"
  )

  image_url = "https://via.placeholder.com/150"

  downloaded_image = URI.open(image_url)

  customer.image.attach(
    io: downloaded_image,
    filename: "nba_#{index + 1}.jpg",
    content_type: 'image/jpeg'
  )
end
