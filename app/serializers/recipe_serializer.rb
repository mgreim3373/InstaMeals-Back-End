class RecipeSerializer < ActiveModel::Serializer
  attributes :name, :id, :prep_time, :cook_time, :serving_size, :pot_mode, :pot_pressure, :ingredient, :prep_instruction, :photo, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
