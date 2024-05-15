class UpdateTimeColumn < ActiveRecord::Migration[7.1]
  def change
    change_column :recordings, :time, :string
  end
end
