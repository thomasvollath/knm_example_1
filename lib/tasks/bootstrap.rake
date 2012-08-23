require 'csv'

namespace :bootstrap do

  desc 'add default stores'
  task :default_stores => :environment do
    Store.create( :number => 1, :name => 'Delphos' )
    Store.create( :number => 2, :name => 'Toledo' )
    Store.create( :number => 4, :name => 'Detroit' )
    Store.create( :number => 6, :name => 'Grand Rapids' )
    Store.create( :number => 7, :name => 'Macon' )
    Store.create( :number => 33, :name => 'Madison' )
    Store.create( :number => 42, :name => 'Chicago' )
    Store.create( :number => 45, :name => 'Des Moines' )
    Store.create( :number => 51, :name => 'Minneapolis' )
    Store.create( :number => 53, :name => 'Bismarck' )
    Store.create( :number => 55, :name => 'Omaha' )
    Store.create( :number => 57, :name => 'Wichita' )
    Store.create( :number => 59, :name => 'Kansas City' )
  end

  desc 'add default pclasses'
  task :default_pclasses => :environment do
    Pclass.create( :number => 1, :name => 'Winter Tires' )
    Pclass.create( :number => 2, :name => 'Passenger & Performance Tires' )
    Pclass.create( :number => 3, :name => 'Light Truck Tires' )
    Pclass.create( :number => 4, :name => 'Truck Tires' )
    Pclass.create( :number => 5, :name => 'Retread Tires' )
    Pclass.create( :number => 9, :name => 'Farm Tires (less than 19.5")' )
    Pclass.create( :number => 10, :name => 'Farm Tires (greater than 20")' )
    Pclass.create( :number => 11, :name => 'Small Industrial Tires' )
    Pclass.create( :number => 13, :name => 'Off-The-Road Tires' )
    Pclass.create( :number => 14, :name => 'Lawn & Garden Tires' )
    Pclass.create( :number => 15, :name => 'Boat Trailer & Camper Tires' )
    Pclass.create( :number => 17, :name => 'Tubes & Flaps' )
    Pclass.create( :number => 19, :name => 'Truck Wheels & Parts' )
    Pclass.create( :number => 20, :name => 'Farm Wheels & Parts' )
    Pclass.create( :number => 21, :name => 'Trailer & Lawn & Garden Wheels' )
    Pclass.create( :number => 18, :name => 'Wheel Parts' )
  end

  desc 'add default pvendors'
  task :default_pvendors => :environment do
    Pvendor.create( :number => 101, :name => 'Bridgestone' )
    Pvendor.create( :number => 102, :name => 'Firestone' )
    Pvendor.create( :number => 103, :name => 'Dayton' )
    Pvendor.create( :number => 104, :name => 'Primewell' )
    Pvendor.create( :number => 105, :name => 'Fuzion' )
    Pvendor.create( :number => 108, :name => 'Firestone Tubes' )
    Pvendor.create( :number => 111, :name => 'Hankook' )
    Pvendor.create( :number => 120, :name => 'Michelin' )
    Pvendor.create( :number => 121, :name => 'Uniroyal' )
    Pvendor.create( :number => 122, :name => 'Bf Goodrich' )
    Pvendor.create( :number => 125, :name => 'Cooper' )
    Pvendor.create( :number => 127, :name => 'Starfire' )
    Pvendor.create( :number => 128, :name => 'Dean' )
    Pvendor.create( :number => 129, :name => 'Cooper Zeon' )
    Pvendor.create( :number => 130, :name => 'Mastercraft' )
    Pvendor.create( :number => 132, :name => 'Roadmaster' )
    Pvendor.create( :number => 133, :name => 'Pirelli' )
    Pvendor.create( :number => 134, :name => 'Trelleborg' )
    Pvendor.create( :number => 136, :name => 'Carlisle' )
    Pvendor.create( :number => 141, :name => 'General' )
    Pvendor.create( :number => 142, :name => 'Continental' )
    Pvendor.create( :number => 148, :name => 'Goodyear Farm' )
    Pvendor.create( :number => 149, :name => 'Titan Farm' )
    Pvendor.create( :number => 150, :name => 'Goodyear' )
    Pvendor.create( :number => 151, :name => 'Fierce' )
    Pvendor.create( :number => 152, :name => 'Republic' )
    Pvendor.create( :number => 153, :name => 'Dunlop' )
    Pvendor.create( :number => 154, :name => 'Kelly' )
    Pvendor.create( :number => 162, :name => 'Yokohama' )
    Pvendor.create( :number => 165, :name => 'Kumho' )
    Pvendor.create( :number => 190, :name => 'Pro-Trac Farm' )
    Pvendor.create( :number => 169, :name => 'Atlas' )
    Pvendor.create( :number => 171, :name => 'Gladiator' )
    Pvendor.create( :number => 172, :name => 'Armour' )
    Pvendor.create( :number => 173, :name => 'Farmking' )
    Pvendor.create( :number => 174, :name => 'Hartland' )
    Pvendor.create( :number => 176, :name => 'Achilles' )
    Pvendor.create( :number => 177, :name => 'Pegasus' )
    Pvendor.create( :number => 179, :name => 'New Pride' )
    Pvendor.create( :number => 180, :name => 'Bkt Tires' )
    Pvendor.create( :number => 182, :name => 'Alliance' )
    Pvendor.create( :number => 184, :name => 'Doberman Tubes' )
    Pvendor.create( :number => 187, :name => 'Interco' )
    Pvendor.create( :number => 189, :name => 'Tireco' )
    Pvendor.create( :number => 191, :name => 'Strategic Import Supply' )
    Pvendor.create( :number => 193, :name => 'Mitas' )
    Pvendor.create( :number => 194, :name => 'Specialty Tire' )
    Pvendor.create( :number => 198, :name => 'Retread/Bandag' )
    Pvendor.create( :number => 852, :name => 'Misc Tires' )
    Pvendor.create( :number => 147, :name => 'Co-Op Farm' )
    Pvendor.create( :number => 197, :name => 'Speedways Farm' )
    Pvendor.create( :number => 504, :name => 'Petlas Farm' )
    Pvendor.create( :number => 196, :name => 'Speedway' )
    Pvendor.create( :number => 200, :name => 'AG Pro' )
    Pvendor.create( :number => 201, :name => 'Boto Tires' )
    Pvendor.create( :number => 202, :name => 'Durun' )
    Pvendor.create( :number => 203, :name => 'Farm Master' )
    Pvendor.create( :number => 204, :name => 'Goldway' )
    Pvendor.create( :number => 205, :name => 'Trazano' )
    Pvendor.create( :number => 206, :name => 'Westlake' )
    Pvendor.create( :number => 328, :name => 'AWS Inc' )
    Pvendor.create( :number => 106, :name => 'Regency' )
    Pvendor.create( :number => 325, :name => 'Unverferth MFG' )
    Pvendor.create( :number => 167, :name => 'Petlas' )
  end

  desc 'add some products'
  task :some_products => :environment do

  end

  desc 'run all bootstrap tasks'
  task :all => [ :default_stores,
                 :default_pclasses,
                 :default_pvendors ]

  # this is not included in the :all task because it takes about 5 minutes to import all 15k products
  desc 'import products.csv'
  task :import_products_csv => :environment do
    csv_text = File.read('/home/tomv/Projects/knm_example_1/lib/tasks/products.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      row = row.to_hash.with_indifferent_access
      Product.create!(row.to_hash.symbolize_keys)
    end
  end

end
