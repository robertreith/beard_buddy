class CreateClients < ActiveRecord::Migration
  def change
  	create_table :clients do |t|
  		t.string :consumer_key
  		t.string :consumer_secret 
  		t.string :token 
  		t.string :token_secret
  		t.string :term
  		t.string :limit

  		t.string :postal_code, null: false

  		t.timestamps null: false
  	end
  end
end
