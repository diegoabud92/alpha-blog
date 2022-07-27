# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Para que ante un validation error, no me agregue la clase "field_with_errors" en el input con error
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
end
