class CreateGados < ActiveRecord::Migration
  def change
    create_table :gados do |t|
      t.string :raca
      t.float :peso

      t.timestamps
    end
  end
end
