class CreateWebpages < ActiveRecord::Migration[5.1]
  def change
    create_table :webpages do |t|
      t.string :title
      t.string :description
      t.string :body
      t.string :author
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
