class Plik < ActiveRecord::Base
	has_one:user_email, :class_name => 'Uzytkownik'
	has_many:Wersja
	has_many:Komentarz
	
	attr_accessible :idPlik, :user_email, :projektID, :dataGodzina, :publiczny, :tylkoOdczyt, :sciezka
	mount_uploader :sciezka, PlikUploader
end
