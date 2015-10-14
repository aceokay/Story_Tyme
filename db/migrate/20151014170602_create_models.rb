class CreateModels < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :creator, :string

      t.timestamps
    end
    create_table :additions do |t|
      t.column :body, :string
      t.column :author, :string
      t.column :story_id, :integer
      t.column :image_id, :integer

      t.timestamps
    end
    create_table :images do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
