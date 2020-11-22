class Guest
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def listings
        trips.map {|trip| trip.listing}
    end

    def trip_count
        trips.count
    end

    def self.pro_traveller
        info_hash = Hash.new(0)
        top_guests = []
        all_guests = Trip.all.collect {|trip| trip.guest}
        all_guests.each {|guest| info_hash[guest] += 1}
        info_hash.each do |guest, trips|
            if trips > 1
                top_guests << guest
            end
        end
        top_guests
    end

    def self.find_all_by_name(name)
        @@all.select {|guest| guest.name == name}
    end


end


