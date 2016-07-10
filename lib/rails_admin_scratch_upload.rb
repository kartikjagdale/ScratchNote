require 'rails_admin/config/actions'  
require 'rails_admin/config/actions/base'

module RailsAdminScratchUploadAction; end

module RailsAdmin
  module Config
    module Actions
      class ScratchUpload < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :collection? do 
          true
        end

        register_instance_option :route_fragment do
            'scratch_upload'
        end

        register_instance_option :http_metods do
          %i(get put patch)
        end

        register_instance_option :visible? do
          true
        end

        register_instance_option :controller do
            proc do 
              if request.get?
                render @action.template_name, layout: false
              else
                # all your code that does the work
                flash.now[:notice] = 'Success'
                back_or_index
              end
            end
        end

        register_instance_option :link_icon do 
          'icon-envelope'
        end


      end
    end
  end
end

