class PostsController < ApplicationController # yeah, we need a more complex route here dude. We need something like users/1/posts/ so that the index is there.
    # So how do we make the routea     #got it
    def index 
        user = User.find(params[:user_id])
        @posts = user.posts
    end
    
    def new
        if user_signed_in?
            @post = current_user.posts.build 
        end
    end
#    hola, you there?
    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            flash[:success] = "Wow, you did it."
            redirect_to new_post_path # dude is it working? No it says no Brace yourself the winter is here? That was persisted to database.Redirect didn't work. now it will work. done?Wow, you did it.
        else
            flash[:danger] = @post.errors.messages
            redirect_to new_post_path
        end
    end
    
    private
    
    def post_params # This function is needed coz we cannot directly access params[:post]. This is for security reasons. THis feature is called Strong parameters or parameter whitelisting. What happens is certain users can use curl or some other http tool in their terminal and send malicious data in the post parameter. So accessing it directly is certainly not good. Which is why we 'permit'  only certain parts that we want to access with a private function. That function implicitly returns whatever is there in the last line. So no return statement.
        params.require(:post). permit(:content)    
    end
end 
# comprehend what is going on? reload now Ok
# Yes. are you here?
# you didnt create new. I created. So new view is in posts/new.html.erb
# So in the new function we want to create a new object only if there is a signed in user.  Devise provides a method called user_signed_in? for this
# Just read its docs. So we do something like
# if signed in 
#  new post object with id of user who is logged in
# end
# k? create it. Ok where did you create it? create what? I did not create. You write the new function is what I am asking you to do.
#
# dude you need to create a new instance variable, that we can use in the posts view
# current_user will return logged in user. I just gave you syntax for building in telegram. open up new.html.erb



