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
        %include("views/style/new_style.tpl")
    </style>
</head>
<body>
    %include("views/template/navbar.tpl")
    <form class="new__form" action="/new" method="POST">
        <h1 class="new__title">Add New Todo</h1>
        <input class="new__input" type="text" placeholder="Enter Todo" name="input"/>
        <div class="new__btn--box">
            <input id="new-btn" name="add" type="submit" class="new__button" value="Add"/>
        </div>
    </form>

    %if display:
        <p id="toast">Todo Added</p>
    %end

    <script>
        const toast = document.getElementById("toast");

        setTimeout(() => {
            toast.style.display = "none";
        }, 1000);
    </script>
</body>
</html>