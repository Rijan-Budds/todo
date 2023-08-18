defmodule TodoList do
  defstruct entries: []

  def add_entry(todo_list, date, task) do
    entry = %{date: date, task: task}
    %{todo_list | entries: [entry | todo_list.entries]}
  end

  def print_entries(todo_list) do
    Enum.each(todo_list.entries, fn %{date: date, task: task} ->
      IO.puts("#{date}: #{task}")
    end)
  end
end
