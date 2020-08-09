require "patternic/version"

module Patternic
  autoload :InheritableHelpers, 'patternic/inheritable_helpers'

  class Error < StandardError; end
  class MethodNotImplementedError < Error; end
end
