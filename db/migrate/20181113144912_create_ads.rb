class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.integer :service_id
      t.integer :user_id
      t.integer :handy_id
      t.integer :rating

      t.timestamps
    end
  end
end
