class Listing
    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        @@all.select {|listing| listing.city == city}
    end

    def self.most_popular
        all_listings = Trip.all.collect {|trip| trip.listing}
        all_listings.max_by {|listing| all_listings.count(listing)}
    end

        

end