class FaqsController < Spree::BaseController
  helper 'spree/base'

  def index
    roles = current_user ? current_user.roles : [Role.find_by_name('user')]
    @categories = roles.collect { |r| r.question_categories }.flatten.uniq
  end

  def show
    @question = Question.find(params[:id])
  end

  def default_title
    I18n.t 'frequently_asked_questions'
  end
end
