.delete__form {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background-color: white;
    border-radius: 4px;
    padding: 32px 0px;
    padding-bottom: 0px;
}

.todo__content {
    font-size: 22px;
    color: gray;
    margin: 0px 32px;
    margin-bottom: 16px;
}

.text {
    color: #ff4343;
    margin: 0px 32px;
    margin-bottom: 8px
}

.btn__box {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 16px;
    background-color: #f7f7f7;
    padding: 16px;
}

.btn__box > * {
    flex: 1;
    cursor: pointer;
    border: 1px solid;
    text-decoration: none;
    outline: none;
    text-align: center;
    font-size: 16px;
    color: #00012b;
    padding: 2px 0px;
    border-radius: 4px;
    background-color: transparent;
}

.yes__btn:hover {
    background-color: #ff4343;
    border-color: #ff4343;
    color: white;
}

.no__btn:hover {
    background-color: #00012b;
    color: white;
    border-color: #00012b;
}


.delete__text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    font-size: 20px;
    background-color: #10c059;
    text-transform: uppercase;
    padding: 16px 64px;
    color: #fff;
}