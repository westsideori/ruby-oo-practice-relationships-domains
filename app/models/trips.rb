class Trip
    attr_accessor :listing, :guest, :date

    @@all = []

    def initialize(listing, guest, date)
        @listing = listing
        @guest = guest
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end


end