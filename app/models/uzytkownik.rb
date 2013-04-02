class Uzytkownik < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :imie, :nazwisko
	has_many:Dyskusja
	has_many:Komentarz
	has_many:Plik
	has_many:Udostepnianie
	has_many:Wersja
	has_many:Wiadomosc
	has_many:Wydarzenie
	has_many:Post
end
