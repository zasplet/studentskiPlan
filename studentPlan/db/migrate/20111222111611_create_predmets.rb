class CreatePredmets < ActiveRecord::Migration
  def change
    create_table :predmets do |t|
      t.string :naziv
      t.string :predavatelj
      t.date :datumOd
      t.date :datumDo
      t.time :cas
      t.string :opis
      t.integer :semester_id

      t.timestamps
    end
  end
end
