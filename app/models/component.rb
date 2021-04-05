class Component < ApplicationRecord
  belongs_to :cycle, optional: true
  belongs_to :parent_component, class_name: 'Component', optional: true
  has_many :subcomponents, class_name: 'Component', foreign_key: 'parent_id', dependent: :destroy
  has_one :impect, dependent: :destroy

  accepts_nested_attributes_for :subcomponents, allow_destroy: true
  accepts_nested_attributes_for :impect
end
