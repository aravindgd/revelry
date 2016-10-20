class Owner < ActiveRecord::Base
  has_many :articles, inverse_of: :owner
  before_save :generate_slug

  private

  def generate_slug
    self.slug = name.parameterize
  end
end
