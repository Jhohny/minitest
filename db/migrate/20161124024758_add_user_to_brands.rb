class AddUserToBrands < ActiveRecord::Migration[5.0]
  def change
    add_reference :brands, :user, foreign_key: true
  end
end
