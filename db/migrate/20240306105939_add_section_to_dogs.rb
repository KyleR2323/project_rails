class AddSectionToDogs < ActiveRecord::Migration[7.1]
  def change
    add_reference :dogs, :section, null: false, foreign_key: true
  end
end
