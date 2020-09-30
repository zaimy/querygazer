module Querygazer
  module ExampleGroupExt
    def query(sql)
      cli = metadata[:described_class].cli
      Query.new(sql: sql, cli: cli)
    end
  end
end

class RSpec::Core::ExampleGroup
  extend Querygazer::ExampleGroupExt
  include Querygazer::ExampleGroupExt
end
