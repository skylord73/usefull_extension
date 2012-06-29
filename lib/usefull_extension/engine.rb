module UsefullExtension
  class Engine < Rails::Engine

    #initializer 'usefull_table.helper' do |app|
    #  ActiveSupport.on_load(:action_controller) do
    #    include UsefullTableHelper
    #  end
    #  ActiveSupport.on_load(:action_view) do
    #    include UsefullTableHelper
    #  end
    #  
    #end
  end
end

require 'paperclip'
require 'prawn'
require 'acts_as_xls'
require "usefull_extension/renderer"
require "usefull_extension/base"
