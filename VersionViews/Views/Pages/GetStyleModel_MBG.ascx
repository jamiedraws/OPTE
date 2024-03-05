<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

    /*	MBG | Offer | @Layout
    * --------------------------------------------------------------------- */
    .mbg {
        position: relative;
    }

    .mbg__img {
        width: 135px;
        height: 135px;
        position: absolute;
        left: 0;
        top: 0;
        bottom: 0;
        margin: auto;
        z-index: 1;
    }

    .mbg__content {
        position: relative;
        background: #dbd8d8;
        padding: 2rem;
        border-radius: 1rem;
        margin-left: 4rem;
        padding-left: 12rem;
        text-align: left;
    }

    .mbg__content p {
        font: 15px/1.25 'Sofia Pro Regular', Helvetica, sans-serif;
    }

    .mbg__title {
        font: 24px/1 'Sofia Pro Bold', 'Sofia Pro Regular', Helvetica, sans-serif;
        text-transform: uppercase;
        display: block;
        margin-bottom: 1rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 520px ) {
        .mbg__content {
            padding: 3.5vw;
            margin-left: 9vw;
            padding-left: 20vw;
        }

        .mbg__title {
            font-size: 4.25vw;
        }

        .mbg__content p {
            font-size: 12px;
        }

        .mbg__img {
            width: 24.545454545454547vw;
            height: 24.545454545454547vw;
        }
    }