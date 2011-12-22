class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :naziv
      t.date :datumOd
      t.date :datumDo

      t.timestamps
    end
  end
end
