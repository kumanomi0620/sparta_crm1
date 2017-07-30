class AddFamilyNameAndGivenNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :family_name, :string
    add_column :users, :given_name, :string
  end
end
