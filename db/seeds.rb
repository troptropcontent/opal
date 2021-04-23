# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# creates 10 fake providers
# puts "Creation of 10 fake providers"
# fake_providers = []
# 10.times do
#   fake_provider = Faker::Company.name 
#   puts "  Add the provider #{fake_provider} to the fake_providers list"
#   fake_providers<<fake_provider
# end

# # creates 10 bills for each provider
# puts "Creation of 10 bills for each provider"
# fake_providers.each do |fake_provider|
#   10.times do |iteration|
#     puts "Creation of the fake bill # #{iteration + 1}"
#     fake_number = Faker::Invoice.reference
#     puts "  fake_number = #{fake_number}"
#     fake_customer = Faker::Name.first_name+" "+Faker::Name.last_name
#     puts "  fake_customer = #{fake_customer}"
#     fake_bill = Bill.create({number: fake_number, provider: fake_provider, customer: fake_customer})
#     puts "  bill created"
#     puts "  between 2 and 10 lines for each invoice"
#     # creates between 2 and 10 lines for each invoice
#     (2..10).to_a.sample.times do |line_iteration|
#       puts "    creation of the fake line # #{line_iteration + 1}"
#       fake_line = fake_bill.lines.create({
#         product: Faker::Commerce.product_name,
#         categorie: Faker::Commerce.department(max: 1),
#         unit_price_cents: rand(100..1000),
#         quantity: rand(1..10),
#       })
#       puts "    fake product : #{fake_line.product}"
#       puts "    fake categorie : #{fake_line.categorie}"
#       puts "    fake unit_price : #{fake_line.unit_price_cents.fdiv(100)}"
#       puts "    fake quantity : #{fake_line.quantity}"
#       fake_line.total_cents = fake_line.quantity * fake_line.unit_price_cents
#       fake_line.save!
#     end
#     puts "  done creating the lines updates the total amount of the bill"
#     # updates the total of the bill with the lines
#     fake_bill.amount = fake_bill.lines.map{|line| line.total_cents}.sum
#     fake_bill.save!
#     puts "  total amount of the bill # #{fake_number} updated to #{fake_bill.amount.fdiv(100)}"
#   end

# end

qrcode = RQRCode::QRCode.new(Bill.first.serialized)

# NOTE: showing with default options specified explicitly
svg = qrcode.as_svg(
  offset: 0,
  color: '000',
  shape_rendering: 'crispEdges',
  module_size: 11,
  standalone: true
)

File.open("/home/tomecrepont/code/troptropcontent/opal/app/assets/images/QrCodeSeed.Svg", 'w') {|f| f.write(svg) }



# Faker::Commerce.color #=> "lavender"

# # Keyword arguments: max, fixed_amount
# Faker::Commerce.department #=> "Grocery, Health & Beauty"
# Faker::Commerce.department(max: 5) #=> "Grocery, Books, Health & Beauty"
# Faker::Commerce.department(max: 2, fixed_amount: true) #=> "Books & Tools"

# Faker::Commerce.material #=> "Plastic"

# Faker::Commerce.product_name #=> "Practical Granite Shirt"

# # Produces a Float by default
# # Keyword arguments: range, as_string
# Faker::Commerce.price #=> 44.6
# Faker::Commerce.price(range: 0..10.0, as_string: true) #=> "2.18"

# # Generate a random promotion code.
# # Keyword arguments: digits
# Faker::Commerce.promotion_code #=> "AmazingDeal829102"
# Faker::Commerce.promotion_code(digits: 2) #=> "AmazingPrice57"