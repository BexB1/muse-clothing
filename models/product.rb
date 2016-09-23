class Product

  attr_reader :id
  attr_accessor :name, :picsmall, :piclarge, :piclargetwo

  @@id = 1

  @@products = []

  def initialize(name, picsmall, piclarge, piclargetwo)
    @id = @@id
    @name = name
    @picsmall = picsmall
    @piclarge = piclarge
    @piclargetwo = piclargetwo

    @@id += 1

    @@products << self
  end

  def self.all
    @@products
  end

  def self.find_by_id(id)
    @@products.find { |product| product.id == id.to_i }
  end

  # def self.update_by_id(id, data)
  #   book = find_by_id(id)
  #   book.title = data[:title]
  #   book.author = data[:author]
  #   book.genre = data[:genre]

  #   book
  # end

  # def self.delete_by_id(id)
  #   book = find_by_id(id)
  #   @@books.delete(book)
  # end 

end