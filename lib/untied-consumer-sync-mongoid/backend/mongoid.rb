require "untied-consumer-sync"

module Untied
  module Consumer
    module Sync
      module Backend
        module Mongoid
          class ModelHelper
            include Sync::Backend::Base

            # Public: Finds the instance by the id.
            #
            # id - Integer that identifies the objects according to config file.
            #
            # Returns the instance (if exists in the database) or nil.
            def find(id)
              # Used where so no exception will be raised if the instance
              # does not exist.
              @model.unscoped.where(@model_data['mappings']['id'].to_sym => id).first
            end
          end
        end
      end
    end
  end
end
