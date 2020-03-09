class AddsMembershipsToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :membership_students, :string
    add_column :clubs, :membership_external, :string
  end
end
