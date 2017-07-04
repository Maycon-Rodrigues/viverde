RailsAdmin.config do |config|

  config.main_app_name = ['Clínica Viverde', '']

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

## == Modo de Visualização do Dashboard == 
# Cliente
config.model Client do
  navigation_icon 'icon-book'
  
  create do
    field :name, :string do
      required true
    end
    field :document, :integer do
      required true
    end
    field :email
    field :phone
    field :notes
    field :status do
      required true
    end
  end

  edit do
    field :name
    field :document
    field :email
    field :phone
    field :notes
    field :status
  end

  list do
    field :name
    field :document
    field :email
    field :phone
    field :notes
    field :status
  end

end

# Serviço
config.model Service do
  navigation_icon 'icon-wrench'
  
  create do
    field :name
  end
  
  list do 
    field :nome
  end
  
end

# Agenda
config.model Schedule do
  navigation_icon 'icon-calendar'
  
  list do
    exclude_fields :created_at, :updated_at, :id
  end
  
end

# Usuario
config.model User do
  navigation_icon 'icon-user'
  
  create do
    exclude_fields :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :sign_in_count, :remember_created_at
  end
  
  edit do
    exclude_fields :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :sign_in_count, :remember_created_at
  end
  
end

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
