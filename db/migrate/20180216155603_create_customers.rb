class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :password_digest

      t.timestamps
    end
  end
end
