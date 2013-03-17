class User 
	attr_accessor :name, :password, :email, :current_story, :current_node

	def initialize (attributes)
		@name = attributes[:name]
		@email = attributes[:email]
		@password = attributes[:password]
	end

	def formated_email
		return "#{@name} <#{@email}>}"
	end

	def start_story (story = {})
		@current_story = story[:story_name]
		@current_node = story[:current_node]
	end
end

user = User.new(name:"zip", email:"bob@zap.com")

puts user.formated_email

