class AddCreatorIdToMotives < ActiveRecord::Migration
  def change
    add_column :motives, :creator_id, :integer
    add_index :motives, :creator_id
  end
end
