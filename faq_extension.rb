class FaqExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://www.spinlocksolutions.com"

  def activate
    Role.class_eval do
      has_and_belongs_to_many :question_categories
    end

    Admin::ConfigurationsController.class_eval do
      before_filter :add_faq_links, :only => :index
      def add_faq_links
        @extension_links << {:link => admin_question_categories_path, 
                             :link_text => "Frequently Asked Questions", 
                             :description => "Add,edit or remove FAQ categories and questions"}
      end
    end
  end
end
