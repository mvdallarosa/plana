class Category < ApplicationRecord
  has_many :items
  validates :name, presence: true

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
