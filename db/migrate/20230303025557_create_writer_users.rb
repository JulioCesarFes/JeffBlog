class CreateWriterUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :writer_users do |t|

      t.timestamps
    end
  end
end
