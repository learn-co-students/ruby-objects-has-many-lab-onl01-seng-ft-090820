class Author 
  
attr_accessor :name   

def initialize(name)
  @name = name 
end 

def add_post_by_title(title)
  post = Post.new(title)    #first of all babygirl, you had post.new lowercase, you ALWAYS capitalize here 
  add_post(post) 
end 

def add_post(post)
  post.author = self  #this post is lowercase because its an arguement 
end 

def posts 
  Post.all.select {|post| post.author == self} #post here has to be capital to grab from the class
end 

def self.post_count
  Post.all.size    #post here has to be capital to grab from the class
end   

end 