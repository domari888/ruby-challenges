class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】#{task.info}"
  end

  def index
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    if @tasks.any?
      @tasks.each do |task|
        puts task.info
      end
    else
      puts "【！】 タスクはありません。"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(id:)
    if task = @tasks.find { |task| task.id == id }
      puts "【削除】#{task.info}"
      @tasks.delete(task)
    else
      puts "【！】該当idのタスクはありません。"
    end
  end
end
