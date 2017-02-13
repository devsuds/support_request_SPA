class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :title
      t.text :description
      t.boolean :is_open
      t.boolean :is_closed, default: false
      t.boolean :is_canceled, default: false
      t.text :comment
      t.datetime :due_date
      t.datetime :completion_date

      t.timestamps
    end
  end
end
