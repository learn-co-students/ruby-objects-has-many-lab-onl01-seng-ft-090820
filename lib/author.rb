class Author 
  attr_accessor :posts
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = post.new(title)
    post.author = self
  end 
  
  def self.post_count
    post.all.count
  end 
end
    


