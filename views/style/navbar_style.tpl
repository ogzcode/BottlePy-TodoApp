.navbar {
    text-align: center;
    padding: 16px 0;
    background-color: #00012b;
}

.nav__item {
    margin: 0px 16px;
    text-decoration: none;
    text-transform: uppercase;
    color: white;
    position: relative;
}

.nav__item::before {
    content: "";
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 0%;
    height: 2px;
    background-color: white;
    transition: .2s;
}

.nav__item:hover::before {
    width: 100%;
}