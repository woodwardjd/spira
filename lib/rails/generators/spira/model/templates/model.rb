class <%= class_name %> < Spira::Base
  default_vocabulary URI.new('http://<%= app_name || 'example' %>.com/ont/1.0/')
  base_uri 'http://<%= app_name || 'example' %>.com/<%= class_name %>/'

<% attributes.each do |attribute| -%>
  property :<%= attribute.name %>
<% end -%>

end
