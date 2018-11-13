class CreateHandies < ActiveRecord::Migration[5.2]
  def change
    create_table :handies do |t|
      t.string :name
      t.string :username

      t.timestamps
    end
  end
end
