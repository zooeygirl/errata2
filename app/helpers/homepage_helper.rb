<<<<<<< HEAD
module HomepageHelper
end
=======
module HomepageHelper


def resource_name
:user
end

def resource
@resource ||= User.new
end

def devise_mapping
@devise_mapping ||= Devise.mappings[:user]
end



	
end
>>>>>>> fc43d6ed5e3286748e0fc862c39bcb2746308c94
