class Cycle < ApplicationRecord
  has_many :components, dependent: :destroy

  accepts_nested_attributes_for :components, allow_destroy: true

  def impects
    Impect.joins(component: %i[cycle subcomponents]).where('components.cycle_id = (?)', id)
  end

  def toatal_impects
    impects.count
  end

  def water_use_sum
    impects.pluck(:water_use).compact.sum
  end

  def climate_change_sum
    impects.pluck(:climate_change).compact.sum
  end
end
