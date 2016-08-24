class AddFacilityAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facility_address, :text
  end
end
