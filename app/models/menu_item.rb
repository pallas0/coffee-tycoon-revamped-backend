class MenuItem < ActiveRecord::Base
    has_many :orders
    belongs_to :store
    belongs_to :item
    has_many :customers, through: :orders

    def self.available_hot
        all.filter {|menuitem| menuitem.item.hot && menuitem.quantity > 0}
    end

    def self.available_cold
        all.filter {|menuitem| !menuitem.item.hot && menuitem.quantity > 0}
    end

    def self.hot_drinks
        all.filter {|menuitem| menuitem.item.hot}
    end

    def self.cold_drinks
        all.filter {|menuitem| !menuitem.item.hot}
    end
    
    def sell_price
        Item.find(self.item_id).buy_price * 1.5
    end

    def item_bought
        self.update(quantity: self.quantity - 1)
    end
end