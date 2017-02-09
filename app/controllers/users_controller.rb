class UsersController < ApplicationController
  def home
    # add core home functionality here
  end

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
end
# so here look at the index
# then look at the index.html.erb for this controller
#if you dont understand anything tell me. <%= debug(@users.inspect)%>?/???
#ok got it
# understood every bit? okay the debug thing simply displays the object in yaml form. That cute little thing. !ruby............. in the browser. The debug function is used so that developers have an idea what's going on with the data while writing code and checking live.
# other than that, the full_name function is a helper function. It can be found in the app/helpers/users_helper.rb. I wrote it so that, the first name and last name can easily be put together by calling a function instead of concating strings every time.
# ok so this thing here displays all the users and links to their profiles?
# yes, but you do know the controller and method right? It is linking to the show method of the users controller with the id as a parameter. Now the show method will find the @user and display it accordingly.
# Now, let us check this in browser. k? k