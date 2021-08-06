class CreateProfesors < ActiveRecord::Migration[6.1]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.references :horario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
