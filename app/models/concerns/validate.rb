module Validate
  extend ActiveSupport::Concern
  
  included do
    validates :title, :body, presence: true 
  end

  class_methods do
  end

end