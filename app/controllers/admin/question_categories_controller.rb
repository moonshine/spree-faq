class Admin::QuestionCategoriesController < Admin::BaseController
  helper 'spree/base'
  resource_controller
  before_filter :set_roles, :only => :update

  def set_roles
    object.role_ids = [] unless params[:question_category].key? :role_ids
  end

  new_action.response do |format|
    format.html {render :action => :new, :layout => false}
  end
  update.response do |format|
    format.html { redirect_to admin_question_categories_path }
  end
  create.response do |format|
    format.html { redirect_to edit_admin_question_category_path(@question_category) }
  end
end
