<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

/*	Works | @Model
* --------------------------------------------------------------------- */
.works__figure {
    text-align: center;
}

.works__figcaption {
    padding: 1.5rem;
}

@media all and ( min-width : 993px ) {
    .works__figure,
    .works__figcaption {
        display: table;
        width: 99%;
        margin: auto;
    }

    .works__figure figure,
    .works__figcaption figcaption {
        display: table-cell;
    }

    .works__figure figure {    
        vertical-align: top;
    }

    .works__figure figure:first-of-type [data-src-img] {
        border-right: 0;
    }

    .works__figure figure:not(:first-of-type):not(:last-of-type) [data-src-img] {
        border-width: 2px 0;
    }

    .works__figure figure:last-of-type [data-src-img] {
        border-left: 0;
    }

    .works__figure figure:first-of-type [data-src-img]:before {
        margin-right: 0;
        border-right: 0;
    }

    .works__figure figure:not(:first-of-type):not(:last-of-type) [data-src-img]:before {
        margin-right: 0;
        border-right: 0;
        margin-left: 0;
        border-left: 0;
    }

    .works__figure figure:last-of-type [data-src-img]:before {
        margin-left: 0;
        border-left: 0;
    }

    .works__figcaption figcaption {
        vertical-align: top;
    }

    .works__figcaption {
        padding: 3rem;
    }
}

@media all and ( min-width : 0 ) and ( max-width : 420px ) {
    .works__figure [data-src-img],
    .works__figure img {
        width: 78.33333333333333vw;
        height: 75.47619047619047vw;
    }
}

@media all and ( min-width : 421px ) {
    .works__figure [data-src-img],
    .works__figure img {
        width: 329px;
        height: 317px;
    }
}

.works__figure [data-src-img] {
    display: inline-block;
    border: 2px solid white;
    padding: 0;
    position: relative;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}

.works__figure [data-src-img]:before {
    display: block;
    content: '';
    border: 4px solid #ceb9a8;
    width: 100%;
    margin: -4px;
    height: 100%;
    z-index: -1;
    position: absolute;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
}

.works__figcaption em {
    font: 30px/1 'Sofia Pro Regular', Helvetica, sans-serif;
    text-transform: uppercase;
}

.works__figcaption p {
    font: 18px/1.45 'Sofia Pro Regular', Helvetica, sans-serif;
}

@media all and ( min-width : 0 ) and ( max-width : 992px ) {
    .works__figure {
        margin-bottom: 6rem;
    }

    .works__figcaption {
        padding: 1.5rem 1.5rem 2.5rem;
    }

    .works__figcaption p {
        margin: 0;
    }
}