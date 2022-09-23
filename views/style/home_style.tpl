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
    padding: 16px;
    transition: .2s;
    color: #00012b;
    cursor: pointer;
}

.todo:hover {
    background-color: #00000020;
}

.checked {
    text-decoration: line-through;
    opacity: .6;
}
