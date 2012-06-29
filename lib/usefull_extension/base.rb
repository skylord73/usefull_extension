#require "acts_as_xls/xls"

module UsefullExtension
  module Base
    def self.included(base) # :nodoc:
      base.send :extend, ClassMethods
      base.send :include, InstanceMethods
    end
    
    #Instance methods for the mixin
    module InstanceMethods
      #def to_xls(options = {})
      #  ActsAsXls::Xls.to_xls(self,options)
      #end
    end
    
    #ToDo
    #*  
    #*  

    # Class methods for the mixin
    module ClassMethods
      #def new_from_xls(options = {})
      #  ActsAsXls::Xls.new_from_xls(self,options)
      #end
    end
  end
end

require 'active_record'
ActiveRecord::Base.send :include, UsefullExtension::Base
ActiveRecord::Relation.send :include, UsefullExtension::Base
Array.send :include, UsefullExtension::Base