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
        %include("views/style/delete_style.tpl")
    </style>
</head>
<body>
    %include("views/template/navbar.tpl")

    %if todo:
        <form method="POST" action="/delete/{{todo[0]}}" class="delete__form">
            <p class="todo__content">{{todo[1]}}</p>
            <p class="text">Are you sure delete this todo ?</p>
            <div class="btn__box">
                <input class="yes__btn" type="submit" value="Yes" name="yes"/>
                <a href="/home" class="no__btn">No</a>
            </div>
        </form>
    %else:
        <p class="delete__text">Todo Deleted</p>
    %end
</body>
</html>