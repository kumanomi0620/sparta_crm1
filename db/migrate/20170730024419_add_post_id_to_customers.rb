class AddPostIdToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :post, foreign_key: true
  end
end
