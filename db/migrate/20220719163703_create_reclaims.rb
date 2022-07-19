class CreateReclaims < ActiveRecord::Migration[7.0]
  def change
    create_table :reclaims do |t|
      t.string :phone
      t.string :best_moment

      t.timestamps
    end
  end
end
