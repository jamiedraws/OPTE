<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

/*	Grid | Use | @Model
* --------------------------------------------------------------------- */
.use__items {
    margin: 3.5rem 0;
    text-align: center;
}

.use__item {
    display: inline-block;
    width: 33%;
    vertical-align: top;
    margin: 0;
}

.use__img,
.use__img > img {
    display: block;
    margin: auto;
}

.use__em {
    font-family: 'Encorpada Classic Ex Lt', serif;
    line-height: 1;
    font-weight: bold;
    text-transform: uppercase;
    margin: 2rem 0 1rem;
    display: block; 
}

.use__item p {
    font: 20px/1.45 'Sofia Pro Light', Helvetica, sans-serif;
    color: #191919;
    width: 84%;
    margin: auto;
}

@media all and ( min-width : 0 ) and ( max-width : 400px ) {
    .use__desc {
        font-size: 1.8rem;
    }

    .use__item p {
        font-size: 1.5rem;
    }
}

@media all and ( min-width : 0 ) and ( max-width : 768px ) {
    .use__title {
        font-size: 7vw;
        margin: 0 15vw 1rem;
    }

    .use__desc {
        margin: 0 2rem;
        font-size: 1.8rem;
    }

    .use__items {
        margin: 3.5rem;
    }

    .use__item {
        display: block;
        width: 100%;
        margin: 0 0 3rem;
    }

    .use__item p {
        font-size: 1.75rem;
    }
}