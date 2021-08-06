class CreateHorarios < ActiveRecord::Migration[6.1]
  def change
    create_table :horarios do |t|
      t.string :horario

      t.timestamps
    end
  end
end
