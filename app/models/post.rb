class Post < ActiveRecord::Base
	has_one:autor, :class_name => 'Uzytkownik'
	has_one:dyskusjaID, :class_name => 'Dyskusja'
end
