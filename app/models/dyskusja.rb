class Dyskusja < ActiveRecord::Base
	has_one:user_email, :class_name => 'Uzytkownik'
	has_one:projektID, :class_name => 'Projekt'	
	has_many:post
end
