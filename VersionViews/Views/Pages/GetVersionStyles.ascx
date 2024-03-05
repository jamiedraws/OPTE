<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<style>
    /*	Preloader | @Base
    * --------------------------------------------------------------------- */
    .set-preload {
        opacity: 0;
    }


    /*	Reset | @Base
    * --------------------------------------------------------------------- */
    * {
        -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;
    }

    html, body {
        width: 100%; height: auto;
    }

    html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym,
    address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt,
    var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
        margin: 0; padding: 0; border: 0; outline: 0; font-weight: inherit; font-style: inherit; font-size: 100%; font-family: inherit;
        vertical-align: baseline; line-height: inherit; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale;
    }

    html {
        -webkit-text-size-adjust: 100%;
            -moz-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
                text-size-adjust: 100%;
                position: relative;
    }

    body {
        line-height: 1;
    }

    acronym, abbr, fieldset, img, a img {
        border: 0;
    }

    blockquote:before, blockquote:after, q:before, q:after {
        content: " ";
    }

    blockquote, q {
        quotes: "" "";
    }

    table {
        border-collapse: collapse; border-spacing: 0; empty-cells: show;
    }

    caption, th, td {
        text-align: left; font-weight: normal; font-style: normal;
    }

    ol, ul {
        list-style: initial;
    }

    li {
        padding: 0.25em 0;
    }

    object {
        outline: none;
    }

    textarea {
        margin: 0; padding: 0;
    }

    :link, :visited {
        text-decoration: underline; color: inherit;
    }


    /*	Normalize | @Base
    * --------------------------------------------------------------------- */
    html {
        font-size: 62.8%;
    }

    article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
        display: block;
    }

    audio, canvas, progress, video {
        display: inline-block; vertical-align: baseline;
    }

    audio:not([controls]) {
        display: none; height: 0;
    }

    [hidden], template {
        display: none;
    }

    a {
        background-color: transparent;
    }

    a:focus, a:active, a:hover {
        outline: 0;
    }

    p {
        line-height: 1.45;
    }

    abbr[title], dfn[title] {
        border-bottom: 1px dotted; cursor: help;
    }

    del {
        text-decoration: line-through;
    }

    ins {
        color: black; text-decoration: none;
    }

    mark {
        color: black;
    }

    small {
        font-size: 80%;
    }

    sup, sub {
        font-size: 75%; line-height: 0; position: relative;
    }

    sup {
        bottom: .33em;
    }

    sub {
        bottom: -.33em;
    }

    svg:not(:root) {
        overflow: hidden;
    }

    figure {
        margin: 0;
    }

    strong {
        font-weight: bold;
    }

    hr, .dtm .c-brand hr {
        height: 1px; background: #ccc; display: block; border: 0; margin: 1em 0; padding: 0;
    }

    pre {
        overflow: auto;
    }

    code, kbd, pre, samp {
        font-family: monospace, monospace; font-size: 1em;
    }

    button, input, optgroup, select, textarea {
        color: inherit; font: inherit; margin: 0;
    }

    button {
        overflow: visible;
    }

        button, select {
            text-transform: none;
        }

        button, html input[type="button"], input[type="reset"], input[type="submit"] {
            -webkit-appearance: button; cursor: pointer;
        }

        button[disabled], html input[disabled] {
            cursor: default;
        }

        button::-moz-focus-inner, input::-moz-focus-inner {
            border: 0; padding: 0;
        }

        input {
            line-height: normal;
        }

        input[type="checkbox"], input[type="radio"] {
            padding: 0;
        }

        input[type="text"], input[type="email"], input[type="tel"], input[type="number"], select {
            -webkit-appearance: none;
        }

        input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button {
            height: auto;
        }

        input[type="search"] {
            -webkit-appearance: textfield; -moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box;
        }

        input[type="search"]::-webkit-search-decoration, input[type="search"]::-webkit-search-cancel-button {
            -webkit-appearance: none;
        }

        input[type="hidden"], script {
            visibility: hidden; height: 0; border: 0; margin: 0; padding: 0; position:absolute; display: none;
        }

    fieldset {
        border: 0; margin: 0; padding: 0;
    }

    legend {
        border: 0; padding: 0;
    }

    textarea {
        overflow: auto;
    }

    optgroup {
        font-weight: bold;
    }


    /*	Fonts | @Layout
    * --------------------------------------------------------------------- */
    /* Encorpada Classic Ex Lt */
    @font-face {
        font-family: 'Encorpada Classic Ex Lt';
        src: url(/images/webfonts/encorpada-classic-extralight/EncorpadaClassic-ExtraLight.eot?) format('eot');
        src: local('☺︎'),
            url(/images/webfonts/encorpada-classic-extralight/EncorpadaClassic-ExtraLight.woff2?appV=<%= DtmContext.ApplicationVersion %>) format('woff2'),
            url(/images/webfonts/encorpada-classic-extralight/EncorpadaClassic-ExtraLight.woff?appV=<%= DtmContext.ApplicationVersion %>) format('woff'),
            url(/images/webfonts/encorpada-classic-extralight/EncorpadaClassic-ExtraLight.svg#dooTypeEncorpadaClassicLight) format('svg');
        font-display: fallback;
    }

    /* Sofia Pro Light */
    @font-face {
        font-family: 'Sofia Pro Light';
        src: url(/images/webfonts/sofia-pro/light/SofiaProLight.eot?appV=<%= DtmContext.ApplicationVersion %>) format('eot');
        src: local('☺︎'),
            url(/images/webfonts/sofia-pro/light/SofiaProLight.woff2?appV=<%= DtmContext.ApplicationVersion %>) format('woff2'),
            url(/images/webfonts/sofia-pro/light/SofiaProLight.woff?appV=<%= DtmContext.ApplicationVersion %>) format('woff'),
            url(/images/webfonts/sofia-pro/light/SofiaProLight.svg#MostardesignSofiaProLight) format('svg');
        font-display: fallback;
    }

    /* Sofia Pro Regular */
    @font-face {
        font-family: 'Sofia Pro Regular';
        src: url(/images/webfonts/sofia-pro/regular/SofiaProRegular.eot?appV=<%= DtmContext.ApplicationVersion %>) format('eot');
        src: local('☺︎'),
            url(/images/webfonts/sofia-pro/regular/SofiaProRegular.woff2?appV=<%= DtmContext.ApplicationVersion %>) format('woff2'),
            url(/images/webfonts/sofia-pro/regular/SofiaProRegular.woff?appV=<%= DtmContext.ApplicationVersion %>) format('woff'),
            url(/images/webfonts/sofia-pro/regular/SofiaProRegular.svg#MostardesignSofiaProRegular) format('svg');
        font-display: fallback;
    }

    /* Sofia Pro Semibold */
    @font-face {
        font-family: 'Sofia Pro Semibold';
        src: url(/images/webfonts/sofia-pro/semibold/SofiaProSemiBold.eot?appV=<%= DtmContext.ApplicationVersion %>) format('eot');
        src: local('☺︎'),
            url(/images/webfonts/sofia-pro/semibold/SofiaProSemiBold.woff?appV=<%= DtmContext.ApplicationVersion %>) format('woff'),
            url(/images/webfonts/sofia-pro/semibold/SofiaProSemiBold.svg#Sofia-Pro-SemiBold) format('svg');
        font-display: fallback;
    }

    /* Sofia Pro Bold */
    @font-face {
        font-family: 'Sofia Pro Bold';
        src: url(/images/webfonts/sofia-pro/bold/SofiaPro-Bold.eot?appV=<%= DtmContext.ApplicationVersion %>) format('eot');
        src: local('☺︎'),
            url(/images/webfonts/sofia-pro/bold/SofiaPro-Bold.woff2?appV=<%= DtmContext.ApplicationVersion %>) format('woff2'),
            url(/images/webfonts/sofia-pro/bold/SofiaPro-Bold.woff?appV=<%= DtmContext.ApplicationVersion %>) format('woff'),
            url(/images/webfonts/sofia-pro/bold/SofiaPro-Bold.svg#MostardesignSofiaProBold) format('svg');
        font-display: fallback;
    }

    body {
        font: 1.6rem/1.25 'Sofia Pro Regular', Helvetica, sans-serif;
        color: #4b3d3e;
    }

    .header,
    .main,
    .footer {
        overflow: hidden;
    }

    img {
        display: block;
        max-width: 100%;
        width: auto;
    }


    /*	Header | @Layout
    * --------------------------------------------------------------------- */
    .header {
        color: #4b3d3e;
    }

    .header--has-bg, .use-gradient-bg {
        background: #e9e2dc;
        background: -moz-radial-gradient(center, ellipse cover, hsla(28,23%,89%,1) 0%, hsla(283,7%,79%,1) 100%);
        background: -webkit-radial-gradient(center, ellipse cover, hsla(28,23%,89%,1) 0%,hsla(283,7%,79%,1) 100%);
        background: radial-gradient(ellipse at center, hsla(28,23%,89%,1) 0%,hsla(283,7%,79%,1) 100%);
    }

    .header__in {
        max-width: 1000px;
        width: 100%;
        margin: auto;
    }


	/*	Hamburger | @Model
    * --------------------------------------------------------------------- */
    .ham__button,
    .ham__button > span {
        display: block;
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
    }

	.ham__button {
        position: relative;
		width: 30px;
		height: 25px;
		margin: auto;
		-webkit-transition: .5s ease-in-out;
		-moz-transition: .5s ease-in-out;
		-o-transition: .5s ease-in-out;
		transition: .5s ease-in-out;
		cursor: pointer;
    }

    .ham__button > span {
        position: absolute;
        height: 5px;
        width: 100%;
        background: #4b3d3e;
        border-radius: 9px;
        opacity: 1;
        left: 0;
        -webkit-transition: .25s ease-in-out;
        -moz-transition: .25s ease-in-out;
        -o-transition: .25s ease-in-out;
        transition: .25s ease-in-out;
    }

    .ham__button > span:nth-child(1) {
        top: 0;
    }

    .ham__button > span:nth-child(2) {
        top: 0; bottom: 0; margin: auto;
    }

    .ham__button > span:nth-child(3) {
        bottom: 0;
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(1),
    .ham__input:checked ~ .ham__container .ham__button span:nth-child(3) {
        top: 10px;
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(1) {
        -webkit-transform: rotate(135deg);
        -moz-transform: rotate(135deg);
        -o-transform: rotate(135deg);
        transform: rotate(135deg);
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(2) {
        opacity: 0;
        left: -60px;
    }

    .ham__input:checked ~ .ham__container .ham__button span:nth-child(3) {
        -webkit-transform: rotate(-135deg);
        -moz-transform: rotate(-135deg);
        -o-transform: rotate(-135deg);
        transform: rotate(-135deg);
    }
            

    /*	Nav | Header | @Layout
    * --------------------------------------------------------------------- */
    .header__nav {
        font: 1.3rem/1.25 'Sofia Pro Regular', Helvetica, sans-serif;
        text-align: center;
        text-transform: uppercase;
        padding: 1rem 0 4rem;
    }

    .header__nav > a {
        display: inline-block;
        vertical-align: middle;
        text-decoration: none;
        padding: 1rem 2.5rem;
    }

    .header__nav > a:hover,
    .header__nav > a:focus {
        text-decoration: underline;
    }

    .header__nav em {
        font-family: 'Sofia Pro Bold', 'Sofia Pro Regular', Helvetica, sans-serif;
    }

    .header__icon .svg__icon {
        width: 80px;
        height: 112px;
        margin-bottom: -4rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .header__controls {
            background: white;
            padding: 1rem;
            position: relative;
        }

        .header__controls .ham__button {
            position: absolute;
            right: 2rem;
            top: 0;
            bottom: 0;
        }

        .header__logo,
        .ham__container > a {
            display: block;
            width: 77px;
            height: 37px;
            margin-left: 1rem;
        }

        .header__nav {
            padding: 0;
        }

        .header__nav > a {
            display: block;
            padding: 1.5rem;
        }

        .header__icon,
        .header__nav__checkbox,
        .ham .ham__hide-link,
        .header__nav {
            display: none;
        }

        .ham__input:checked ~ .header__nav {
            display: block;
        }
    }

    @media all and ( min-width : 993px ) {
        .ham__input,
        .ham__container {
            display: none;
        }
    }


    /*	Fixed | Nav | @Layout
    * --------------------------------------------------------------------- */
    .header__nav--fixed {
        position: fixed;
        width: 100%;
        background: white;
        left: 0;
        top: 0;
        z-index: 100;
        box-shadow: 0 1px 3px hsla(0, 0%, 0%, 0.47);
    }

    @media all and ( min-width : 993px ) {
        .header__nav--fixed .header__nav {
            padding: 1rem;
        }
    }

    .header__nav--fixed .header__nav > a {
        padding: 1rem 2.5rem;
        position: relative;
    }

    .header__nav--fixed .svg__icon {
        width: 30px;
        height: auto;
        margin-bottom: 3rem;
        position: absolute;
        left: 0;
        right: 0;
        margin: auto;
        top: 0;
        bottom: 0;
    }


    /*	Hero | @Layout
    * --------------------------------------------------------------------- */
    .hero__section {
        text-align: center;
        margin: 2rem 0;
    }

    .hero__title, .section__title {
        font: bold 55px/1.05 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
    }

	@media all and ( min-width : 0 ) and ( max-width : 992px ) {
		.hero__title {
			font-size: 6vw;
		}

        .title__block {
            display: block;
        }
	}


    /*	Section | @Layout
    * --------------------------------------------------------------------- */
    .section {
        padding: 3.5rem 2rem;
    }

    .section a:not(.button) {
        transition: color 100ms ease-in-out;
    }

    .section a:not(.button):hover,
    .section a:not(.button):focus {
        color: #deb670;
    }

    [class*="section--line"] {
        border: solid #d3d3d3;
        border-width: 2px 0;
        margin: 2px 0;
    }

    .section--line--bottom {
        border-top-width: 0;
        margin-top: 0;
    }

    .section--line--top {
        border-bottom-width: 0;
        margin-bottom: 0;
    }

    .section__in {
        max-width: 1000px;
        width: auto;
        margin: auto;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .section {
            padding: 2vw;
        }
    }


    /*	Slider | Offer | @Progressive Modifier
    * --------------------------------------------------------------------- */
    .offer__slider .slider__paginav .slick-track {
        margin-left: -7vw !important;
    }

    @media all and ( min-width : 1025px ) {
        .offer__slider .slider__paginav .slick-track {
            margin-left: -100px !important;
        }       
    }

    .review__slider .slider__paginav--mobile .slick-track {
        margin-left: -5vw !important;
    }
    
    .offer__slider .slider__paginav .slick-slide {
        cursor: pointer;
        opacity: 0.5;
        transition: opacity 250ms ease-in-out;
    }

    .offer__slider .slider__paginav .slick-current {
        opacity: 1;
    }

    .dtm .slick-vertical .slick-slide {
        border: none;
    }

    .results__slider .slick-current .paginav__item {
        border-color: #ceb9a8;
    }

    .slider__review .slick-slide li {
        margin: 0;
    }

    .slick-slider .review__user {
        padding: 7%;
    }
</style>