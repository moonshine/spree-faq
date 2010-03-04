class CreateQuestionCategoriesRoles < ActiveRecord::Migration
  def self.up
    create_table :question_categories_roles, :id => false do |t|
      t.references :question_category
      t.references :role
    end
  end

  def self.down
    drop_table :question_categories_roles
  end
end
