class Category < ApplicationRecord
  has_many :items
  validates :name, presence: true


#   category_attributes = [
#   { name: "shop responsibly"},
#   { name: "plant-based recipes"},
#   { name: "package-free shops"},
#   { name: "organic restaurants"},
#   { name: "seasonal foods"},
#   { name: "farmers markets"}
# ]
  def file_index
    case name
      when "shop responsibly"
        return 'categories/shops_index'
      when "plant-based recipes"
        return 'categories/recipes_index'
      else #still need to add the other categories in here and will probably move in the data base
        return "TRY TO BUY LESS!"
    end
  end

  def css_class
    case name
      when "shop responsibly"
        return ".shops-in-here"
      when "plant-based recipes"
        return ".recipes-in-here"
      else #still need to add the other categories in here and will probably move in the data base
        return "YUMMMYYY"
      end
  end

end
