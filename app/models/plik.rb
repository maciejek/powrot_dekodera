class Plik < ActiveRecord::Base
	has_one:user_email, :class_name => 'Uzytkownik'
	has_many:Wersja
	has_many:Komentarz
end
