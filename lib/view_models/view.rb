module ViewModels
  # View model specific view.
  #
  class View < ActionView::Base
    
    # Include the helpers from the view model.
    #
    def initialize controller, master_helper_module
      singleton_class.send :include, master_helper_module
      #super nil, {}, controller
      super controller.class.view_paths, {}, controller
    end
    
    #
    #
    def render_with options
      render options.to_render_options
    end

    # Finds the template in the view paths at the given path, with its format.                                         
    #
    # def find_template path                                                                                             
    #       view_paths.find_template path, template_format rescue nil                                                        
    #     end
    # not needed anymore
    
  end
end