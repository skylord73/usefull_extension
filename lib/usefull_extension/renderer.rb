require "action_controller"
require "action_view/template"

Mime::Type.register("application/pdf", :pdf) unless Mime::Type.lookup_by_extension(:pdf)

ActionController::Renderers.add :pdf do |obj, options|
  options ||= {}
  filename = options[:filename] || "file.pdf"
  #Rails::logger.info("Renderer(xls) options=#{options.inspect}, obj=#{obj.inspect}")
  if obj.respond_to?(:to_pdf)
    #No template, must render obj
    send_data obj.to_xls, :type => Mime::PDF, :filename => filename
  else
    send_file render_to_string(options[:template]), :type => Mime::PDF, :disposition => "attachment; filename=#{filename}"
  end
end

module ActsAsXls
  #Render a template like *.[xls|xlsx].maker
  #the template is evaluated as a ruby expression.
  #you can use package (xlsx) or book (xls) inside the template to create an excel file 
  #template return tempfile path that is rendered by the renderer.
  module MAKER
    module Proxy
      def pdf
          @pdf ||= Prawn::Document.new(:page_size => "A4", :margin => [10.28,10,10,10])
      end
        
      def render_pdf
        @pdf.render_file @temp.path  if @pdf
      end
      
    end

  end
end

#ActionView::Template.register_template_handler :maker, UsefullExtension::MAKER