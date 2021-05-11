class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address_line
    	t.string :street
    	t.string :land_mark
    	t.string :city
    	t.string :state
    	t.string :pincode
    	
      t.timestamps
    end
  end
end
