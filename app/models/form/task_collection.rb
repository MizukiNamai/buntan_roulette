class Form::TaskCollection < Form::Base
  TASK_COUNT = 4 #ここで、作成したい登録フォームの数を指定
  attr_accessor :tasks

  def initialize(attributes = {})
    super attributes
    self.tasks = TASK_COUNT.times.map{ Task.new } unless self.tasks.present?
  end

  def tasks_attributes=(attributes)
    self.tasks = attributes.map { |_, v| Task.new(v) }
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
