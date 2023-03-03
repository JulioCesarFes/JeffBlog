class CreateWriterCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :writer_categories do |t|

      t.timestamps
    end
  end
end
