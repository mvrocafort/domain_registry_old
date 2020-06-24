class AddRegistrationDateToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :registration_date, :datetime
  end
end
