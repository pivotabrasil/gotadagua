class AddSupportsCountToMotives < ActiveRecord::Migration
  def change
    add_column :motives, :supports_count, :integer, default: 0
  end
end
