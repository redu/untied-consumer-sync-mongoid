require 'mongoid'

module SetupModels
  Mongoid.configure do |config|
    config.connect_to("untied_consumer_mongoid_spec")
  end

  # Models
  class ::User
    include ::Mongoid::Document
    include Untied::Consumer::Sync::Zombificator::ActsAsZombie

    field :my_id, :type => String
    field :login, :type => String
    field :name, :type => String
    field :zombie, :type => Boolean, :default => true

    attr_accessible :my_id, :login, :name
  end
end
