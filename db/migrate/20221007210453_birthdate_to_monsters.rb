class BirthdateToMonsters < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :birthdate, :date
  end
end
