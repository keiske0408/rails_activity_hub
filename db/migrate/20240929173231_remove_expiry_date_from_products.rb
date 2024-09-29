class RemoveExpiryDateFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :expiry_date, :datetime
  end
  end

