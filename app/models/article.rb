# coding: utf-8
class Article < ActiveRecord::Base
  attr_accessible :body, :title, :category_id

  validates :title, presence: true

  belongs_to :category
end
