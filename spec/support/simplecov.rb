require 'simplecov'
require 'coveralls'

SimpleCov.start do
  minimum_coverage 100
  add_filter 'support'
end

SimpleCov.formatters = [SimpleCov::Formatter::HTMLFormatter, Coveralls::SimpleCov::Formatter]
