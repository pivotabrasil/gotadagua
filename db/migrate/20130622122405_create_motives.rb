class CreateMotives < ActiveRecord::Migration
  def change
    create_table :motives do |t|
      t.belongs_to :tag, index: true
      t.text :description

      t.timestamps
    end
  end
end
