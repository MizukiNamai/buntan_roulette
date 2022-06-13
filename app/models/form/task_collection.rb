class Form::TaskCollection
  include ActiveModel::Model
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations
  TASK_COUNT = 10
  attr_accessor :products

  def initialize(attributes = {})
    if attributes.present?
      self.products = attributes.map do |value|
        Task.new(
          task: value['task'],
          name: value['name'],
          status: value['status'],
          page_id: value['page_id']
        )
      end
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
