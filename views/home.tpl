<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        %include("views/style/main_style.tpl")
        %include("views/style/navbar_style.tpl")
        %include("views/style/home_style.tpl")
    </style>
</head>
<body>
    %include("views/template/navbar.tpl")
    %if rows:
        <div class="todo__box">
            %for row in rows:
                <p class="todo">{{row[1]}}</p>
            %end 
        </div>
    %end

    <script>
        const todoList = document.querySelectorAll(".todo")

        todoList.forEach((todo) => {
            todo.addEventListener("click", () => {
                todo.classList.toggle("checked");
            });
        });
    </script>
</body>
</html>