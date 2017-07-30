class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :family_name, null: false, length: { maximam: 20}
      t.string :given_name,  null: false, length: { maximam: 20}
      t.string :email, null: false

      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
