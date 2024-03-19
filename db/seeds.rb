# db/seeds.rb
nba_players = [
  "LeBron James", "Kevin Durant", "Stephen Curry", "Kawhi Leonard",
  "Giannis Antetokounmpo", "James Harden", "Chris Paul", "Damian Lillard",
  "Anthony Davis", "Joel Embiid", "Luka Dončić", "Nikola Jokić",
  "Jimmy Butler", "Kyrie Irving", "Russell Westbrook", "Paul George",
  "Klay Thompson", "Karl-Anthony Towns", "Jayson Tatum", "Zion Williamson"
]

nba_players.each_with_index do |name, index|
  Customer.create!(
    full_name: name,
    phone_number: "123-456-78#{format('%02d', index)}",
    email_address: index.even? ? nil : "#{name.downcase.gsub(/\s+/, "")}@nba.com",
    notes: "NBA player - #{name}"
  )
end
