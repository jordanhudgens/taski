class Counter
  def self.calculate_percent_complete(completed_tasks, total_tasks)
    completed_tasks.to_f / total_tasks.to_f * 100
  end
end