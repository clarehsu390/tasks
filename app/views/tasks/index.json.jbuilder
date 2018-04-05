json.array! @tasks.each do |task|
    json.title task.title
    json.addition_info task.addition_info
    json.due_at task.due_at
end