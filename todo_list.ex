defmodule TodoList do
  defstruct entries: []

  def add_entry(todo_list, date, task) do
    entry = %{date: date, task: task}
    %{todo_list | entries: [entry | todo_list.entries]}
  end

  def edit_entry(todo_list, index, new_date, new_task) when index >= 0 and index < length(todo_list.entries) do
    updated_entries =
      todo_list.entries
      |> Enum.with_index()
      |> Enum.map(fn
        {entry, i} when i == index ->
          %{entry | date: new_date, task: new_task}
        {entry, _} ->
          entry
      end)

    %{todo_list | entries: updated_entries}
  end

  def delete_entry(todo_list, index) when index >= 0 and index < length(todo_list.entries) do
    updated_entries =
      todo_list.entries
      |> Enum.with_index()
      |> Enum.reject(fn {_, i} -> i == index end)
      |> Enum.map(fn {entry, _} -> entry end)

    %{todo_list | entries: updated_entries}
  end

  def print_entries(todo_list) do
    Enum.each(todo_list.entries, fn %{date: date, task: task} ->
      IO.puts("#{date}: #{task}")
    end)
  end
end
