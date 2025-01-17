class Comment
    @@comments = []
    attr_accessor :content, :user_id, :post_id, :id
  
    def initialize(attributes = {})
      @id = @@comments.size + 1
      @content = attributes[:content]
      @user_id = attributes[:user_id]
      @post_id = attributes[:post_id]
    end
  
    def save
      @@comments << self
    end
  
    def self.all
      @@comments
    end
  
    def self.find_by_post_id(post_id)
      @@comments.select { |comment| comment.post_id == post_id }
    end

    
  end  