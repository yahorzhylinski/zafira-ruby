# frozen_string_literal: true

module Zafira
  module Handlers
    module FinishedTestCase
      module Cucumber
        class Skipped < Base
          def status
            Models::TestCase::Status::SKIPPED
          end

          def message
            ''
          end
        end
      end
    end
  end
end
