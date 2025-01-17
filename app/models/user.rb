 # app/models/user.rb (in-memory)
class User
    attr_accessor :id, :username, :email, :password
  
    def initialize(username, email, password)
      @id = SecureRandom.uuid  # Generate a unique ID (using the uuid gem or a simple random generator)
      @username = username
      @email = email
      @password = password
    end
  
    # In-memory users hash
    def self.all
      @users ||= []
    end
  
    def self.find_by_email(email)
      self.all.find { |user| user.email == email }
    end
  
    def self.create(username, email, password)
      user = User.new(username, email, password)
      self.all << user
      user
    end
  
    def authenticate(password)
      self.password == password
    end
  end  