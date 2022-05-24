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
    end
  end

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end


  def save
    is_success = true
    ActiveRecord::Base.transaction do
      collection.each do |result|
        # バリデーションを全てかけたいからsave!ではなくsaveを使用
        is_success = false unless result.save
      end
      # バリデーションエラーがあった時は例外を発生させてロールバックさせる
      raise ActiveRecord::RecordInvalid unless is_success
    end
    rescue
      p 'エラー'
    ensure
      return is_success
  end
end
