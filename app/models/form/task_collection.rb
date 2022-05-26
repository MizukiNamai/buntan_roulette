class Form::TaskCollection < Form::Base
  TASK_COUNT = 4 #ここで、作成したい登録フォームの数を指定
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
      self.products = TASK_COUNT.times.map{ Task.new }
    end
  end

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end


  def save
    Task.transaction do
      products.map do |value|
        value.save
      end
    end
  end
end
