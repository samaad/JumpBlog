class AddSlugAndBlurbToPages < ActiveRecord::Migration
  def change
    add_column :pages, :slug, :string
  #  add_column :pages, :blurb, :string
  end
end
