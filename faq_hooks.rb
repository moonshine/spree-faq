class FaqHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_configurations_menu, 'admin/faq_link'
end
