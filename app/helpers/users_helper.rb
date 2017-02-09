module UsersHelper
    def full_name(user)
        name = user.first_name + ' '+user.last_name
        return name
    end
end
