class AddFacilityPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facility_phone, :text
  end
end
