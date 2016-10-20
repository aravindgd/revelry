class Article < ActiveRecord::Base
  belongs_to :owner, inverse_of: :articles
  delegate :name, to: :owner, prefix: true
end
