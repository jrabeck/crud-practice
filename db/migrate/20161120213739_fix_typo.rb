class FixTypo < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :discription, :description
  end
end
