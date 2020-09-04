class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    has_one :genre
    belongs_to :network

    def actors_list
        self.actors.collect {|actors| actors.full_name}
    end
end