class AddCountryToDogs < ActiveRecord::Migration[7.1]
  def change
    add_reference :dogs, :country, null: false, foreign_key: true
  end
end
