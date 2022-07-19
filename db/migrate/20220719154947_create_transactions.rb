class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :language
      t.string :first_homeowner
      t.string :second_homeowner
      t.string :third_homeowner
      t.string :type_property
      t.boolean :owner
      t.string :purchase_date
      t.integer :property_value
      t.string :lot_number
      t.string :adress
      t.string :city
      t.string :postal_code
      t.boolean :bound_water
      t.boolean :municipial_sewer
      t.boolean :issued
      t.boolean :denied
      t.text :note
      t.string :agent_name
      t.string :agent_email

      t.timestamps
    end
  end
end
