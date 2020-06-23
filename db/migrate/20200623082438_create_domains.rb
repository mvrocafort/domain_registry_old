class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.string :domain_name
      t.string :period
      t.string :contacts

      t.timestamps
    end
  end
end
