class AddLanguageToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :Language, :string
  end
end
