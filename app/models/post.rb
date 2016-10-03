class Post < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :taggings
  has_many :tags, through: :taggings

  def all_tags=datas
    self.tags =  datas.split(',').map do |data|
      Tag.find_or_create_by(name: data.strip)
    end
  end

  def all_tags
    self.tags.map(&:name).join(',')
  end

  def self.tagged_with(name)
    Tag.find_by(name: name).posts
  end
end
