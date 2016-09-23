class Review

  attr_reader :id
  attr_accessor :text, :username

  @@id = 1

  @@reviews = []

  def initialize(text, username)
    @id = @@id
    @text = text
    @username = username

    @@reviews << self
  end

  def self.all
    @@reviews
  end

  def self.find_by_id(id)
    @@reviews.find { |review| review.id == id.to_i }
  end

  def self.update_by_id(id, data)
    review = find_by_id(id)
    review.text = data[:text]
    review.username = data[:username]

    review
  end

  def self.delete_by_id(id)
    review = find_by_id(id)
    @@reviews.delete(review)
  end 

end