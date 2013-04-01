class Wiadomosc < ActiveRecord::Base
	has_one:nadawca, :class_name => 'Uzytkownik'
	has_one:odbiorca, :class_name => 'Uzytkownik'
end
