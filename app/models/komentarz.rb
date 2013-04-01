class Komentarz < ActiveRecord::Base
	has_one:user_email, :class_name => 'Uzytkownik'
	has_one:plikID, :class_name => 'Plik'
end
