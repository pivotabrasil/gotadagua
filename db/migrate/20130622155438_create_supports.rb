class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.belongs_to :user, index: true
      t.belongs_to :motive, index: true

      t.timestamps
    end
  end
end
