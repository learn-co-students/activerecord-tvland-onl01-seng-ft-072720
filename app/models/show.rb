class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.collect do |s|
            "#{s.first_name} #{s.last_name}"
        end

    end
end