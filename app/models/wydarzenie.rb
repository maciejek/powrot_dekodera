class Wydarzenie < ActiveRecord::Base
	has_one:user_email, :class_name => 'Uzytkownik'
	has_one:projektID, :class_name => 'Projekt'
end
