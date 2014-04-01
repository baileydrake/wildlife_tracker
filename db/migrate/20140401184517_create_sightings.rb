class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.belongs_to :species
      t.column :date, :date
      t.column :time, :time
      t.column :location, :string
    end
  end
end

