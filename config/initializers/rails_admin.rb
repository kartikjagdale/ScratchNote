require Rails.root.join('lib/rails_admin_scratch_upload.rb')
RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    scratch_upload do 
      visible do
        bindings[:abstract_model].model.to_s == 'Scratch'
      end
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # config.navigation_static_links = {
  #   'Scratch Upload' => "/rails_admin/payment/0/payment_refund"
  # }

end
