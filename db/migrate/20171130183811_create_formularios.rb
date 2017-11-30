class CreateFormularios < ActiveRecord::Migration[5.1]
  def change
    create_table :formularios do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
