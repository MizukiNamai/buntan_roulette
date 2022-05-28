class Form::TaskCollection
  include ActiveModel::Model
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations
  
  TASK_COUNT = 4 # ここで、作成したい登録フォームの数を指定
  attr_accessor :products

  def initialize(attributes = {})
    if attributes.present?
      self.products = attributes.map { |_, v| Task.new(v) }
    else
      TASK_COUNT.times.map { Task.new }
    end
  end

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end

  def save
    Task.transaction do
      products.map(&:save!)
    end
  end
end
