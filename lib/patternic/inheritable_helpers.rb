module Patternic
  module InheritableHelpers
    def raise_if_not_implemented
      raise MethodNotImplementedError, "#{self.class.name}##{caller_locations[0].label} is not implemented!"
    end
  end
end