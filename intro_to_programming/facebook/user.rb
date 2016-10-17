#Facebook User Account
class User
	
	#Intansiate class
	def initialize (username,password,email,dob,telephone)
		@username = username
		@pwd      = password
		@email    = email
		@Dob      = dob
		@tel      = telephone
		@friends  = 0
		@friend_name = Array.[]
		@time      = Time.new
		@status    = {}
	end

	def login(username,password)
		if username = @username && password = @password
      		
      		return true
    	else
      		return false
  		end
  	end


	def add_profile(education, study)
		@education = education
		@study     = study

		return @username, @Dob, @education,@study


	end
	def display_profile()
		return add_profile(@education,@study)

	end
	def add_friend(friend)
		
		@friend_name<<friend

		@friends +=1
		
		return @friends, @friend_name 

	end

	def show_all_details()#to  be changed
		return display_profile()
		return @friend_name, @friends
	end
	def update_status(status)
		@time   = Time.now
		@tt     = @time.strftime("%A-%m %H:%M")
		@status = {@tt => status}

		return @status		

	end
	def show_status()
		puts @status
	end

	def show_uname(username) #shows Username
		return @username
	end


	def comment (comment) #enable comments
		@comment  = comment
		@user = show_uname(@username)

		puts @username
		puts @comment

		return @comment
	end
end

user1=User.new("Andrew","mango","and@re.com","1234","123456789")
user1.login("Andrew", "mang")
=begin
user1.add_profile("shule","chuo")
user1.add_friend("yaw")
user1.add_friend("mike")
user1.show_all_details()
user1.update_status("testing this")
user1.show_status()
puts user1.comment("Mic Check")
=end








