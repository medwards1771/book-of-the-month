class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors

  def author
    authors.first
  end

  def author=(author)
    authors << author
  end
end
