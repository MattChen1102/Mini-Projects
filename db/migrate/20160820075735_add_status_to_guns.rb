class AddStatusToGuns < ActiveRecord::Migration[5.0]
  def change
  	add_column :guns, :date, :date
  	add_column :guns, :datetime , :datetime	
  end
end
