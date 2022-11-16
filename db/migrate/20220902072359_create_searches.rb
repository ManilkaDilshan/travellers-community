class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :location
      t.date :visited_date
      t.string :gender

      t.timestamps
    end
  end
end
