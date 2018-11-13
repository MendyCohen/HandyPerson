class CreateHandyServices < ActiveRecord::Migration[5.2]
  def change
    create_table :handy_services do |t|
      t.integer :handy_id
      t.integer :service_id

      t.timestamps
    end
  end
end
