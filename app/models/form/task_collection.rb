class Form::TaskCollection < Form::Base
  TASK_COUNT = 4 # ここで、作成したい登録フォームの数を指定
  attr_accessor :products

  def initialize(attributes = {})
    super attributes
    self.products = if attributes.present?
                      attributes.map { |_, v| Task.new(v) }
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
