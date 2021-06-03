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
    if @tasks.empty?
      puts "【！】 タスクはありません。"
    else
      @tasks.each do |task|
        puts task.info
      end
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(task_id)
    if task = @tasks.find { |task| task.id == task_id[:id] }
      puts "【削除】#{task.info}"
      @tasks.delete(task)
    else
      puts "【！】該当idのタスクはありません。"
    end
  end
end
