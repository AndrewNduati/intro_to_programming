#comments and likes

class Comment < User
	def initialize (username,comment)
		@username = username
		@comment  = comment
		@time = Time.new
		@count = 0
	end

	def show_comment(username)
		@username = show_uname(username)
		@comment  = comment()
		return @username, @comment
	end

	def post_comment(username, comment, time)
		@username = username
		@comment  = comment
		@time     =  time
		@tt       = @time.strftime("%A-%m %H:%M")
		@count    +=1
		return @username, @comment, @tt, @count

	end
	


end