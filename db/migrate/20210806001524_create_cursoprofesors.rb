class CreateCursoprofesors < ActiveRecord::Migration[6.1]
  def change
    create_table :cursoprofesors do |t|
      t.references :profesor, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
