class AddRankIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :rank_id, :integer
  end
end
