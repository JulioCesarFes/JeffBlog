class CreateWriterPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :writer_posts do |t|

      t.timestamps
    end
  end
end
