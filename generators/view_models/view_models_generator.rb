class ViewModelsGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      
      # Check for class naming collisions.
      #
      m.class_collisions "ViewModels::#{class_name}"
      
      # ViewModels
      #
      m.directory 'app/view_models'
      m.template "view_models/view_model.rb", "app/view_models/#{file_name}.rb"
      
      # Specs
      #
      m.directory "spec/app/view_models"
      m.template "spec/view_model_spec.rb", "spec/app/view_models/#{file_name}_spec.rb"
      
      # Views
      #
      m.directory "app/views/view_models"
      m.directory "app/views/view_models/#{file_name}"
      m.template "views/_empty.html.haml", "app/views/view_models/#{file_name}/_list_item.html.haml"
      
      # Copy collection views.
      #
      m.directory "app/views/view_models/collection"
      m.file "views/view_models/collection/_collection.html.haml", "app/views/view_models/collection/_collection.html.haml"
      m.file "views/view_models/collection/_collection.text.erb",  "app/views/view_models/collection/_collection.text.erb"
      m.file "views/view_models/collection/_list.html.haml",       "app/views/view_models/collection/_list.html.haml"
      m.file "views/view_models/collection/_list.text.erb",        "app/views/view_models/collection/_list.text.erb"
      m.file "views/view_models/collection/_pagination.html.haml", "app/views/view_models/collection/_pagination.html.haml"
      m.file "views/view_models/collection/_pagination.text.erb",  "app/views/view_models/collection/_pagination.text.erb"
      m.file "views/view_models/collection/_table.html.haml",      "app/views/view_models/collection/_table.html.haml"
      m.file "views/view_models/collection/_table.text.erb",       "app/views/view_models/collection/_table.text.erb"
      
      # Show README.
      #
      m.readme "README"
      
      # # View template for each action.
      # actions.each do |action|
      #   path = File.join('app/views', class_path, file_name, "#{action}.html.erb")
      #   m.template 'view.html.erb', path,
      #     :assigns => { :action => action, :path => path }
      
    end
  end

  def file_name
    "create_users"
  end

end