class FaqExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://www.spinlocksolutions.com"

  def activate
    Role.class_eval do
      has_and_belongs_to_many :question_categories
    end
  end
end
