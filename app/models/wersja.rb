class Wersja < ActiveRecord::Base
	has_one:autor, :class_name => 'Uzytkownik'
	has_one:plikID, :class_name => 'Plik'
end
