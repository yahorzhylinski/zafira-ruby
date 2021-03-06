# frozen_string_literal: true

module Zafira
  module Api
    module User
      class Create
        class RunOwnerParams
          def initialize(environment)
            self.environment = environment
          end

          def construct
            {
              username: environment.ci_username,
              email: environment.ci_user_email,
              first_name: environment.ci_user_first_name,
              last_name: environment.ci_user_last_name
            }
          end

          private

          attr_accessor :environment
        end
      end
    end
  end
end
