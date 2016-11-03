class TypeEfficacy < ActiveRecord::Base
  belongs_to :damage_type, class_name: :Type
  belongs_to :target_type, class_name: :Type
end
