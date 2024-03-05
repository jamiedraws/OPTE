<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<style>
    /*	Lazy Load | @Model
    * --------------------------------------------------------------------- */
    [data-src-img] img, 
    [data-src-iframe] iframe {
        opacity: 0;
    }

    [data-src-iframe]:not(.omit-placeholder-background) {
        background: #eeeeee;
    }

    [data-lazy-load-background] {
        position: relative;
        z-index: 1;
    }

    [data-lazy-load-background]:before,
    [data-lazy-load-background]:after {
        display: block;
        content: '';
        position: absolute;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        opacity: 0;
        z-index: -1;
        transition: opacity 250ms ease-in 1s;
    }

    [data-lazy-load-background="true"]:before {
        opacity: 1;
    }

    .fade-content-in, .has-image, .has-image > img {
        -webkit-animation: -fade-content-in 50ms ease-in forwards;
        -moz-animation: -fade-content-in 50ms ease-in forwards;
        animation: -fade-content-in 50ms ease-in forwards;
    }

    /*
    .has-image > img {
        -webkit-animation-delay: 100ms;
        -moz-animation-delay: 100ms;
        animation-delay: 100ms;
    }
    */

    @-webkit-keyframes -fade-content-in {
        to {
            opacity: 1;
        }
    }

    @-moz-keyframes -fade-content-in {
        to {
            opacity: 1;
        }
    }

    @keyframes -fade-content-in {
        to {
            opacity: 1;
        }
    }


    /*	Trial | @Layout
    * --------------------------------------------------------------------- */
    .offer__product,
    .offer__product > img {
        display: block;
        margin: auto;
    }

    .trial__content .offer__title {
        margin-bottom: 2rem;
    }

    .trial__content .offer__header {
        text-align: center;
    }

    .trial__content .offer__subtitle {
        margin-bottom: 1rem;
        font: bold 22px/1 'Sofia Pro Semibold', sans-serif;
    }

    .trial__content .offer__title {
        font: bold 40px/1 'Encorpada Classic Ex Lt',serif;
        text-transform: uppercase;
        display: inline-block;
        padding: 1rem 2rem;
        border: 4px double #000;
    }

    .offer__desc {
        clear: both;
        margin-bottom: 3rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .trial__content .offer__title {
            padding: 2.5vw 3.5vw;
            font-size: 7.5vw;
        }
    }

    @media all and ( min-width : 0 ) and ( max-width : 1024px ) {
        .section--offer {
            padding: 0 2vw 3.5rem;
        }

        .offer__product,
        .offer__product > img {
            width: 54.16666666666667vw;
            height: 47.005208333333336vw;
        }

        .trial__content {
            margin-bottom: 4rem;
        }

        .trial__content .offer__title {
            display: block;
        }
    }

    @media all and ( min-width : 1025px ) {
        .offer__content,
        .offer__product {
            display: inline-block;
            vertical-align: top;
        }

        .offer__product,
        .offer__product > img {
            width: 416px;
            height: 361px;
        }

        .offer__product {
            float: left;
            margin-right: 7rem;
        }

        .trial__content .offer__header {
            float: right;
            width: 46%
        }

        .trial__content .offer__mbg {
            float: right;
            clear: right;
            width: 50%;
        }
    }

    .trial__content .offer__header {
        margin-bottom: 1rem;
    }

    .offer__desc {
        border: 1px solid #bcbcbc;
    }

    .desc__title {
        display: block;
        font: 1.6rem/1 'Sofia Pro Semibold', 'Sofia Pro Regular', Helvetica, sans-serif;
        text-transform: uppercase;
        padding: 1.5rem 1.5rem 1.25rem;
        background: #4b3d3e;
        color: white;
    }

    .offer__desc .desc__header {
        display: block;
        font: 2rem/1 'Sofia Pro Semibold', sans-serif;
    }

    .offer__desc p {
        font-size: 1.6rem;
        line-height: 1.5;
        padding: 2.5rem 1.5rem;
        color: black;
    }

    .offer__dtm .dtm {
        font-size: 100%;
    }

    #dtm_form .dtm__in {
        background: none;
    }

    #dtm_form #form {
        border: none;
        padding: 0;
    }

    #dtm_form .c-brand--form__fieldset {
        border: 1px solid;
    }

    #dtm_form .reviewTable__wrap {
        padding: 1rem;
    }

    #dtm_form .c-brand--form__legend {
        background: #4b3d3e;
        padding: 1.5rem 1.5rem 1.25rem;
    }

    #dtm_form .c-brand--form__headline {
        font: 1.8rem/1 'Sofia Pro Light', sans-serif;
    }

    #dtm_form .c-brand--form__headline strong,
    #dtm_form .c-brand--form__headline b {
        font-family: 'Sofia Pro Semibold', sans-serif;
    }

    .orderItemsTable th {
        background: #2f1b47;
    }

    .c-brand--form__grid {
        display: flex;
        align-items: center;
        padding: 2rem;
        cursor: pointer;
    }

    .c-brand--form__grid__item {
        flex: 0 1 15rem;
    }

    .c-brand--form__grid__img {
        flex: 0 1 20rem;
        padding: 0 1rem;
    }

    .c-brand--form__grid__img > img {
        margin: auto;
    }

    @media all and ( max-width : 400px ) {
        .c-brand--form__grid {
            justify-content: center;
            flex-wrap: wrap;
            text-align: center;
        }

        .c-brand--form__grid__item {
            flex: 1 1 100%;
            order: 1;
        }

        .c-brand--form__grid__img {
            padding: 0.5rem;
            flex-basis: 50%;
        }

        .c-brand--form__grid__group {
            margin: auto;
        }
    }
</style>