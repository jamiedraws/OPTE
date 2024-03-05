<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

.ing__figure {
    display: block;
    text-align: center;
}

.ing__figure figure {
    display: inline-block;
    vertical-align: top;
    width: 22%;
    margin: 1rem;
}

.ing__figure .ing__img,
.ing__figure .ing__img > img {
    width: 180px;
    height: 180px;
    margin: auto;
}

.ing__figure em {
    font: 18px/1 'Sofia Pro Bold', 'Sofia Pro Regular', Helvetica, sans-serif;
    text-transform: uppercase;
    display: block;
    margin: 2.5rem 0 1rem;
}

.ing__figure p {
    font: 15px/1.45 'Sofia Pro Light', Helvetica, sans-serif;
    margin-bottom: 1.5rem;
}

.ing__figure p:last-of-type {
    margin-bottom: 0;
}

@media all and ( min-width : 0 ) and ( max-width : 992px ) {
    .ing__title {
        font-size: 7vw;
        margin-top: 4rem;
    }

    .ing__content .ing__strong {
        margin: 1.5rem 0 1rem;
    }

    .ing__figure figure {
        display: block;
        margin: 1rem auto 3rem;
        width: 100%;
    }
}