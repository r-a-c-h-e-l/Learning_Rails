class CreatePublishes < ActiveRecord::Migration
  def change
    create_table :publishes do |t|
      t.text :title
      t.text :author
      t.text :content

      t.timestamps null: false
    end
  end
end
