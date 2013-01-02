require 'mongoid'

module SetupModels
  Mongoid.configure do |config|
    config.connect_to("dl_spec")
  end

  # Models
  class ::User
    include ::Mongoid::Document
    include Untied::Consumer::Sync::Zombificator::ActsAsZombie

    field :my_id, :type => String
    field :login, :type => String
    field :name, :type => String
    field :zombie, :type => String, :default => true
  end
end
