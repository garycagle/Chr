class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :detail
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
