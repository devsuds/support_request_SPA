class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :title
      t.text :description
      t.boolean :is_open
      t.boolean :is_closed, default: false
      t.boolean :is_canceled, default: false
      t.datetime :due_date
      t.datetime :completion_date
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
