class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.belongs_to :subject
      t.string :name
      t.string :permalink
      t.string :content
      t.integer :position
      t.boolean :visible

      t.timestamps
    end
  end
end
