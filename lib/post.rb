class Post 
  attr_accessor :title, :author
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
  end 
  
  def author_name
    author_name if author
  end
    
end