class CreateDogos < ActiveRecord::Migration[6.1]
  def change
    create_table :dogos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
