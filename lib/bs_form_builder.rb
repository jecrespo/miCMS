class BsFormBuilder < ActionView::Helpers::FormBuilder
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::CaptureHelper
    include ActionView::Helpers::TextHelper
  
    attr_accessor :output_buffer

    #TEXT FIELD
    def text_field(attribute, options={})
        #metemos un label que lo sacamos del formulario
        options[:label] ||=attribute
        #Componemos nosotros un label si no lo tiene
        label_text ||= options.delete(:label).to_s.titleize
        #Ponemos una clase por defecto
        options[:class] ||= "form-control"
        #ponemos el small que sea
        options[:small] 
        
        #Componemos el div a la Bootstrap
        todoslosfields do
            
        label(attribute, label_text) +  
            super(attribute, options) +
        content_tag(:small, options[:small])            
        end
    end

    #NUMBER FIELD
    def number_field(attribute, options={})
        options[:label] ||=attribute
        label_text ||= options.delete(:label).to_s.titleize
        options[:class] ||= "form-control"
        options[:small] 
        
        todoslosfields do

        label(attribute, label_text) +  
            super(attribute, options) +
        content_tag(:small, options[:small])            
        end
end

def todoslosfields(options={}, &block)
    content_tag(:div, capture(&block), class: "form-group")
end


    #BUTTON SUBMIT

    def submit(text, options={})
    options[:class] ||= "btn btn-primary"
        super(text, options) 
    end


end