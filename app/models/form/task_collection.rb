class Form::TaskCollection
  include ActiveModel::Model
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations

  TASK_COUNT = 4
  attr_accessor :products

  def initialize(attributes = {})
    if attributes.present?
      self.products = attributes.map { |_, v| Task.new(v) }
    else
      TASK_COUNT.times.map { Task.new }
    end
  end

  def persisted?
    false
  end

  def save
    Task.transaction do
      products.map(&:save!)
    end
  end
end
