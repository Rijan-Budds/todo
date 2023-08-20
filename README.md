in order to add anything in todo list here are somethings you have to do in your teerminal

step 1: iex
step 2: c("todo_list.ex") //compile and run the code//
step 3: todo_list = %TodoList{} // this creates a new empty todolist//
step 4: todo_list = TodoList.add_entry(todo_list, "2080-3-19", "Watch Oppenheimer video")
        todo_list = TodoList.add_entry(todo_list, "2080-3-20", "Read a chapter from a book")
        todo_list = TodoList.add_entry(todo_list, "2080-3-21", "Go for a walk")
        //add entries//
step 5: TodoList.print_entries(todo_list) //this shows the output//
todo_list = TodoList.edit_entry(todo_list, 1, "2080-3-20", "Read two chapters from a book") //edit the todolist//
todo_list = TodoList.delete_entry(todo_list, 2) //deletes the entry in todolist//
