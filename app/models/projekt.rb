class Projekt < ActiveRecord::Base
	has_many:Dyskusja
	has_many:Wydarzenie
	has_many:Plik
end
