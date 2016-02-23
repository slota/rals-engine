# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'assets', 'customers.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Customer.create
  t.first_name = row['first_name']
  t.last_name = row['last_name']
  t.save
  puts "#{t.first_name}, #{t.last_name} saved"
end

csv_text = File.read(Rails.root.join('lib', 'assets', 'merchants.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Merchant.create
  t.name = row['name']
  t.save
  puts "#{t.name} saved"
end

csv_text = File.read(Rails.root.join('lib', 'assets', 'items.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Item.create
  t.name = row['name']
  t.description = row['description']
  t.unit_price = row['unit_price']
  t.merchant_id = row['merchant_id']
  t.save
  puts "#{t.name} = #{t.description} saved"
end

csv_text = File.read(Rails.root.join('lib', 'assets', 'invoices.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Invoice.create
  t.customer_id = row['customer_id']
  t.merchant_id = row['merchant_id']
  t.status = row['status']
  t.save
  puts "Invoice #{t.id} saved"
end

csv_text = File.read(Rails.root.join('lib', 'assets', 'transactions.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Transaction.create
  t.invoice_id = row['invoice_id']
  t.credit_card_number = row['credit_card_number']
  t.credit_card_expiration_date = row['credit_card_expiration_date']
  t.result = row['result']
  t.save
  puts "Transaction #{t.id} saved"
end

csv_text = File.read(Rails.root.join('lib', 'assets', 'invoice_items.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = InvoiceItem.create
  t.quantity = row['quantity']
  t.unit_price = row['unit_price']
  t.invoice_id = row['invoice_id']
  t.item_id = row['item_id']
  t.save
  puts "InvoiceItem #{t.id} saved"
end
