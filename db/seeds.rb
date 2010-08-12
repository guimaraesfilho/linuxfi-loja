# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Produto.create( [ { :nome => "Head First Servlets", :descricao => "Aprenda servlets", :preco => 23},
                  { :nome => "Ruby Bible", :descricao => "A Savalção em Ruby", :preco => 40},
                  { :nome => "Scala In Action", :descricao => "Programação", :preco => 35},
  ])

Usuario.create!( [
  { :nome => "Jose",
    :email => "jose@mail.com",
    :senha => "123456",
    :senha_confirmation => "123456",
    :termos_e_condicoes => '1'
  }])

administrador = Usuario.new(
  { :nome => "Admin",
    :email => "admin@mail.com",
    :senha => "123456",
    :senha_confirmation => "123456",
    :termos_e_condicoes => '1'
  })
administrador.administrador = true
administrador.save