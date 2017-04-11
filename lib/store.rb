class Store < ActiveRecord::Base
  validates_length_of :name, minimum: 3
  validates_numericality_of :annual_revenue
  validate :men_or_women
  has_many :employees

  def men_or_women
    if !(mens_apparel) && !(womens_apparel)
      errors.add(:must_be_men_or_women, "Store must carry at least one of the men's or women's apparel")
    end
  end
end
