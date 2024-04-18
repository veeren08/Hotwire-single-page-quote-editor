class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  # the target option will be equal to model_name.plural, which is equal to "quotes" so we can remove the target
  # The partial default value is equal to calling to_partial_path on an instance of the model, which by default in Rails for our Quote model is equal to "quotes/quote".
  # The locals default value is equal to { model_name.element.to_sym => self } which, in in the context of our Quote model, is equal to { quote: self }
  # => after_create_commit -> { broadcast_prepend_to "quotes", partial: "quotes/quote", locals: { quote: self }, target: "quotes" }

  after_create_commit -> { broadcast_prepend_to "quotes" }
end
