.todo__box {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    overflow-y: scroll;
    background-color: white;
    width: 360px;
}

.todo {
    display: block;
    padding: 16px;
    transition: .2s;
    cursor: pointer;
    text-decoration: none;
    color: #00012b;
}

.todo:hover {
    background-color: #00000010;
}

.checked {
    text-decoration: line-through;
    opacity: .6;
}

.not__found__text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-transform: uppercase;
    color: #00012b;
    font-size: 32px;
}