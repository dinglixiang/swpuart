#encoding:utf-8
require 'i18n'
# RailsAdmin config file. Generated on March 26, 2013 13:35
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|
  
  I18n.default_locale = :en

  config.model Ckeditor::AttachmentFile do
    visible false
  end
  config.model Ckeditor::Picture do
    visible false
  end
  config.model Ckeditor::Asset do
    visible false
  end
  config.model Rich::RichFile do
    visible false
  end


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ["艺术教学实验中心", 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
   config.default_items_per_page = 10

  # Exclude specific models (keep the others):
  # config.excluded_models = ['Equipment', 'Notice', 'Site']

  # Include specific models (exclude the others):
  # config.included_models = ['Equipment', 'Notice', 'Site']

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:
  config.model User do
    #label_plural "管理账户"
      field :email do
        label "邮箱"
      end

      field :password do
        label "密码"
      end
      field :sign_in_count do
        label "累计登录次数"
      end
      field :last_sign_in_at do
        label "上次登录时间"
        strftime_format "%Y-%m-%d"
      end
      field :last_sign_in_ip do
        label "上次登录ip地址"
      end
      field :created_at do
        label "创建时间"
        strftime_format "%Y-%m-%d"
      end
  end

  config.model Notice do
    field :ntitle do
      label "标题"
    end
    field :nfilenumber do
      label "文档编号"
    end
    edit do
      field :ncontent, :rich_editor do
        label "内容"
        # html_attributes rows: 20, cols: 50
        #ckeditor true
      end
     end
    field :created_at do
        label "创建时间"
        strftime_format "%Y-%m-%d"
      end
  end

  config.model Site do
      field :sname do
        label "场地名称"
      end

      field :sdescribe do
          label "场地描述"
          html_attributes rows: 10, cols: 50
      end

      field :sstate ,:enum do
        label "场地状态"
        enum do
          ['空闲','忙碌']
        end
      end
      field :created_at do
        label "创建时间"
        strftime_format "%Y-%m-%d"
      end
  end

  config.model Equipment do
    field :ename do
      label "设备名称"
    end
    field :etype do
      label "设备类型"
    end
    edit do
      field :elist do
        label "设备清单"
        html_attributes rows: 10, cols: 50
      end
    end
    field :eprice do
      label "设备报价"
    end
    field :eremain do
      label "剩余量"
    end
  end

  config.model Eorder do
    field :eapplicant  do
      label "申请人"
    end
    field :etel  do
      label "联系电话"
    end
    field :eusetime  do
      label "使用时间"
    end
    field :eusereason  do
      label "借用原因"
    end
    field :ename  do
      label "设备名称"
    end
    field :eartopinion ,:enum do
      label "艺术教学实验中心意见"
      enum do
          ['同意','拒绝']
        end
    end
    field :ereturntime  do
      label "归还时间"
    end
    field :esituation  do
      label "设备归还检查情况"
    end
    field :ekeeper  do
      label "外借期间设备保管人"
    end
  end
  ###  Equipment  ###

  # config.model 'Equipment' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your equipment.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :ename, :string 
  #     configure :etype, :string 
  #     configure :elist, :text 
  #     configure :eprice, :integer 
  #     configure :eremain, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Notice  ###

  # config.model 'Notice' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your notice.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :ntitle, :string 
  #     configure :nfilenumber, :string 
  #     configure :ncontent, :text 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Site  ###

  # config.model 'Site' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your site.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :sname, :string 
  #     configure :sdescribe, :text 
  #     configure :sstate, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end

end
