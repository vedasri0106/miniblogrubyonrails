class Post
    attr_accessor :title, :body
  
    # Create a class variable to hold posts in memory
    @posts = []
  
    def initialize(title:, body:)
      @title = title
      @body = body
    end
  
    # Class method to return all posts
    def self.all
      @posts
    end
  
    # Class method to add a post
    def self.create(title:, body:)
      post = new(title: title, body: body)
      @posts << post
      post
    end
  

    def save
        self.class.all << self

      end
end  