class CreatePart4s < ActiveRecord::Migration[6.0]
  def change
    create_table :part4s do |t|
      t.decimal :ans1
      t.decimal :ans2
      t.decimal :ans3
      t.decimal :ans4
      t.decimal :ans5
      t.decimal :ans6
      t.decimal :ans7
      t.decimal :ans8
      t.decimal :ans9
      t.decimal :ans10

      t.timestamps
    end
  end
end
