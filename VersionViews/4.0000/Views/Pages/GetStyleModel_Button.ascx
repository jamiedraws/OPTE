<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

    /*	Buttons | Offer | @Layout
    * --------------------------------------------------------------------- */
    .button,
    .dtm .button {
        display: inline-block;
        padding: 0.5em 0.65em;
        border-radius: 0.25em;
        font: 3rem/1 'Sofia Pro Regular', Helvetica, sans-serif;
        text-transform: uppercase;
        text-align: center;
        text-shadow: 0 0.175rem 0.175rem white;
        box-shadow: inset 0 0.175rem 0.2rem white;
        border: 0.175rem solid #4b3d3e;
        text-decoration: none;
        color: inherit;
    }

    .button > span {
        display: block;
    }

    .button--primary,
    .dtm .button--primary,
    .button--secondary,
    .bg--primary {
        background: #ebddc5;
        background: -moz-linear-gradient(top, hsla(38,49%,85%,1) 0%, hsla(31,42%,73%,1) 3%, hsla(30,40%,69%,1) 12%, hsla(35,45%,76%,1) 31%, hsla(38,49%,81%,1) 55%, hsla(35,45%,76%,1) 72%, hsla(30,40%,69%,1) 100%);
        background: -webkit-linear-gradient(top, hsla(38,49%,85%,1) 0%,hsla(31,42%,73%,1) 3%,hsla(30,40%,69%,1) 12%,hsla(35,45%,76%,1) 31%,hsla(38,49%,81%,1) 55%,hsla(35,45%,76%,1) 72%,hsla(30,40%,69%,1) 100%);
        background: linear-gradient(to bottom, hsla(38,49%,85%,1) 0%,hsla(31,42%,73%,1) 3%,hsla(30,40%,69%,1) 12%,hsla(35,45%,76%,1) 31%,hsla(38,49%,81%,1) 55%,hsla(35,45%,76%,1) 72%,hsla(30,40%,69%,1) 100%);
    }

    .button:hover,
    .button:focus {
        -webkit-filter: sepia(100%);
        -ms-filter: sepia(100%);
        filter: sepia(100%);
    }

    .button--secondary {
        -webkit-filter: grayscale(100%);
        -ms-filter: grayscale(100%);
        filter: grayscale(100%);
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .button > span {
            display: inline-block;
            padding-right: 0.35em;
        }

        .button > span:last-child {
            padding-right: 0;
        }

        .aside__center {
            text-align: center;
        }

        .button--primary:not(.button--visible) {
            display: none;
        }
    }

    @media all and ( min-width : 0 ) and ( max-width : 460px ) {
        .button {
            font-size: 6.5vw;
            display: block;
            width: 100%;
        }
    }