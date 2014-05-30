RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['Feedback']
    end
    export
    bulk_delete
    show
    edit do
      except ['Payment', 'Feedback']
    end
    delete
    show_in_app do
      except ['Payment','Feedback','Page']
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    # Authenticate admin only
    config.authenticate_with do
      warden.authenticate! scope: :admin
    end

    config.current_user_method &:current_admin
  end

end
