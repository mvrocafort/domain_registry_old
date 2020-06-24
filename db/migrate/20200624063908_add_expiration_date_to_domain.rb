class AddExpirationDateToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :expiration_date, :datetime
  end
end
