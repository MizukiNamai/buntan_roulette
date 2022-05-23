class Form::TaskCollection < Form::Base
  TASK_COUNT = 4 #ここで、作成したい登録フォームの数を指定
  attr_accessor :collection

  def initialize(attributes = {})
    if attributes.present?
      self.collection = attributes.map do |value|
        Task.new(
          task: value['task'],
          name: value['name'],
          status: value['status'],
          roulette_id: value['roulette_id']
        )
      end
    else
      self.collection = TASK_COUNT.times.map{ Task.new }
      binding.pry
    end
  end

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end


  def save
    Task.transaction do
      self.tasks.map do |task|
        task.save
      end
    end
      return true
    rescue => e
      return false
  end
end
