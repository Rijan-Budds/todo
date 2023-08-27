defmodule TodoList do
  defstruct tasks: []

  def add_task(todo_list, task) do
    %TodoList{todo_list | tasks: [task | todo_list.tasks]}
  end

  def complete_task(todo_list, task) do
    tasks = Enum.filter(todo_list.tasks, fn t -> t != task end)
    %TodoList{todo_list | tasks: tasks}
  end

  def list_tasks(todo_list) do
    Enum.each(todo_list.tasks, fn task ->
      IO.puts("#{task}")
    end)
  end
end
