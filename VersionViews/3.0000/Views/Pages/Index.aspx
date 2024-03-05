<%@ Page Language="C#" MasterPageFile="~/VersionViews/3.0000/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<style>
    /*	Hero | Header | @Layout
    * --------------------------------------------------------------------- */
    .header__hero {
        position: relative;
        padding: 0 2rem 2rem;
    }

    .hero__content {
        width: 55%;
    }

    .hero__after {
        position: absolute;
        bottom: 0;
        right: -14rem;
        width: 731px;
        height: 641px;
    }

    .hero__before {
        margin: 2rem 0 0 2rem;
        width: 344px;
        height: 307px;
    }

    .hero__em {
        font: 1.250em/1 'Sofia Pro Regular', Helvetica, sans-serif;
        text-transform: uppercase;
        display: block;
        margin: 2rem 0 1rem;
    }

    .hero__em > span {
        display: inline-block;
        vertical-align: middle;
    }

    .hero__em > span:last-child {
        padding-left: 0.5rem;
    }

    .header__logo {
        display: block;
        width: 77px;
        height: 37px;
    }

    .header__hero p {
        font-size: 18px;
        line-height: 1.45;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        @supports ( display : flex ) {
            .header__hero {
                display: flex;
                flex-wrap: wrap;
                flex-flow: wrap-reverse;
                padding: 14vw 0 0;
                margin-top: 2rem;
            }
        }

        .hero__content {
            width: 100%;
            text-align: center;
            background: white;
            padding: 2rem;
        }

        .hero__title {
            top: 0;
            text-align: left;
            left: 5vw;
            position: absolute;
        }

        .hero__title > div {
            display: inline-block;
        }

        .hero__em {
            font-size: 1.5em;
            margin: 0;
        }

        .hero__before {
            width: 34.67741935483871vw;
            height: 30.947580645161292vw;
            max-width: 344px;
            max-height: 307px;
            position: absolute;
            top: 25vw;
            left: 5vw;
            margin: 0;
            z-index: 1;
        }

        .hero__after {
            width: 73.1vw;
            height: 64.1vw;
            right: 0;
            position: relative;
            display: block;
            left: 30vw;
        }
    }


	/*	Offer | @Layout
    * --------------------------------------------------------------------- */
    .offer {}

    .offer__media {
        width: 50%;
    }

    .offer__media,
    .offer__aside {
        display: inline-block;
        vertical-align: top;
    }

    .offer__aside {
        width: 46%;
        margin-left: 3.45%;
        max-width: 460px;
    }

    .offer__title {
        font: bold 40px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        text-align: center;
        display: inline-block;
        padding: 1rem 2rem;
        border: 4px double black;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .offer__media, .offer__aside {
            display: block;
            width: 100%;
            max-width: none;
        }

        .offer__media {
            text-align: center;
        }

        .offer__title {
            padding: 2.5vw 3.5vw;
            font-size: 7.5vw;
        }
    }


    /*	Slider | Offer | @Layout
    * --------------------------------------------------------------------- */
    .offer__slider {
        margin: 2rem 0 5.25rem;
    }

    .slider li,
    .slider__paginav li {
        padding: 0;
    }

    .slider > li:not(:first-child),
    .offer__slider .slider__paginav > li:nth-child(1n+5) {
        opacity: 0;
        visibility: hidden;
        position: absolute;
        top: 0;
        z-index: -1;
    }

    .slider,
    .slider__paginav {
        list-style: none;
    }

    .review__slider,
    .slider__controls {
        position: relative;
        text-align: center;
    }

    .nav__item--left {
        left: 0;
        background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M0 22L22 0l2.1 2.1L4.2 22l19.9 19.9L22 44 0 22z'/%3E%3C/svg%3E");
    }

    .nav__item--right {
        right: 0;
        background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 44'%3E%3Cpath d='M27 22L5 44l-2.1-2.1L22.8 22 2.9 2.1 5 0l22 22z'/%3E%3C/svg%3E");
    }

    .nav__item {
        border: none;
        background-color: white;
    }

    .offer__slider .nav__item {
        width: 45px;
        height: 100%;
        -moz-background-size: 14px 23px;
        -webkit-background-size: 14px 23px;
        background-size: 14px 23px;
    }

    .nav__item--left,
    .nav__item--right {
        background-position: center;
        background-repeat: no-repeat;
        top: 0;
        bottom: 0;
        position: absolute;
        z-index: 1;
        margin: auto;
    }

    .slider__offer,
    .slider__offer img {
        width: 420px;
        height: 364px;
        margin: auto;
    }

    .offer__slider .slider__paginav li {
        display: inline-block;
        vertical-align: top;   
        padding: 0;
    }

    .offer__slider .slider__paginav > li {
        margin-left: -4px;
    }

    .offer__slider .paginav__item {
        display: block;
        border: 1px solid #ceb9a8;
        margin: 0.5rem;
        width: 90px;
        height: 78px;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .offer__slider {
            margin: 2rem 0;
        }
    }

    @media all and ( min-width : 0 ) and ( max-width : 520px ) {
        .slider__offer,
        .slider__offer img {
            width: 80.76923076923076vw;
            height: 70vw;
        }

        .offer__slider .paginav__item {
            width: 14.307692vw;
            height: 13vw;
        }
    }


	<%= Html.Partial("GetStyleModel_MBG") %>


    /*	Aside | Offer | @Layout
    * --------------------------------------------------------------------- */
    .aside__video {
        background: #eeeeee;
    }

    .aside__video, 
    .aside__video > iframe {
        width: 460px;
        height: 258px;
    }

    .aside__title {
        font: bold 35px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        margin: 3.5rem 0 1.5rem;
    }

    .aside__ul {
        list-style: none;
        font: 18px/1.45 'Sofia Pro Light', Helvetica, sans-serif;
        margin-left: 2rem;
    }

    .aside__ul > li {
        position: relative;
        padding: 0 0 1rem;
    }

    .aside__ul > li:before {
        display: block;
        content: '';
        width: 8px;
        height: 8px;
        border-radius: 100%;
        background: #4b3d3e;
        position: absolute;
        left: -2rem;
        top: 0.75rem;
    }

    .offer__aside .button {
        margin: 1rem 1rem 1rem 0;
        vertical-align: middle;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .offer__aside {
            margin: 5rem 0 0;
        }

        .aside__video,
        .aside__video > iframe {
            width: 95.83333333333334vw;
            height: 53.77604166666667vw;
        }

        .aside__list {
            margin: 0 5vw;
        }

        .aside__title {
            font-size: 4.75vw;
        }

        .offer__aside .button {
            margin: 1rem;
        }
    }

	<%= Html.Partial("GetStyleModel_Button") %>
</style>

<header class="header header--has-bg">

	<div class="header__in">

		<%-- // @HEADER --%>
		<%= Html.Partial("Header") %>

		<div class="header__hero">

			<div class="hero__content">
				<h1 class="hero__title">
                    <div>Scan. Detect.</div>
					<div>Micro-Perfect.</div>
				</h1>
				<em class="hero__em">
					<span>Introducing</span>
					<span>
						<img class="header__logo" src="/images/opte-logo.svg?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> logo">
					</span>
				</em>
				<p>the world's first digital-age skin-perfecting system... proven to make spots, imperfections and hyperpigmentation INSTANTLY disappear, AND help fade their appearance over time...</p>
                <img class="hero__before" src="/images/2.0000/hero-opte-before.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Before how <%= CampaignName %> looks">
			</div>

			<img class="hero__after" src="/images/2.0000/hero-opte-after.png?appV=<%= DtmContext.ApplicationVersion %>" alt="After how <%= CampaignName %> looks">

		</div>

	</div>

</header>


<%-- // @MAIN --%>
<main class="main">

	<!-- // Offer | Section -->
	<section class="section section--offer section--line--bottom">

		<div class="section__in">

			<div class="offer__media">

				<h2 class="offer__title">30-Day Free Trial</h2>

				<div class="offer__slider">
					<ul class="slider slider__offer">
						<li>
							<img src="/images/slider/main-offer/main-offer-slide-1.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> cartridge boxes, beauty wand and cradle">
						</li>
						<li>
							<img data-lazy="/images/slider/main-offer/main-offer-slide-2.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> beauty wand and cradle">
						</li>
						<li>
							<img data-lazy="/images/slider/main-offer/main-offer-slide-3.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> cradle closed">
						</li>
						<li>
							<img data-lazy="/images/slider/main-offer/main-offer-slide-4.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> cradle open with beauty wand">
						</li>
						<li>
							<img data-lazy="/images/slider/main-offer/main-offer-slide-5.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> beauty wand open">
						</li>
						<li>
							<img data-lazy="/images/slider/main-offer/main-offer-slide-6.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> beauty wand side angle">
						</li>
						<li>
							<img data-lazy="/images/slider/main-offer/main-offer-slide-7.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> beauty wand standing upright">
						</li>
					</ul>
					<div class="slider__controls">
						<div class="slider__nav">
							<button class="nav__item nav__item--left"></button>
							<button class="nav__item nav__item--right"></button>
						</div>
						<ul class="slider__paginav">
							<li>
								<div class="paginav__item">
									<img src="/images/slider/main-offer/main-offer-slide-1_thumb.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> cartridge boxes, beauty wand and cradle">
								</div>
							</li>
							<li>
								<div class="paginav__item">
									<img src="/images/slider/main-offer/main-offer-slide-2_thumb.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> beauty wand and cradle">
								</div>
							</li>
							<li>
								<div class="paginav__item">
									<img src="/images/slider/main-offer/main-offer-slide-3_thumb.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> cradle closed">
								</div>
							</li>
							<li>
								<div class="paginav__item">
									<img src="/images/slider/main-offer/main-offer-slide-4_thumb.png?appV=<%= DtmContext.ApplicationVersion %>" alt="<%= CampaignName %> cradle open with beauty wand">
								</div>
							</li>
							<li>
								<div class="paginav__item">
									<div data-src-img="/images/slider/main-offer/main-offer-slide-5.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> beauty wand open"></div>
								</div>
							</li>
							<li>
								<div class="paginav__item">
									<div data-src-img="/images/slider/main-offer/main-offer-slide-6.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> beauty wand side angle"></div>
								</div>
							</li>
							<li>
								<div class="paginav__item">
									<div data-src-img="/images/slider/main-offer/main-offer-slide-7.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> beauty wand standing upright"></div>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<%= Html.Partial("GetMBG") %>

			</div>

			<aside class="offer__aside">

                <div class="aside__video omit-placeholder-background" data-src-iframe="https://player.vimeo.com/video/274593332?title=0&byline=0&portrait=0" data-src-attr='{ "frameborder" : "0", "webkitallowfullscreen" : "true", "mozallowfullscreen" : "true", "allowfullscreen" : "true" }'></div>

				<div class="aside__list">
					<h2 class="aside__title">Product Details</h2>
					<ul class="aside__ul">
						<li>Make spots, imperfections and hyperpigmentation instantly disappear and helps fade their appearance over time</li>
						<li>Targets only imperfections leaving skin naturally luminous and flawless.</li>
						<li>Fast, gentle, and easy to use.</li>
						<li>Customized to match all skin tones</li>
						<li>Cartridges last 60 days with daily use and are delivered free every other month</li>
						<li>2 year warranty.</li>
					</ul>
		
					<div class="aside__center">
						<a href="#offer" class="button button--primary" title="Buy <%= CampaignName %> today!">
							<span>Add To</span><span>Cart</span>
						</a>
						<button data-href="#offerincludes" data-snippet-name="FORMTOP" class="button button--secondary get-modal get-modal--snippet" title="See what's included with our <%= CampaignName %> free trial">
							<span>What's</span><span>Included</span>
                        </button>
					</div>
				</div>

			</aside>

		</div>

	</section>


	<!-- // Use | Section -->
	<section id="how-to-use" class="section section--use" data-lazy-load-progressive="0.25" data-lazy-load-background>

		<div class="section__in">

			<h2 class="use__title"><%= CampaignName %> is so easy to use</h2>
			<h3 class="use__desc">Simply place it on your face and move from top to bottom...</h3>

			<div class="use__items">
				<figure class="use__item">
					<div class="use__img" data-src-img="/images/2.0000/step-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Step 1"></div>
					<figcaption>
						<em class="use__em">Step 1</em>
						<p>Attach the Tip to the Wand and gently place it so both rollers touch your skin lightly.</p>
					</figcaption>
				</figure>

				<figure class="use__item">
					<div class="use__img" data-src-img="/images/2.0000/step-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Step 2"></div>
					<figcaption>
						<em class="use__em">Step 2</em>
						<p>Keep the rollers gently touching your skin and move slowly up and down in long, slow, deliberate strokes.</p>
					</figcaption>
				</figure>

				<figure class="use__item">
					<div class="use__img" data-src-img="/images/2.0000/step-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Step 3"></div>
					<figcaption>
						<em class="use__em">Step 3</em>
						<p>Finish one section before moving onto the next. Multiple passes will add additional coverage for a flawless look.</p>
					</figcaption>
				</figure>
			</div>

			<a href="#offer" class="button button--primary" title="Order <%= CampaignName %> now">Add To Cart</a>
			<a href="tips<%= DtmContext.ApplicationExtension %>" class="button button--secondary" title="Find out what you can do with <%= CampaignName %>"><%= CampaignName %> Tips and Tricks</a>		

		</div>

	</section>


	<!-- // Works | Section -->
	<section class="section section--works section--line--top" data-lazy-load-progressive="0.25">

		<div class="section__in">

			<div class="works__grid grid--has-float-image">
				<div class="works__content">
					<h2 class="works__title">Reveal the most beautiful you.</h2>
					<div class="works__product set-transparent" data-src-img="/images/opte-product-shot.png?appV=<%= DtmContext.ApplicationVersion %>"></div>
					<p><%= CampaignName %> digitally scans skin, detects every spot, imperfection and hyperpigmentation instantly corrects each one with the tone-matching mineral pigments that make them virtually impossible to see and tone perfecting serum that actually helps fade their appearance away over time.</p>
					<p>It's not makeup, it's not air-brushing, it's the real you with the jaw dropping look of micro-perfected skin. Works on hands, neck or d&eacute;colletage too. Scan. Detect. Micro-Perfect!</p>
				</div>
			</div>

			<div class="works__grid grid--has-inline-columns">
				<div class="works__content">
					<h2 class="works__title">Superior Technology</h2>
                    <div class="works__video" data-src-iframe="https://player.vimeo.com/video/274593332?title=0&byline=0&portrait=0" data-src-attr='{ "frameborder" : "0", "webkitallowfullscreen" : "true", "mozallowfullscreen" : "true", "allowfullscreen" : "true" }'></div>
                    <p>
                        <span><%= CampaignName %> sees you and goes beyond today's beauty standards to give a custom solution with each use.</span>
                        <span>Today's solutions for age spots are inferior. <%= CampaignName %> goes beyond, to provide never before seen flawless skin.</span>
                    </p>
				</div>
			</div>

			<div id="how-it-works" class="works__section">
				<h2 class="works__title">How it targets</h2>
				<p class="works__desc">By combining the best of smart technology and skin care <%= CampaignName %> produces a superior solution for spots, imperfections and hyperpigmentation. Targeting only the affected areas, your skin looks and feels naturally flawless.</p>

				<%= Html.Partial("GetWorksGrid") %>
			</div>

			<div class="works__section">
				<h2 class="works__title">When to apply <%= CampaignName %></h2>
				<div class="works__illustration">
					<figure class="illustration__before" data-src-img="/images/before-opte.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Before <%= CampaignName %>; cleanse, treat, moisturize, SPF"></figure>
					<figure class="illustration__wand" data-src-img="/images/opte-beauty-wand.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> beauty wand"></figure>
					<figure class="illustration__after" data-src-img="/images/after-opte.png?appV=<%= DtmContext.ApplicationVersion %>1" data-alt="After <%= CampaignName %>; powder &amp; color cosmetics"></figure>
				</div>
			</div>

		</div>

	</section>


	<!-- // Ingredients | Section -->
	<section id="ingredients" class="section section--ing" data-lazy-load-progressive="0.25" data-lazy-load-background>

		<div class="box-line">
			<hr class="box-line__back">
			<a href="#offer" class="box-line__front button button--primary" title="Order <%= CampaignName %> today">Add To Cart</a>
		</div>

		<div class="section__in">

			<h2 class="ing__title"><span class="title__block">4 Key Ingredients</span></h2>

			<%= Html.Partial("GetIngredients") %>

			<div class="ing__grid">
				<div class="ing__content">
					<h2 class="ing__title">Better Skin Every Day</h2>
					<strong class="ing__strong">Skin appearance improves in just a short time</strong>
					<p>With daily use, results continue to improve.</p>
				</div>
				<div class="ing__graph">
					<figure class="graph__figure graph__figure--horz">
						<div class="graph__step graph__step--1"></div>
						<div class="graph__step graph__step--2"></div>
						<div class="graph__step graph__step--3"></div>
					</figure>
					<figcaption class="graph__figcaption">
						<figure class="graph__figure graph__figure--vert">
							<div class="graph__step graph__step--1"></div>
							<div class="graph__step graph__step--2"></div>
							<div class="graph__step graph__step--3"></div>
						</figure>
						<div class="graph__caption graph__caption--1">
							<strong class="ing__strong">Immediately</strong>
							<p>Spots instantly appear invisible</p>
						</div>
						<div class="graph__caption graph__caption--2">
							<strong class="ing__strong">Week 1-2</strong>
							<p>Skin feels noticeably smoother</p>
						</div>
						<div class="graph__caption graph__caption--3">
							<strong class="ing__strong">Week 4-6</strong>
							<p>Skin appears healthier looking</p>
						</div>
						<div class="graph__caption graph__caption--4">
							<strong class="ing__strong">Week 8-12</strong>
							<p>Spots appear faded</p>
						</div>
					</figcaption>
				</div>
			</div>

		</div>

	</section>


	<!-- // Ingredients | Section -->
	<section class="section section--results section--line" data-lazy-load-progressive="0.25">
		
		<div class="section__in">

			<h2 class="results__title">Real People. Real Results!</h2>

			<div class="results__slider">
				<em class="nav__instructions">Click on the pictures to see each woman's real transformation</em>
				<div class="slider__controls">
					<div class="controls__in">
						<button class="nav__item nav__item--top nav__item--is-hidden">
							<div data-src-img="/images/arrow-top.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Previous button"></div>
						</button>
						<ul class="slider__paginav">
							<li>
								<figure class="paginav__item">
									<div class="paginav__img" data-src-img="/images/slider/before-after/before-after-kate-v_thumb.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Kate V. using <%= CampaignName %>"></div>
									<figcaption>-Kate V.</figcaption>
								</figure>
							</li>
							<li>
								<figure class="paginav__item">
									<div class="paginav__img" data-src-img="/images/slider/before-after/before-after-lisa-s_thumb.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Lisa S. using <%= CampaignName %>"></div>
									<figcaption>-Lisa S.</figcaption>
								</figure>
							</li>
							<li>
								<figure class="paginav__item">
									<div class="paginav__img" data-src-img="/images/slider/before-after/before-after-nery-b_thumb.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Nery B. using <%= CampaignName %>"></div>
									<figcaption>-Nery B.</figcaption>
								</figure>
							</li>
							<li>
								<figure class="paginav__item">
									<div class="paginav__img" data-src-img="/images/slider/before-after/before-after-teresa-f_thumb.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Teresa F. using <%= CampaignName %>"></div>
									<figcaption>-Teresa F.</figcaption>
								</figure>
							</li>
							<li>
								<figure class="paginav__item">
									<div class="paginav__img" data-src-img="/images/slider/before-after/before-after-angelina-f_thumb.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Angelina F. using <%= CampaignName %>"></div>
									<figcaption>-Angelina F.</figcaption>
								</figure>
							</li>
							<li>
								<figure class="paginav__item">
									<div class="paginav__img" data-src-img="/images/slider/before-after/before-after-bridget-m_thumb.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Bridget M. using <%= CampaignName %>"></div>
									<figcaption>-Bridget M.</figcaption>
								</figure>
							</li>
						</ul>
						<button class="nav__item nav__item--bottom">
							<div data-src-img="/images/arrow-bottom.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Next button"></div>
						</button>
					</div>
				</div>
				<div class="slider__results">
					<ul class="slider" data-lazy-load-slider="results">
						<li>
							<figure class="slider__item">
								<figcaption class="slider__figcaption--grid">
									<span>Bare Skin</span>
									<span>After First Use</span>
								</figcaption>
								<div class="slider__img" data-src-img="/images/slider/before-after/before-after-kate-v.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Kate V. using <%= CampaignName %>"></div>
								<figcaption class="slider__figcaption--grid slider__figcaption--lc">
									<span>close up</span>
									<span>close up</span>
								</figcaption>
								<figcaption class="slider__figcaption">-Kate V.</figcaption>
							</figure>
						</li>
						<li>
							<figure class="slider__item">
								<figcaption class="slider__figcaption--grid">
									<span>Bare Skin</span>
									<span>After First Use</span>
								</figcaption>
								<div data-src-img="/images/slider/before-after/before-after-lisa-s.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Lisa S. using <%= CampaignName %>"></div>
								<figcaption class="slider__figcaption--grid slider__figcaption--lc">
									<span>close up</span>
									<span>close up</span>
								</figcaption>
								<figcaption class="slider__figcaption">-Lisa S.</figcaption>
							</figure>
						</li>
						<li>
							<figure class="slider__item">
								<figcaption class="slider__figcaption--grid">
									<span>Bare Skin</span>
									<span>After First Use</span>
								</figcaption>
								<div data-src-img="/images/slider/before-after/before-after-nery-b.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Nery B. using <%= CampaignName %>"></div>
								<figcaption class="slider__figcaption--grid slider__figcaption--lc">
									<span>close up</span>
									<span>close up</span>
								</figcaption>
								<figcaption class="slider__figcaption">-Nery B.</figcaption>
							</figure>
						</li>
						<li>
							<figure class="slider__item">
								<figcaption class="slider__figcaption--grid">
									<span>Bare Skin</span>
									<span>After First Use</span>
								</figcaption>
								<div data-src-img="/images/slider/before-after/before-after-teresa-f.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Teresa F. using <%= CampaignName %>"></div>
								<figcaption class="slider__figcaption--grid slider__figcaption--lc">
									<span>close up</span>
									<span>close up</span>
								</figcaption>
								<figcaption class="slider__figcaption">-Teresa F.</figcaption>
							</figure>
						</li>
						<li>
							<figure class="slider__item">
								<figcaption class="slider__figcaption--grid">
									<span>Bare Skin</span>
									<span>After First Use</span>
								</figcaption>
								<div data-src-img="/images/slider/before-after/before-after-angelina-f.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Angelina F. using <%= CampaignName %>"></div>
								<figcaption class="slider__figcaption--grid slider__figcaption--lc">
									<span>close up</span>
									<span>close up</span>
								</figcaption>
								<figcaption class="slider__figcaption">-Angelina F.</figcaption>
							</figure>
						</li>
						<li>
							<figure class="slider__item">
								<figcaption class="slider__figcaption--grid">
									<span>Bare Skin</span>
									<span>After First Use</span>
								</figcaption>
								<div data-src-img="/images/slider/before-after/before-after-bridget-m.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Bridget M. using <%= CampaignName %>"></div>
								<figcaption class="slider__figcaption--grid slider__figcaption--lc">
									<span>close up</span>
									<span>close up</span>
								</figcaption>
								<figcaption class="slider__figcaption">-Bridget M.</figcaption>
							</figure>
						</li>
					</ul>
					<em class="results__disc">No retouching has occurred on skin or spots.</em>
				</div>
			</div>

		</div>

	</section>


	<!-- // Banner | Section -->
	<section class="section section--banner bg--primary">
		
		<div class="section__in">

			<q class="banner__title"><span class="title__block">"...Flawless Look </span>I've Always Wanted."</q>

		</div>

	</section>


	<!-- // Review | Section -->
	<section id="testimonials" class="section section--review section--line" data-lazy-load-progressive="0.25">
		
		<div class="section__in">

			<div class="review__video" data-src-iframe="https://www.youtube.com/embed/L4Vfw-UKMok?modestbranding=1&showinfo=1&rel=0" data-src-attr='{ "frameborder" : "0", "allow" : "autoplay; encrypted-media", "allowfullscreen" : "true" }'></div>

			<div class="review__slider">
				<div class="slider__nav">
					<button class="nav__item nav__item--left"></button>
					<button class="nav__item nav__item--right"></button>
				</div>
				<ul class="slider__review" data-lazy-load-slider="review">
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>People think I have naturally great skin and what they don't know is that <%= CampaignName %> is my secret weapon that allows me to get this result every day.</p>
								</div>
								<!--<button class="button--collapse">Read more</button>-->
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Helen Yen</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>Love, love, love the Beauty Wand. It's like magic and gets rid of the dark spots and leaves behind beautiful, radiant, flawless skin.  I would recommend the Beauty Wand to everyone who has undesirable dark spots and wants to cover them.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Lisa E</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>I'm not one to ever try these types of products although I am open to them. I finally gave it a try and cannot be happier with the results. My face feels clean and natural every day. After 3 weeks, I noticed my skin discoloration start to fade. I would recommend this product to everyone who is skeptical about products just as I am.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Irais O</div>
							</footer>
						</blockquote>
					</li>

					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>The Beauty Wand is a true life changer. This product will give you a new and refreshing look. You will feel younger and look incredibly gorgeous. Your skin will make you look and feel 20 years younger. This product makes your age spots disappear in one sweep of the product. There is no turning back. Only looking younger. And feeling fabulous.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Annette E</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>This product is amazing it works like a magic eraser it really covers the appearance of the dark spots leaving behind smooth silky and radiant skin people actually tell the difference.</p>
								</div>
								<!--<button class="button--collapse">Read more</button>-->
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Aleina T</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>Easy to use, this beauty wand will make your skin look flawless. After using for a fee weeks, you can see noticeable changes on your skin. Dark spots will fade away and pores will look closed up. A most to have beauty gadget.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Ekaterina S</div>
							</footer>
						</blockquote>
					</li>

					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars") %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>The beauty wand is truly the most incredible beauty product I have ever used! You can see instant results from using it. It's super easy to use and I think it's fun to use. It incorporates very well into my skin care system and only takes a few minutes to use. I rarely even put foundation on my skin because my skin looks so good after using the beauty wand.I feel more confident because my skin looks younger, healthier, and more radiant. This product seems too good to be true, only it isn't!</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Julie S</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>This innovative machine uses cutting age technology to bring you the latest treatments in beauty care. Using this beauty wand gives you instant results that you can see within the first application of the product. If you are looking to clear, toned and a flawless complexion, the beauty wand is for you.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Nicole G</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>Great sheer coverage and feels natural. For full coverage and evening out redness, it isn't the best. I find u still need to use concealer in some areas to achieve the full coverage, flawless look I'm going for. However, it is a great, convenient product to use everyday and still feel natural.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Truongsa P</div>
							</footer>
						</blockquote>
					</li>

					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>I can honestly say that my sun spots have greatly diminished and my face looks a lot clearer. My skin does not look blotchy and my skin tone has improved to be more even. My face has also become a lot smoother and soft and does not look as tired. What I love most about the wand it's that I can wear  all of my regular makeup with the exception of foundation and my skin looks like I am wearing foundation. My skin from a distance looks very clean and fresh. The only downside to the beauty wand is that the wand does not work on red hyper pigmentation or red capillaries.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Glenda S</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>The beauty wand is a game changer to my skin care routine. The end result is a natural look and feel.</p>
								</div>
								<!--<button class="button--collapse">Read more</button>-->
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Lisa E</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>The Beauty Wand is a product for someone who wants a fresh and natural look to their make-up. It gently and efficiently coats the skin with a lightweight serum that subtly covers imperfections, such as age spots and sun damage.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Sara Z</div>
							</footer>
						</blockquote>
					</li>

					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>Easy to set up and simple to use. The wand and case are elegant looking.  When using the wand you glide lightly over the skin and it applies a thin layer of highlighter that makes all your flaws, discolorations and freckles seem to disappear.  You then can just look flawless and radiate without putting any other makeup on or you can continue and put on your regular makeup as usual.  Skin appears to be lighter and younger.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Barbara M</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 4 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>The beauty wand is a perfect addition to your daily routine. It provides you with a natural look that is perfect for an everyday look. The beauty wand allows you to use less makeup by naturally hiding your skin imperfections.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Irais O</div>
							</footer>
						</blockquote>
					</li>
					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 3 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>I would recommend this Beauty Wand to anyone who whats their age spots to be less noticeable.</p>
								</div>
								<!--<button class="button--collapse">Read more</button>-->
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Kathrin D</div>
							</footer>
						</blockquote>
					</li>

					<li>
						<blockquote class="review__user">
							<div class="user__rating">
								<%= Html.Partial("GetStars", null, new ViewDataDictionary {{ "rating", 3 }}) %>
							</div>
							<div class="user__review">
								<div class="user__text text--collapse">
									<p>The device looks very cool and modern. Doesnt take much room and its easy to use. It works pretty well as far as getting a fresh clean look after you use it, however i dont think it helps the problem area of the skin permanantly. It requires a little bit of practice to become easy and faster to use.</p>
								</div>
								<button class="button--collapse">Read more</button>
							</div>
							<footer class="user__footer">
								<div class="user__icon" data-src-img="/images/user-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="User icon"></div>
								<div class="user__name">Sharon T</div>
							</footer>
						</blockquote>
					</li>
				</ul>
				<nav class="slider__paginav slider__paginav--desktop">
					<ul>
						<li>
							<button class="paginav__dot paginav__dot--template"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
					</ul>
				</nav>
				<nav class="slider__paginav slider__paginav--mobile">
					<ul>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
						<li>
							<button class="paginav__dot"></button>
						</li>
					</ul>
				</nav>
			</div>

		</div>

	</section>


	<!-- // Dermatologist | Section -->
	<section class="section section--derm section--line--bottom" data-lazy-load-progressive="0.25" data-lazy-load-background>
		
		<div class="section__in">

			<div class="derm__grid">

				<div class="derm__content">
					<div class="derm__imgs">
						<div class="derm__img derm__img--1" data-src-img="/images/dr-fu.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Dr. Fu"></div>
						<div class="derm__img derm__img--2" data-src-img="/images/dr-fu-icon.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="American Acamedy of Dermatology (AAD)"></div>
						<div class="derm__img derm__img--3" data-src-img="/images/dr-fu-icon-cap.jpg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="CAP"></div>
					</div>
					<h3 class="derm__title">Professionally Acclaimed</h3>
					<p>Juian-Juian Fu, MD, PhD is a Fellow of the American Academy of Dermatology and has practiced dermatology and conducted skin research for over 30 years in the United States.</p>
				</div>

				<div class="derm__video" data-src-iframe="https://www.youtube.com/embed/595LTBPyVuQ?modestbranding=1&showinfo=1&rel=0" data-src-attr='{ "frameborder" : "0", "allow" : "autoplay; encrypted-media", "allowfullscreen" : "true" }'></div>
				
			</div>

		</div>

	</section>

	
	<%= Html.Partial("GetOffer") %>
	

</main>


<%-- // @FOOTER --%>
<%= Html.Partial("Footer") %>
<%= Html.Partial("GetDeferStyles") %>

<style>
    /*	Use | @Layout
    * --------------------------------------------------------------------- */
    .section--use {
        background: #dbc4ac;
        text-shadow: 0 1px 2px white;
        text-align: center;
        padding: 6rem 2rem;
    }

    .section--use[data-lazy-load-background="true"]:before {
        background: url(/images/bg_primary.png?appV=<%= DtmContext.ApplicationVersion %>) no-repeat;
        background-size: cover;
    }

    .use__title {
        font: bold 55px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        margin-bottom: 1rem;
    }

    .use__desc {
        font: 25px/1 'Sofia Pro Light', Helvetica, sans-serif;
        color: #191919;
    }

    .section--use .use__img {
        width: 224px;
        height: 221px;
        padding: 2px;
        background: white;
        border: 2px solid #ceb9a8;
    }

    .section--use .use__em {
        font-size: 30px;
    }

    .section--use .button:first-of-type {
        margin-right: 1.5rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 768px ) {
        .section--use {
            padding: 3rem 2rem;
        }
    }


    <%= Html.Partial("GetStyleModel_UseGrid") %>


    /*	Works | @Layout
    * --------------------------------------------------------------------- */
    .works__grid {
        position: relative;
        z-index: 1;
    }

    .works__grid:not(:last-of-type) {
        margin-bottom: 6.5rem;
    }
    
    .works__title {
        font: bold 55px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
    }

    .grid--has-float-image .works__title {
        width: 120%;
    }

    .grid--has-float-image .works__content {
        width: 51%;
    }

    .section--works p {
        font: 18px/1.45 'Sofia Pro Light', Helvetica, sans-serif;
        margin-bottom: 1.5rem;
    }

    .section--works p > span {
        display: block;
        margin-bottom: 0.75rem;
    }

    .works p:last-of-type {
        margin-bottom: 0;
    }

    .works__product {
        width: 508px;
        height: 289px;
        position: absolute;
        right: -1.5rem;
        bottom: 0;
    }

    .grid--has-inline-columns .works__content,
    .grid--has-inline-columns .works__video {
        display: inline-block;
        vertical-align: top;
    }

    .grid--has-inline-columns .works__content {
        width: 55%;
        padding-left: 2rem;
    }

    @media all and ( min-width : 993px ) {
        .works__title {
            margin-bottom: 1.5rem;
        }

        .grid--has-inline-columns {
            display: flex;
            flex-flow: row wrap;
            justify-content: flex-end;
        }

        .grid--has-inline-columns .works__content {
            width: 58%;
            display: block;
        }

        .grid--has-inline-columns .works__video {
            position: absolute;
            left: 0;
            top: 0;
            bottom: 0;
            margin: auto;
        }

        @supports ( display : grid ) {
            .grid--has-inline-columns {
                display: block;
            }

            .grid--has-inline-columns .works__content {
                width: 100%;
                display: grid;
                grid-template-columns: auto auto;
                grid-template-rows: auto auto;
                grid-column-gap: 2rem;
                padding-left: 0;
            }

            .grid--has-inline-columns .works__title {
                grid-column-start: 2;
                grid-row-start: 1;
            }

            .grid--has-inline-columns .works__video {
                position: relative;
                grid-column-start: 1;
                grid-row-start: 1;
                grid-row-end: 3;
            }

            .grid--has-inline-columns p {
                grid-column-start: 2;
                grid-row-start: 2;
            }
        }
    }

    .works__video,
    .works__video > iframe {
        width: 420px;
        height: 231px;
    }

    .works__section {
        text-align: center;
    }

    .works__section .works__desc {
        margin-bottom: 2.5rem;
    }


    <%= Html.Partial("GetStyleModel_WorksGrid") %>


    /*	Works | @Layout
    * --------------------------------------------------------------------- */
    @media all and ( min-width : 993px ) {
        .works__illustration {
            display: table;
            width: 99%;
            margin: auto;
        }

        .works__illustration figure {
            display: table-cell;
        }

        .works__illustration figure {    
            vertical-align: top;
        }
    }

    .works__illustration {
        margin-top: 1rem;
    }

    .illustration__before {
        width: 525px;
        height: 299px;
    }

    .illustration__wand {
        width: 216px;
        height: 395px;
    }

    .illustration__after {
        width: 236px;
        height: 299px;
        padding-top: 1.25rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .section--works {
            padding: 3rem 2vw;
        }

        .section--works p {
            margin: 1rem 0;
        }

        .works__grid p {
            margin-top: 1.5rem;
        }

        .works__grid:not(:last-of-type) {
            margin-bottom: 4rem;
        }

        .grid--has-float-image .works__content,
        .grid--has-float-image .works__title,
        .grid--has-inline-columns .works__content {
            width: 100%;
            text-align: center;
            padding: 0;
        }

        .works__product {
            position: relative;
            right: 0;
            margin: auto;
            width: 66.14583333333334vw;
            height: 37.630208333333336vw;
        }

        .works__video, 
        .works__video > iframe {
            width: 95.83333333333334vw;
            height: 53.77604166666667vw;
        }

        .works__title {
            font-size: 8vw;
        }

        .works__grid .works__title {
            margin: 0 2vw 1.5rem;
        }

        .illustration__before,
        .illustration__wand,
        .illustration__after {
            margin: auto;
        }
    }

    @media all and ( max-width : 600px ) {
        .illustration__before {
            width: 87.5vw;
            height: 49.833333333333336vw;
        }
    }


    /*	Box Line | @Model
    * --------------------------------------------------------------------- */
    .box-line,
    .box-line__front {
        position: relative;
        text-align: center;
    }

    .box-line hr {
        width: 100%;
        height: 3px;
        background: #d3d3d3;
    }

    .box-line__back {
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        margin: auto;
    }


    /*	Ing | @Layout
    * --------------------------------------------------------------------- */
    @media all and ( min-width : 993px ) {
        .section--ing {
            padding: 0 0 6rem;
        }
    }

    .section--ing {
        text-align: center;
    }

    .section--ing[data-lazy-load-background="true"]:before,
    .section--derm[data-lazy-load-background="true"]:before {
        background: url(/images/bg_secondary.png?appV=<%= DtmContext.ApplicationVersion %>) no-repeat;
        background-size: cover;
    }

    .ing__title {
        font: bold 40px/1.15 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        display: block;
        margin: 6rem 0 3rem;
    }

    <%= Html.Partial("GetStyleModel_Ingredients") %>


    /*	Ing Grid | Ing | @Layout
    * --------------------------------------------------------------------- */
    .ing__grid {
        font-size: 15px;
        text-align: left;
    }

    .ing__strong {
        text-transform: uppercase;
        display: block;
        font-family: 'Sofia Pro SemiBold', sans-serif;
    }

    .ing__content .ing__strong {
        margin-bottom: 0.75rem;
    }

    .ing__content,
    .ing__graph {
        display: inline-block;
        vertical-align: bottom;
    }

    @media all and ( min-width : 993px ) {
        .ing__content {
            width: 30%;
        }

        .ing__graph {
            width: 64%;
        }
    }

    .ing__graph {
        margin: 2rem;
    }

    .graph__figure {
        font-size: 1.3rem;
        border-spacing: 0.25em;
        width: 84%;
    }

    .graph__figcaption {
        margin-top: 1.5rem;
    }

    .graph__step {
        vertical-align: middle;
        padding: 1em;
    }

    .graph__caption {
        vertical-align: top;
        padding: 0.25em;
    }

    .graph__caption .ing__strong {
        margin-bottom: 0.25rem;
    }

    .graph__caption p {
        line-height: 1.35;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .ing__content {
            text-align: center;
        }

        .ing__grid .ing__title {
            padding-top: 5rem;
            line-height: 1;
            margin: 0 11vw;
        }

        @supports ( display : grid ) {
            .ing__graph {
                position: relative;
                display: block;
            }

            .graph__figure--horz {
                display: none;
            }

            .graph__figcaption {
                display: grid;
                grid-gap: 0 1rem;
                grid-template-columns: auto auto auto;
                grid-template-rows: auto auto auto auto;
                margin: 4.5rem 0;
            }

            .graph__figure:not(.graph__figure--horz) {
                width: 3rem;
                margin: auto;

                grid-column-start: 2;
                grid-row-start: 1;
                grid-row-end: 4;

                display: flex;
                flex-flow: row wrap;
                flex-direction: column;
            }

            .graph__step {
                flex-grow: 1;
                margin: 0.15rem 0;
                min-height: 10rem;
            }

            .graph__figure--vert .graph__step--1 {
                border-radius: 7px 7px 0 0;
                background-image: -o-linear-gradient(top,hsl(35, 74%, 76%) 0,hsl(35, 43%, 66%) 100%);
                background-image: -webkit-gradient(linear,left bottom,left top,from(hsl(35, 74%, 76%)),to(hsl(35, 43%, 66%)));
                background-image: linear-gradient(0deg,hsl(35, 74%, 76%),hsl(35, 43%, 66%));
            }

            .graph__figure--vert .graph__step--2 {
                background-image: -o-linear-gradient(bottom,hsl(35, 87%, 79%) 0,hsl(35, 73%, 75%) 100%);
                background-image: -webkit-gradient(linear,left bottom,left top,from(hsl(35, 87%, 79%)),to(hsl(35, 73%, 75%)));
                background-image: linear-gradient(0deg,hsl(35, 87%, 79%),hsl(35, 73%, 75%));       
            }

            .graph__figure--vert .graph__step--3 {
                background-image: -o-linear-gradient(top,hsl(41, 100%, 87%) 0,hsl(35, 86%, 78%) 100%);
                background-image: -webkit-gradient(linear,left bottom,left top,from(hsl(41, 100%, 87%)),to(hsl(35, 86%, 78%)));
                background-image: linear-gradient(0deg,hsl(41, 100%, 87%),hsl(35, 86%, 78%));
                border-radius: 0 0 7px 7px;
            }

            .graph__caption {
                width: 100%;
                display: block;
                padding: 0.5rem 0;
            }

            .graph__caption--1,
            .graph__caption--3 {
                text-align: right;
            }

            .graph__caption--1 {
                grid-column-start: 1;
            }

            .graph__caption--2 {
                grid-column-start: 3;
                grid-row-start: 2;
            }

            .graph__caption--3 {
                grid-row-start: 3;
                grid-column-start: 1;
            }

            .graph__caption--4 {
                grid-column-start: 3;
                grid-row-start: 4;
            }
        }
    }

    @media all and ( min-width : 993px ) {
        .graph__figure--vert {
            display: none;
        }

        .graph__figure:not(.graph__figure--vert),
        .graph__figcaption {
            display: table;
        }

        .graph__step,
        .graph__caption {
            display: table-cell;
        }

        .graph__figure--horz .graph__step--1 {
            width: 25%;
            border-radius: 7px 0 0 7px;
            background-image: -o-linear-gradient(top,hsl(35, 74%, 76%) 0,hsl(35, 43%, 66%) 100%);
            background-image: -webkit-gradient(linear,right top,left top,from(hsl(35, 74%, 76%)),to(hsl(35, 43%, 66%)));
            background-image: linear-gradient(-90deg,hsl(35, 74%, 76%),hsl(35, 43%, 66%));
        }

        .graph__figure--horz .graph__step--2 {
            background-image: -o-linear-gradient(bottom,hsl(35, 87%, 79%) 0,hsl(35, 73%, 75%) 100%);
            background-image: -webkit-gradient(linear,left bottom,left top,from(hsl(35, 87%, 79%)),to(hsl(35, 73%, 75%)));
            background-image: linear-gradient(0deg,hsl(35, 87%, 79%),hsl(35, 73%, 75%));
        }

        .graph__figure--horz .graph__step--3 {
            background-image: -o-linear-gradient(top,hsl(41, 100%, 87%) 0,hsl(35, 86%, 78%) 100%);
            background-image: -webkit-gradient(linear,right top,left top,from(hsl(41, 100%, 87%)),to(hsl(35, 86%, 78%)));
            background-image: linear-gradient(-90deg,hsl(41, 100%, 87%),hsl(35, 86%, 78%));
            border-radius: 0 7px 7px 0;
        }

        .graph__caption--1 {
            width: 21%;
        }

        .graph__caption--2 {
            width: 31%;
        }

        .graph__caption--3 {
            width: 32%;
        }
    }


    /*	Results | @Layout
    * --------------------------------------------------------------------- */
    .section--results {
        text-align: center; 
        padding: 6rem 0;
    }

    .results__title {
        font: bold 55px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        margin-bottom: 5rem;
    }

    .results__disc {
        font-size: 1.6rem;
        text-align: right;
        text-transform: uppercase;
        display: block;
        margin-top: 0.5rem;
    }

    .results__slider .controls__in {
        display: inline-block;
        text-align: center;
    }

    .results__slider .slider__paginav > li:nth-child(1n+4) {
        opacity: 0;
        visibility: hidden;
        position: absolute;
    }

    .results__slider .nav__item {
        width: 50px;
        height: 29px;
        padding: 0;
    }

    .results__slider .nav__item,
    .results__slider .nav__instruction {
        -webkit-transition: opacity 250ms ease-in-out;
        -moz-transition: opacity 250ms ease-in-out;
        -o-transition: opacity 250ms ease-in-out;
        transition: opacity 250ms ease-in-out;
    }
    
    .results__slider .nav__item--top {
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        -ms-transform: rotate(180deg);
        transform: rotate(180deg);
        margin-bottom: 1.5rem;
    }

    .results__slider .nav__item--bottom {
        margin-top: 1.5rem;
    }

    .results__slider .nav__instructions {
        display: block;
        margin-bottom: 2rem;
        font-size: 1.6rem;
    }

    .results__slider .paginav__img,
    .results__slider .paginav__img > img {
        margin: auto;
    }

    @media all and ( min-width : 1025px ) {
        .nav__instructions--is-hidden,
        .nav__item--is-hidden {
            opacity: 0;
        }

        .results__slider .slider__controls,
        .results__slider .slider__results {
            display: inline-block;
            vertical-align: top;
        }

        .results__slider .controls__in {
            margin-top: -4.75rem;
        }

        .results__slider .slider__controls {
            width: 25%;
            text-align: left;
            padding-right: 27%;
        }

        .results__slider .nav__instructions {
            text-align: left;
            width: 25%;
        }

        .results__slider .paginav__item {
            margin-bottom: 5px;
        }

        .results__slider .paginav__img,
        .results__slider .paginav__img > img {
            width: 129px;
            height: 182px;
        }

        .results__slider .slider__img,
        .results__slider .slider__img > img {
            width: 686px;
            height: 651px;
        }

    }

    .results__slider .paginav__item,
    .results__slider .slider__item {
        display: inline-block;
        border: 2px solid #4f4344;
    }

    .results__slider .paginav__item {
        padding: 5px 5px 0;
        transition: border-color 250ms ease-in-out;
    }

    .results__slider .paginav__item figcaption {
        font: 1.4rem/1 'Sofia Pro Regular', Helvetica, sans-serif;
        margin: 0.5rem 0 0.25rem;
        text-align: right;
        text-transform: uppercase;
    }

    .slider__results {
        max-width: 720px;
    }

    .results__slider .slider__item {
        padding: 15px;
        font-family: 'Sofia Pro Regular', Helvetica, sans-serif;
        line-height: 1;
        text-transform: uppercase;
        text-align: right;
    }
    
    .results__slider .slider__figcaption--grid {
        display: table;
        width: 100%;
        margin: 0.75rem 0;
    }

    .results__slider .slider__figcaption--grid > span {
        display: table-cell;
        width: 50%;
    }

    .results__slider .slider__figcaption--lc > span {
        text-transform: lowercase;
        font-size: 1em;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .section--results {
            padding: 4rem 0;
        }

        .results__title {
            font-size: 7vw;
            margin: 0 14vw 1rem;
        }

        .results__slider .paginav__item figcaption {
            font-size: 1rem;
        }
    }

    @media all and ( min-width : 0 ) and ( max-width : 1024px ) {
        .results__slider,
        .results__slider .slider__paginav {
            width: 74vw;
            margin: auto;
        }

        .results__slider .slider__paginav > li {
            display: inline-block;
            vertical-align: middle;
        }

        .results__slider .paginav__item {
            margin: 5px 1px;
        }

        .results__slider .slick-slide .paginav__item {
            display: block;
            margin: 0 5px;
        }

        .results__slider .paginav__img,
        .results__slider .paginav__img > img {
            width: 19.1vw;
            height: 27vw;
        }

        .results__slider .paginav__img.has-image,
        .results__slider .paginav__img.has-image img {
            width: 100% !important;
            height: auto !important;
            max-width: 19.1vw;
        }

        .results__slider .nav__item {
            position: absolute;
            top: 0;
            bottom: 0;
            margin: auto;
            opacity: 1;
        }

        .results__slider .nav__item--top {
            left: -5rem;
            -webkit-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            transform: rotate(90deg);            
        }

        .results__slider .nav__item--bottom {
            right: -5rem;
            -webkit-transform: rotate(270deg);
            -moz-transform: rotate(270deg);
            transform: rotate(270deg);
        }

        .slider__results {
            margin: auto;
        }

        .results__slider .slider__img,
        .results__slider .slider__img > img {
            width: 66.9921875vw;
            height: 63.57421875vw;
        }

        .results__slider .slider__item {
            font-size: 1.6rem;
            padding: 1rem;
        }
    }

    @media all and ( min-width : 1025px ) {
        .results__slider .paginav__item figcaption {
            font-size: 1.4rem;
        }
    }


    /*	Banner | @Layout
    * --------------------------------------------------------------------- */
    .banner__title {
        font: bold 40px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        text-align: center;
        text-shadow: 0 1px 2px white;
        display: block;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .banner__title {
            font-size: 7vw;
            margin: auto;
        }
    }


    /*	Review | @Layout
    * --------------------------------------------------------------------- */
    .section--review {
        text-align: center;
    }

    .review__video,
    .review__video > iframe {
        margin: auto;
    }

    @media all and ( min-width : 0 ) and ( max-width : 1024px ) {
        .section--review {
            padding: 4rem 2vw;
        }

        .review__video,
        .review__video > iframe {
            width: 95.671875vw;
            height: 53.804688vw;
        }

        .review__slider .nav__item,
        .review__slider .slider__paginav--desktop {
            display: none;
        }
    }

    @media all and ( min-width : 1025px ) {
        .review__slider .slider__paginav--mobile {
            display: none;
        }

        .review__video,
        .review__video > iframe {
            width: 908px;
            height: 510px;
            margin: auto;
        }

        .review__slider .nav__item {
            width: 27px;
            height: 100%;
            -moz-background-size: 27px 44px;
            -webkit-background-size: 27px 44px;
            background-size: 27px 44px;
            background-color: transparent;
            position: absolute;
        }

        .review__slider .nav__item--left {
            left: -2rem;
        }

        .review__slider .nav__item--right {
            right: -2rem;
        }
    }

    .review__slider {
        position: relative;
        margin: 3rem 0 1rem;
    }

    .slider__review li {
        display: inline-block;
        vertical-align: top;
        width: 27%;
        padding: 0;
        margin: 3%;
    }

    .slider__review > li:nth-child(1n+4) {
        opacity: 0;
        position: absolute;
        top: 0;
        visibility: hidden;
        z-index: -1;
    }

    .review__user {
        display: block;
        vertical-align: top;
        font: 1.4rem/1.5 'Sofia Pro Regular', Helvetica, sans-serif;
    }

    .slider__review .star__item {
        width: auto;
        padding: 0;
        margin: 0;
    }

    .user__review p {
        line-height: 1.5;
    }

    .user__review {
        margin: 2.5rem 0 3.5rem;
    }

    .text--collapse {
        height: 9em;
        overflow: hidden;
        position: relative;
    }

    .user__text:after {
        position: absolute;
        bottom: 0;
        width: 100%;
        height: 1.5em;
        background: -o-linear-gradient(top,hsla(0,0%,100%,0),#fff);
        background: -webkit-gradient(linear,left top,left bottom,from(hsla(0,0%,100%,0)),to(#fff));
        background: linear-gradient(180deg,hsla(0,0%,100%,0),#fff);
        font-size: 1em;
        content: '';
        display: block;
    }

    .button--collapse {
        text-decoration: underline;
        border: none;
        background: none;
        cursor: pointer;
        padding: 0;
    }

    .user__name {
        text-transform: uppercase;
        margin-top: 1rem;
    }

    .user__rating .star__icon,
    .user__rating .star__icon > img {
        width: 16px;
        height: 16px;
    }

    .user__icon,
    .user__icon > img {
        width: 30px;
        height: 30px;
        margin: auto;
    }

    .review__slider .slider__paginav {
        text-align: center;
    }

    .review__slider .paginav__dot {
        width: 10px;
        height: 10px;
        background: #4f4344;
        border-radius: 100%;
        cursor: pointer;
        border: none;
        padding: 0;
    }

    .review__slider ul:not(.slick-dots) .paginav__dot--template,
    .review__slider .slick-dots .slick-active .paginav__dot,
    .review__slider .slider__paginav--mobile .slick-current .paginav__dot {
        width: 20px;
        height: 20px;
        border: 1px solid #4f4344;
        background: #fff;
    }

    .review__slider .slider__paginav li {
        display: inline-block;
        vertical-align: middle;
        padding: 0;
        margin: 0 5px;
        list-style: none;
    }

    .review__slider .slick-dots li {
        margin: 0 7px;
    }

    .slider__paginav--mobile ul {
        width: 70vw;
        margin: auto;
    }


    /*	Stars | @Model
    * --------------------------------------------------------------------- */
    .star__list {
        list-style: none;
    }

    .star__item {
        display: inline-block;
        vertical-align: middle;
    }


    /*	Dermatologist | @Layout
    * --------------------------------------------------------------------- */
    .derm__content,
    .derm__video,
    .derm__img {
        display: inline-block;
        vertical-align: middle;
    }

    .derm__img--1 {
        width: 124px;
        height: 124px;
    }

    .derm__img--2 {
        width: 68px;
        height: 69px;
        margin: 0 2rem;
    }

    .derm__img--3 {
        width: 69px;
        height: 69px;
    }

    .derm__title {
        font: 1.8rem/1 'Sofia Pro Semibold', 'Sofia Pro Regular', Helvetica, sans-serif;
        text-transform: uppercase;
        display: block;
        margin: 3.5rem 0 2rem;
    }

    .derm__content p {
        line-height: 1.35;
    }

    @media all and ( min-width : 0 ) and ( max-width : 1024px ) {
        .section--derm {
            padding: 4rem 2vw;
        }

        .derm__content {
            text-align: center;
            width: 100%;
            padding-bottom: 3rem;
        }

        .derm__video,
        .derm__video > iframe {
            width: 96vw;
            height: 53.75vw;
        }
    }

    @media all and ( min-width : 1025px ) {
        .section--derm {
            padding: 6rem 0;
        }

        .derm__content {
            width: 40%;
            padding-right: 3rem;
        }

        .derm__video,
        .derm__video > iframe {
            width: 595px;
            height: 334px;
        }
    }
</style>

<script>

	function onAppReady (app) {
        var mainVideoLoaded = false;

        app.getIframe.call($('.aside__video'));

		// private event : when slick is ready, apply to all placeholder sliders
		app.$window.on('slick:ready', function (e) {
			$('.offer__slider .paginav__item [data-src-img]').each(app.getImage);

			$('.slider__offer').slick({
				lazyLoad : 'progressive',
				slidesToShow : 1,
				mobileFirst : true,
				slidesToScroll : 1,
				arrows : false,
				fade : true,
				asNavFor : '.offer__slider .slider__paginav'
			});

			$('.offer__slider .slider__paginav').slick({
				lazyLoad : 'ondemand',
				slidesToShow : 4,
				slidesToScroll : 1,
				mobileFirst : true,
				infinite : true,
				prevArrow : $('.offer__slider .nav__item--left'),
				nextArrow : $('.offer__slider .nav__item--right'),
				asNavFor : '.slider__offer',
				centerMode : true,
				focusOnSelect : true,
				accessibility : true,
				centerPadding : '15%',
				responsive : [
					{
						breakpoint : 992,
						settings : {
							centerPadding : '50px'
						}
					}
				]
			});
		});

		app.$window.on('slick:progressive:results', function (e) {
            var $slider = $('.slider__results .slider');

            $slider.slick({
                lazyLoad : 'progressive',
                slidesToShow : 1,
                slidesToScroll : 1,
                arrows : false,
                fade : true,
                asNavFor : '.results__slider .slider__paginav'
            });

            $('.results__slider .slider__paginav').slick({
                lazyLoad : 'ondemand',
                slidesToShow : 3,
                slidesToScroll : 1,
                mobileFirst : true,
                prevArrow : $('.results__slider .nav__item--top'),
                nextArrow : $('.results__slider .nav__item--bottom'),
                asNavFor : '.slider__results .slider',
                focusOnSelect : true,
                accessibility : true,
                responsive : [
                    {
                        breakpoint : 1024,
                        settings : {
                            vertical : true
                        }
                    }
                ]
            });

            // private event : capture 1st navigation and animate out the tip
            $slider.one('beforeChange', function (event, slick, currentSlide, nextSlide) {
                $('.results__slider .nav__instructions').addClass('nav__instructions--is-hidden');
                $('.results__slider .nav__item--top').removeClass('nav__item--is-hidden');
            });
		});

		app.$window.on('slick:progressive:review', function (e) {
            var $slider = $('.review__slider .slider__review');

            $slider.slick({
                lazyLoad : 'progressive',
                infinite : true,
                slidesToShow : 1,
                slidesToScroll : 1,
                mobileFirst : true,
                focusOnSelect : false,
                accessibility : true,
                arrows : false,
                dots : false,
                asNavFor : '.review__slider .slider__paginav--mobile > ul',
                responsive : [
                    {
                        breakpoint : 1024,
                        settings : {
                            arrows : true,
                            dots : true,
                            slidesToShow : 3,
                            slidesToScroll : 3,
                            prevArrow : $('.review__slider .nav__item--left'),
                            nextArrow : $('.review__slider .nav__item--right'),
                            appendDots : $('.review__slider .slider__paginav--desktop'),
                            customPaging : function (slider, i) {
                                return $('.review__slider .paginav__dot:first').get(0);
                            }
                        }
                    }
                ]
            });

            $('.review__slider .slider__paginav--mobile > ul').slick({
                slidesToShow : 6,
                slidesToScroll : 1,
                mobileFirst : true,
                arrows : false,
                dots : false,
                asNavFor : '.slider__review',
                focusOnSelect : true,
                centerMode : true,
                accessibility : true
            });

            $slider.find('.button--collapse').on('click', function () {
                var $user__text = $(this).prev();
                $user__text.toggleClass('text--collapse');
                $(this).text($user__text.hasClass('text--collapse') ? 'Read more' : 'Collapse');
            });
		});
	}
	
</script>

</asp:Content>