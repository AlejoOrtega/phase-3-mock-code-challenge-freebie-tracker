class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find_by(item_name: item_name)? true : false
    end

    def give_away(dev, freebie)
        if(self.received_one?(freebie.item_name))
            freebie.update(dev_id: dev.id)
            "The #{freebie.item_name} has been gifted to #{freebie.dev.name}!"
        else
            "#{self.name}, you dont own this freebie!"
        end
    end
end
