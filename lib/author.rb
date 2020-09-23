class Author 
  
  @@post_count = 0
  
  attr_accessor :name
  
   @@post_count = 0
   
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(posts)
    posts.author = self 
    @@post_count += 1
  end 
  
  
  def add_post_by_title(post_title)
    posts = Post.new(post_title)
    add_post(posts)
    @@post_count += 1
  end 
  
  def self.post_count 
    @@post_count 
  end 
  
end