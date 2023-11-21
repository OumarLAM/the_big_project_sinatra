require 'csv'

class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        # Open the csv file in append mode
        CSV.open("./db/gossip.csv", "ab") do |csv|
            csv << [@author, @content]
        end
    end

    def self.all
        all_gossips = []

        CSV.read("./db/gossip.csv").each do |csv_line|
            all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end

        return all_gossips
    end

    def self.find(id)
        all_gossips = self.all
        index = id.to_i - 1

        if index >= 0 && index < all_gossips.length
            all_gossips[index]
        else
            nil
        end
    end
end