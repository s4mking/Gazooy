class Page < ApplicationRecord

    before_create :set_slug
    
    def to_param
        slug
      end
    # def set_slug
    #   loop do
    #     # self.slug = SecureRandom.uuid
    #     # self.slug = 
    #     break unless Page.where(slug: slug).exists?
    #   end
    # end
    def set_slug
      self.slug = self.title.parameterize
    end
    def self.add_slugs
      update(slug: to_slug(name))
    end
end