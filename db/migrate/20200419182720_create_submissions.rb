class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.text :title
      t.text :description
      t.text :contact

      t.timestamps
    end
  end
end
