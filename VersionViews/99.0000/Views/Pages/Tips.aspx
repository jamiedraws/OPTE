<%@ Page Language="C#" MasterPageFile="~/VersionViews/2.0000/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<header class="header">

    <div class="header__in">

        <%-- // @HEADER --%>
        <%= Html.Partial("Header") %>

        <div class="hero__section">
            <h1 class="hero__title">Tips & Tricks</h1>
        </div>
        
    </div>

</header>

<%-- // @MAIN --%>
<main class="main">

	<!-- // Tips | Section -->
	<section class="section section--tips section--line--bottom" data-lazy-load-progressive="0.25">

		<div class="section__in">
            <h2 class="tips__title">Tutorial</h2>
            <div data-src-iframe class="section__offset">
                <iframe class="section__video fade-content-in" src="https://www.youtube.com/embed/hEo6SwIq3Zc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>

            <h2 class="tips__title">Tips & Tricks</h2>
            <div data-src-iframe class="section__offset">
                <iframe class="section__video fade-content-in" src="https://www.youtube.com/embed/CoeVT4MefEE?modestbranding=1&showinfo=1&rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>
        </div>

    </section>


	<!-- // Instruction | Section -->
	<section class="section section--tips" data-lazy-load-progressive="0.25">

        <div class="section__in">
            <div class="section__video section__offset section__offset--align" data-src-iframe="https://www.youtube.com/embed/ug0GxvasNmU?modestbranding=1&showinfo=1&rel=0" data-src-attr='{ "frameborder" : "0", "allow" : "autoplay; encrypted-media", "allowfullscreen" : "true" }'></div>
        </div>

    </section>
    

    <!-- // Banner | Section -->
	<section class="section section--ins use-gradient-bg" data-lazy-load-progressive="0.25">

        <div class="section__in">

            <div class="ins__grid">
                <h2 class="ins__title">Using continuous strokes. Finish one section of your face before moving on to the next.</h2>
        
                <div class="ins__img" data-src-img="/images/instructions_bg.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Model instructional illustration using <%= CampaignName %>"></div>
            </div>

        </div>
    
    </section>


    <!-- // Technique | Section -->
	<section class="section section--tech section--line--bottom" data-lazy-load-progressive="0.25">

        <div class="section__in">

            <div class="hero__section">
                <h1 class="hero__title">Application Techniques</h1>
            </div>

            <div class="tech__grid">
                <div class="tech__desc">
                    <ul class="tech__list">
                        <li>
                            <div class="list__img" data-src-img="/images/icon-slow.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Move slow"></div>
                            <div class="list__desc">
                                <em>Slow</em>
                                <p>The slower you move, the better the results.</p>
                            </div>
                        </li>
                        <li>
                            <div class="list__img" data-src-img="/images/icon-sweep.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Sweep continuously"></div>
                            <div class="list__desc">
                                <em>Sweep</em>
                                <p>Use long, continuous sweeping strokes up and down the face. Don't remove the Wand from your skin between strokes.</p>
                            </div>
                        </li>
                        <li>
                            <div class="list__img" data-src-img="/images/icon-soft.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Use gentle pressure"></div>
                            <div class="list__desc">
                                <em>Soft</em>
                                <p>Use gentle pressure. If you see your skin move or have any indentations from the rollers, you are pushing too hard.</p>
                            </div>
        
                        </li>
                        <li>
                            <div class="list__img" data-src-img="/images/icon-straight.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Hold beauty wand straight"></div>
                            <div class="list__desc">
                                <em>Straight</em>
                                <p>Hold the Beauty Wand flat with both rollers touching the skin. Tilting the rollers reduces effectiveness.</p>
                            </div>
                        </li>
                        <li>
                            <div class="list__img" data-src-img="/images/icon-sequence.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Repeat the process"></div>
                            <div class="list__desc">
                                <em>Sequence</em>
                                <p>Complete multiple passes to build up more coverage. Allow the Serum to dry for a few seconds between passes.</p>
                            </div>
                        </li>
                    </ul>
                </div>
    
                <div class="tech__img" data-src-img="/images/opte-beauty-wand-tech.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> beauty wand"></div>
            </div>

        </div>
    
    </section>


	<!-- // User Advice | Section -->
	<section class="section section--user section--line--bottom" data-lazy-load-progressive="1">

        <div class="section__in">

            <div class="hero__section">
                <h1 class="hero__title"><span class="title__block">Advice </span>From Users</h1>
            </div>

            <h2 class="tips__title">Silvia L.</h2>
            <div class="section__video section__offset" data-src-iframe="https://www.youtube.com/embed/Tv8j_kykptE?modestbranding=1&showinfo=1&rel=0" data-src-attr='{ "frameborder" : "0", "allow" : "autoplay; encrypted-media", "allowfullscreen" : "true" }'></div>

            <h2 class="tips__title">Lisa E.</h2>
            <div class="section__video section__offset" data-src-iframe="https://www.youtube.com/embed/tatjjrvVWro?modestbranding=1&showinfo=1&rel=0" data-src-attr='{ "frameborder" : "0", "allow" : "autoplay; encrypted-media", "allowfullscreen" : "true" }'></div>

            <div class="hero__section user__start">
                <h1 class="hero__title"><span class="title__block">Getting Started</h1>

                <nav class="start__nav">
                    <a href="#setup" class="nav__current" title="Learn how to set up <%= CampaignName %>">Set Up</a>
                    <a href="#reload" title="Find out how to reload <%= CampaignName %>">Reload</a>
                    <a href="#charge" title="See how to charge <%= CampaignName %>">Charge</a>
                </nav>

                <div class="start__container">
                    <div id="setup" class="start__item setup__slider start__item--current">
                        <nav class="slider__nav">
                            <button class="nav__item nav__item--prev" data-src-img="/images/setup_arrow_left.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Previous"></button>
                            <button class="nav__item nav__item--next" data-src-img="/images/setup_arrow_right.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Next"></button>
                        </nav>
                        <div class="slider slider__setup" data-lazy-load-slider="setup">
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration of an open <%= CampaignName %> cradle"></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 1</em>
                                    <p>After plugged in cradle AUTO-UNLOCKS. Manually lift lid.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration of an open <%= CampaignName %> cradle tip tray"></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 2</em>
                                    <p>Lift off Tip Tray.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration of an open <%= CampaignName %> refill kit"></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 3</em>
                                    <p>Open Refill Kit and remove Preserving Disk.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-4.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration inserting the <%= CampaignName %> preserving disk."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 4</em>
                                    <p>Insert Preserving Disk.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-5.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration replacing the <%= CampaignName %> Tip Tray."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 5</em>
                                    <p>Replace Tip Tray.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-6.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration showing the backside of <%= CampaignName %> Beauty Wand."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 6</em>
                                    <p>Flip Beauty Wand so that the back is facing up.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-7.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration sliding down the <%= CampaignName %> Beauty Wand."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 7</em>
                                    <p>Slide the back down to open.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-8.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration removing the <%= CampaignName %> Perfecting Pod."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 8</em>
                                    <p>Remove Tone Perfecting Pod from Refill Kit and slide Tone Perfecting Pod from packaging ring.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-9.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration inserting the <%= CampaignName %> Tone Perfecting Pod into Beauty Wand."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 9</em>
                                    <p>Insert Tone Perfecting Pod into Beauty Wand arrow side up.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/setup/setup-slide-10.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration sliding the <%= CampaignName %> Beauty Wand shut."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 10</em>
                                    <p>Slide the Beauty Wand shut.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>

                    <div id="reload" class="start__item reload__slider">
                        <nav class="slider__nav">
                            <button class="nav__item nav__item--prev" data-src-img="/images/setup_arrow_left.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Previous"></button>
                            <button class="nav__item nav__item--next" data-src-img="/images/setup_arrow_right.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Next"></button>
                        </nav>
                        <div class="slider slider__reload" data-lazy-load-slider="reload">
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration of the <%= CampaignName %> cartridge."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 1</em>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration showing the <%= CampaignName %> Preserving Disk."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 2</em>
                                    <p>Lift Tip Tray to remove Preserving Disk.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration removing the <%= CampaignName %> Preserving Disk."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 3</em>
                                    <p>Remove empty Preserving Disk from Cradle.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-4.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration placing a new <%= CampaignName %> Preserving Disk into Cradle."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 4</em>
                                    <p>Place new Preserving Disk into Cradle.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-5.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration placing the <%= CampaignName %> Tip Tray into Cradle."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 5</em>
                                    <p>Return the Tip Tray to Cradle.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-6.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration removing the <%= CampaignName %> Tone Perfecting Pod."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 6</em>
                                    <p>Flip Beauty Wand over and slide down the back to remove empty Tone Perfecting Pod.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-7.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration inserting the <%= CampaignName %> Tone Perfecting Pod."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 7</em>
                                    <p>Insert Tone Perfecting Pod into Beauty Wand arrow side up.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-8.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration removing the <%= CampaignName %> Beauty Wand Tip."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 8</em>
                                    <p>Remove Beauty Wand Tip.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/reload/reload-slide-9.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration returning the <%= CampaignName %> Beauty Wand to Cradle."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 9</em>
                                    <p>Return the Beauty Wand to Cradle.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>

                    <div id="charge" class="start__item charge__slider">
                        <nav class="slider__nav">
                            <button class="nav__item nav__item--prev" data-src-img="/images/setup_arrow_left.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Previous"></button>
                            <button class="nav__item nav__item--next" data-src-img="/images/setup_arrow_right.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Next"></button>
                        </nav>
                        <div class="slider slider__charge" data-lazy-load-slider="charge">
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/charge/charge-slide-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration removing the <%= CampaignName %> Wand Tip."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 1</em>
                                    <p>Always remove Wand Tip before placing Wand in Cradle.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/charge/charge-slide-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration placing the <%= CampaignName %> Beauty Wand Tip onto Cradle Tip Tray."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 2</em>
                                    <p>Place beauty Wand Tip onto Cradle Tip Tray.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/charge/charge-slide-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration placing the <%= CampaignName %> Beauty Wand into Cradle."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 3</em>
                                    <p>Place Beauty Wand into Cradle.</p>
                                </figcaption>
                            </figure>
                            <figure>
                                <div class="slider__img" data-src-img="/images/slider/charge/charge-slide-4.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="illustration closing the <%= CampaignName %> Cradle."></div>
                                <figcaption class="slider__figcaption">
                                    <em>Step 4</em>
                                    <p>Close Cradle to begin preparation.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </section>


    <!-- // System Care | Section -->
	<section class="section section--system section--line section--line--bottom" data-lazy-load-progressive="0.25">

        <div class="section__in">

            <div class="section__video section__offset section__offset--align" data-src-iframe="https://www.youtube.com/embed/ob6YuhIM7rE?modestbranding=1&showinfo=1&rel=0" data-src-attr='{ "frameborder" : "0", "allow" : "autoplay; encrypted-media", "allowfullscreen" : "true" }'></div>

            <div class="hero__section">
                <h2 class="hero__title">System Care</h2>
            </div>

            <div class="system__grid system__banner">
                <h2 class="system__title"><span class="title__inline">Maintenance for your system is </span>simple and requires little effort or time.</h2>
                <div class="system__img" data-src-img="/images/opte-cradle-beauty-wand.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> Cradle with Beauty Wand inside"></div>
            </div>

        </div>

        <div class="section__in">
            <div class="hero__section hero__section--alt">
                <h1 class="hero__title"><span class="title__block">Replacing Serum & </span>Preserving Disk</h1>
            </div>

            <div class="system__grid system__disc">
                <div class="system__img" data-src-img="/images/serum-empty.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="When <%= CampaignName %> serum is empty symbol"></div>
                <p class="system__title">The Serum and the Presurving Disk need to be replaced when you see the red drop. See instructions in Refill Kit for how to complete the refill process.</p>
            </div>

            <div class="system__grid system__ill">

                <div class="grid__item">
                    <div class="item__step">
                        <div class="step--num">1</div>
                        <div class="step--group">
                            <div class="group__title">Step</div>
                            <p>Remove Tip Tray.</p>
                            <p>Replace Preserving Disk.</p>
                            <p>Replace Tip Tray.</p>
                        </div>
                    </div>
                    <div class="item__img" data-src-img="/images/setup-step-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration removing and replacing components for the <%= CampaignName %> Beauty Wand"></div>
                </div>

                <div class="grid__item">
                    <div class="item__step">
                        <div class="step--num">2</div>
                        <div class="step--group">
                            <div class="group__title">Step</div>
                            <p>Flip Wand over and slide the back down.</p>
                            <p>Replace Serum (arrow side up)</p>
                            <p>Slide the back closed.</p>
                        </div>
                    </div>
                    <div class="item__img" data-src-img="/images/setup-step-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration flipping the <%= CampaignName %> Beauty Wand over"></div>
                </div>

            </div>
            
        </div>

        <div class="section__in">

            <div class="hero__section">
                <h1 class="hero__title"><span class="title__block">Cleaning </span>Wand Tips</h1>
            </div>

			<div class="use__items">
                <figure class="use__item">
                    <div class="use__img" data-src-img="/images/cleaning-step-1.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Remove <%= CampaignName %> Beauty Wand Tip"></div>
                    <figcaption>
                        <em class="use__em">Step 1</em>
                        <p>Remove tip from Beauty Wand</p>
                    </figcaption>
                </figure>

                <figure class="use__item">
                    <div class="use__img" data-src-img="/images/cleaning-step-2.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Wash <%= CampaignName %> Beauty Wand Tip with water"></div>
                    <figcaption>
                        <em class="use__em">Step 2</em>
                        <p>Wash gently with soap and water</p>
                    </figcaption>
                </figure>

                <figure class="use__item">
                    <div class="use__img" data-src-img="/images/cleaning-step-3.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Dry <%= CampaignName %> Beauty Wand Tip with paper towel"></div>
                    <figcaption>
                        <em class="use__em">Step 3</em>
                        <p>Dry completely with a paper towel before use</p>
                    </figcaption>
                </figure>
            </div>

        </div>

        <div class="section__in">

            <div class="hero__section">
                <h1 class="hero__title"><span class="title__block">Trouble Shooting</h1>
            </div>

            <ul class="system__chart">
                <li>
                    <div class="chart__grid">
                        <div class="chart__item">
                            <strong>The Cradle froze. Pressing the button does not do anything.</strong>
                        </div>
                        <div class="chart__item">
                            <p>Unplug the Cradle for 30 seconds. Plug in the Cradle and wait an additional 30 seconds before requesting the Wand.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="chart__grid">
                        <div class="chart__item">
                            <strong>The Wand shut off during use.</strong>
                        </div>
                        <div class="chart__item">
                            <p>Return the Wand to the Cradle. Wait for the Wand to power up (it will make a noise). Close the Cradle lid and wait 30 seconds before requesting the Wand. If the Wand shuts off again, the battery is low and the Wand needs to remain in the Cradle for longer to charge.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="chart__grid">
                        <div class="chart__item">
                            <strong>The Cradle lid popped open and is displaying an error code.</strong>
                        </div>
                        <div class="chart__item">
                            <p>Remove the Wand from the Cradle. Remove the Preserving Disk. Unplug the Cradle and wait 30 seconds. Plug in the Cradle. Insert the Preserving Disk. Insert the Wand. Close the Cradle lid.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="chart__grid">
                        <div class="chart__item">
                            <strong>All 3 indicator lights on the Wand are red and flashing.</strong>
                        </div>
                        <div class="chart__item">
                            <p>Slide open the back cover of the Wand and remove the Tone Perfecting Serum. Insert the Tone Perfecting Serum and slide the back cover shut.</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="chart__grid">
                        <div class="chart__item">
                            <strong>The Cradle lid popped open and the Wand is rotated on its side.</strong>
                        </div>
                        <div class="chart__item">
                            <p>This is common. Close the Cradle lid and use the Wand as you normally would</p>
                        </div>
                    </div>
                </li>
            </ul>

            <div class="system__manual">
                <a href="/images/docs/Opte_User_manuals_EN.zip" title="Download the official <%= CampaignName %> user manual">
                    <p>Donwload Manual</p>
                    <div class="manual-icon" data-src-img="/images/manual-icon.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %>Manual"></div>
                </a>
            </div>

        </div>

    </section>


    <%= Html.Partial("GetOffer") %>


</main>


<%-- // @FOOTER --%>
<%= Html.Partial("Footer") %>
<%= Html.Partial("GetDeferStyles") %>

<style>
    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .hero__title,
        .section__title {
            font-size: 8vw;
        }
    }

    .tips__title {
        font: 2.1rem/1 'Sofia Pro Semibold', 'Sofia Pro Regular', Helvetica, sans-serif;
        text-transform: uppercase;
    }

    .section__offset {
        margin: 2rem 0 5rem;
    }

    .section__offset--align {
        margin-top: 5rem;
    }

    .section__video {
        display: block;
    }

    @media all and ( min-width : 0 ) and ( max-width : 1024px ) {
        .section__video,
        .section__video > iframe {
            width: 96vw;
            height: 53.980469vw;
        }
    }

    @media all and ( min-width : 1025px ) {
        .section__video,
        .section__video > iframe {
            width: 998px;
            height: 563px;
        }
    }


    /*	Instructional | @Layout
    * --------------------------------------------------------------------- */
    .ins__title {
        font: bold 29px/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .section--ins {
            padding: 0;
            text-align: center;
        }

        .ins__title {
            padding: 2rem;
            font-size: 4vw;
            background: white;
        }

        .ins__img {
            width: 52.11693548387097vw;
            height: 58.064516129032256vw;
        }

        .ins__img,
        .ins__title {
            display: block;
            margin: auto;
        }
    }

    @media all and ( min-width : 993px ) {
        .section--ins {
            padding: 0 2rem;
        }

        .ins__img {
            width: 517px;
            height: 576px;
        }

        .ins__grid {
            display: table;
            width: 100%;
        }

        .ins__img,
        .ins__title {
            display: table-cell;
            vertical-align: middle;
        }
    }


    /*	Technique | @Layout
    * --------------------------------------------------------------------- */
    .tech__list {
        font: 15px/1.35 'Sofia Pro Regular', Helvetica, sans-serif;
        list-style: none;
    }

    .tech__list {
        display: table;
    }

    .tech__list > li {
        padding-bottom: 2rem;
    }

    .tech__img {
        margin: auto;
    }

    .list__img,
    .list__desc {
        display: table-cell;
        vertical-align: middle;
    }

    .list__desc > em {
        display: block;
        font: bold 2rem/1 'Encorpada Classic Ex Lt', serif;
        text-transform: uppercase;
        color: #b8967c;
        margin-bottom: 0.5rem;
    }

    @media all and ( min-width : 0 ) and ( max-width : 700px ) {
        .tech__img {
            position: relative;
            right: 2rem;
        }

        .list__img {
            width: 14.428571428571429vw;
            height: 14.428571428571429vw;
        }

        .tech__img {
            width: 34.57142857142857vw;
            height: 73.42857142857143vw;
        }

        .list__desc {
            padding-left: 4vw;
        }

        .tech__desc {
            width: auto;
        }
    }

    @media all and ( min-width : 701px ) {
        .tech__grid {
            display: table;
            margin: auto;
        }

        .list__img {
            width: 101px;
            height: 101px;
        }

        .tech__img {
            width: 242px;
            height: 514px;
        }

        .tech__desc,
        .tech__img {
            display: table-cell;
            vertical-align: middle;
        }

        .list__desc {
            padding-left: 2rem;
        }

        .list__desc > em {
            font-size: 40px;
        }

        .tech__desc {
            width: 550px;
        }
    }


    /*	Getting Started | @Layout
    * --------------------------------------------------------------------- */
    .user__start {
        font-family: 'Sofia Pro Light', 'Sofia Pro Regular', Helvetica, sans-serif;
    }

    .start__nav > a {
        text-decoration: none;
        display: inline-block;
        padding: 2rem;
        text-transform: uppercase;
        font-family: 'Sofia Pro Semibold', 'Sofia Pro Regular', Helvetica, sans-serif;
        position: relative;
    }

    .start__nav > a:after {
        display: block;
        content: '';
        width: 8px;
        height: 8px;
        border-radius: 100%;
        background: transparent;
        margin: 1rem auto 0;
    }

    .start__nav > a:focus,
    .start__nav .nav__current {
        color: #d8b789;
    }

    .start__nav > a:focus:after,
    .start__nav .nav__current:after {
        background: #d8b789;
    }

    .start__item {
        position: relative;
    }

    .start__item:not(.start__item--current),
    .start__item--hidden {
        display: none;
    }

    .nav__item {
        background: none;
        border: none;
        display: block;
        position: absolute;
        top: 0;
        bottom: 0;
        margin: auto;
        width: 35px;
        height: 35px;
        padding: 0;
        z-index: 1;
    }

    .nav__item--prev {
        left: 0;
    }

    .nav__item--next {
        right: 0;
    }

    .slider > figure:not(:first-of-type) {
        position: absolute;
        top: 0;
        z-index: -1;
        opacity: 0;
        visibility: hidden;
    }

    .slider__figcaption p {
        line-height: 1.25;
    }

    .slider__figcaption em {
        font-family: 'Sofia Pro Semibold', Helvetica, sans-serif;
        text-transform: uppercase;
    }

    @media all and ( min-width : 0 ) and ( max-width : 500px ) {
        .user__start {
            font-size: 1.4rem;
        }

        .slider__img {
            width: 60vw;
            height: 60vw;
        }

        .slider__figcaption {
            font-size: 1.6rem;
        }
    }

    @media all and ( min-width : 501px ) {
        .user__start {
            font-size: 2rem;
        }

        .slider__img {
            width: 300px;
            height: 300px;
        }
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .user__start .hero__title {
            padding: 0 10vw;
        }

        .slider__img, .slider figcaption {
            display: block;
            margin: auto;
        }

        .slider__figcaption {
            width: 100%;
            padding: 1rem 4rem;
            text-align: center;
        }
    }

    @media all and ( min-width : 993px ) {
        .slider__img, .slider figcaption {
            display: inline-block;
            vertical-align: middle;
        }

        .slider__figcaption {
            text-align: left;
            padding: 5rem;
            width: 50%;
        }
    }


    /*	System Care | @Layout
    * --------------------------------------------------------------------- */
    .system__title {
        font: 20px/1.25 'Sofia Pro Regular', Helvetica, sans-serif;
    }

    .system__img,
    .system__title {
        display: table-cell;
        vertical-align: middle;
    }

    @media all and ( min-width : 0 ) and ( max-width : 500px ) {
        .system__disc .system__img,
        .system__disc .system__img > img {
            width: 16vw;
            height: 16vw;
        }

        .system__title {
            padding: 1rem;
        }
    }

    @media all and ( min-width : 501px ) {
        .system__disc .system__img,
        .system__disc .system__img > img {
            width: 80px;
            height: 80px;
        }
    }

    @media all and ( min-width : 0 ) and ( max-width : 1035px ) {
        .system__banner {
            text-align: center;
        }

        .system__title {
            padding: 2rem;
            font-size: 1.6rem;
        }

        .system__banner .system__img {
            width: 55.94758064516129vw;
            height: 55.141129032258064vw;
        }

        .system__banner .system__img,
        .system__banner .system__img > img,
        .system__banner .system__title {
            display: block;
            margin: auto;
        }

        @supports ( display : flex ) {
            .system__banner {
                display: flex;
                flex-flow: wrap-reverse;
            }

            .system__banner .system__title {
                margin-top: -5rem;
                position: relative;
                z-index: 1;
            }
        }

        .section--system .hero__section {
            margin: 4rem 0 2rem;
        }

        .section--system .hero__section--alt {
            margin: 2rem 0;
        }
    }

    @media all and ( min-width : 1036px ) {
        .system__disc {
            width: 87%;
            margin: 0 auto 2rem;
        }

        .system__banner .system__title {
            padding: 0 8rem 10rem 0;
        }

        .system__disc .system__title {
            padding-left: 2rem;
        }

        .system__title .title__inline {
            display: block;
        }

        .system__grid {
            display: table;
        }

        .system__banner .system__img {
            width: 555px;
            height: 547px;
        }  

        .section--system .hero__section {
            margin: 10rem 0 4rem;
        }

        .section--system .hero__section--alt {
            margin-top: 0;
        }
    }


    /*	Illustration | System Care | @Layout
    * --------------------------------------------------------------------- */
    .item__step {
        display: table;
    }

    .system__ill {
        width: 100%;
        border-spacing: 1rem;
    }

    .grid__item {
        border: 2px solid #4f4344;
        padding: 1rem;
    }

    .item__img,
    .item__img > img {
        margin: auto;
    }

    @media all and ( min-width : 0 ) and ( max-width : 500px ) {
        .grid__item {
            margin: 1rem 0;
        }

        .item__img,
        .item__img > img {
            width: 74.6vw;
            height: 74.6vw;
        }

        .step--num {
            font-size: 4rem;
        }

        .step--group {
            margin-left: 0;
            font-size: 1.4rem;
        }
    }

    @media all and ( min-width : 501px ) {
        .item__img,
        .item__img > img {
            width: 373px;
            height: 373px;
        }
    }

    @media all and ( min-width : 501px ) and ( max-width : 850px ) {
        .grid__item {
            margin: 1rem;
        }
    }

    @media all and ( min-width : 851px ) {
        .system__ill {
            display: table;
        }

        .grid__item {
            display: table-cell;
        }
    }

    .step--num,
    .stem--group {
        display: table-cell;
    }

    .step--num {
        vertical-align: top;
        font-size: 6rem;
        color: #aa8763;
        text-align: right;
    }

    .step--num,
    .group__title {
        font-family: 'Encorpada Classic Ex Lt', serif;
        line-height: 1;
        font-weight: bold;
    }

    .step--group {
        vertical-align: bottom;
        margin: 3.5rem 0 0 0.5rem;
    }

    .group__title {
        font-size: 2rem;
        text-transform: uppercase;
        margin-bottom: 1.5rem;
    }


    <%= Html.Partial("GetStyleModel_UseGrid") %>


    /*	Use | @Layout
    * --------------------------------------------------------------------- */
    .use__items {
        text-align: center;
    }

    .use__em {
        font-size: 40px;
        margin-top: 4rem;
    }

    .use__item p {
        text-transform: uppercase;
        line-height: 1.25;
    }

    @media all and ( min-width : 0 ) and ( max-width : 768px ) {
        .use__em {
            font-size: 3rem;
            margin-top: 2rem;
        }

        .use__img {
            width: 35.9375vw;
            height: 35.80729166666667vw;
        }

        .use__item p {
            font-size: 1.5rem;
        }
    }

    @media all and ( min-width : 769px ) {
        .use__img {
            width: 276px;
            height: 275px;
        }

        .use__item figcaption {
            width: 69%;
            margin: auto;
        }

        .use__item p {
            font-size: 1.8rem;
        }
    }


    /*	Chart | @Layout
    * --------------------------------------------------------------------- */
    .system__chart {
        list-style: none;
    }

    .system__chart li {
        padding: 0;
    }

    .chart__grid {
        font-size: 1.8rem;
        line-height: 1.35;
    }

    @media all and ( min-width : 0 ) and ( max-width : 660px ) {
        .chart__grid {
            border-bottom: 2px solid #d3d3d3;
            padding: 2.5rem 0;
        }

        .system__chart > li:first-of-type .chart__grid {
            padding-top: 0;
        }

        .system__chart > li:last-of-type .chart__grid {
            border-bottom: none;
            padding-bottom: 0;
        }
    }

    @media all and ( min-width : 661px ) {
        .chart__grid {
            display: table;
        }

        .chart__item {
            display: table-cell;
            vertical-align: middle;   
        }

        .chart__item:first-of-type {
            border-right: 2px solid #d3d3d3;
            padding-left: 0;
            width: 27%;
        }

        .chart__item:last-of-type {
            padding-right: 0;
        }
    }

    @media all and ( min-width : 661px ) and ( max-width : 1000px ) {
        .chart__item {
            padding: 2rem;
        }
    }   

    @media all and ( min-width : 1001px ) {
        .chart__item {
            padding: 2rem 7rem;
        }
    }

    .chart__item strong {
        font-family: 'Sofia Pro Semibold', 'Sofia Pro Regular', Helvetica, sans-serif;
    }

    .chart__item p {
        font-family: 'Sofia Pro Light', 'Sofia Pro Regular', Helvetica, sans-serif;
    }


    /*	Manual | @Layout
    * --------------------------------------------------------------------- */
    .system__manual {
        width: 100px;
        margin: 2rem auto 1rem;
    }

    .system__manual > a {
        display: block;
        margin: auto;
        text-decoration: none;
    }

    .system__manual > a:hover {
        text-decoration: underline;
    }

    .system__manual p {
        text-align: center;
        text-transform: uppercase;
        line-height: 1;
        margin-bottom: 0.5rem;
    }

    .manual-icon, .manual-icon > img {
        display: block;
        width: 100px;
        height: 100px;
    }


    <%= Html.Partial("GetStyleModel_MBG") %>
    <%= Html.Partial("GetStyleModel_Button") %>
</style>

<script>

    function onAppReady (app) {
        var $start = $('.start__container');
        var $start__nav = $('.start__nav > a');

        // private method : apply slider
        function getSlider ($container) {
            var $slider = $container.find('.slider');

            $slider.addClass('is-slider');
            $slider.slick({
                lazyLoad : 'ondemand',
                slidesToShow : 1,
                slidesToScroll : 1,
                mobileFirst : true,
                infinite : true,
                dots : false,
                prevArrow : $container.find('.nav__item--prev'),
                nextArrow : $container.find('.nav__item--next'),
                focusOnSelect : true,
                accessibility : true
            });
        }

        function showSlider (event) {
            event.preventDefault();

            var $current__container = $start.find($(this).attr('href'));
            var $current__slider = $current__container.find('.slider');

            $start__nav.removeClass('nav__current');
            $(this).addClass('nav__current');

            $start.find('.start__item')
                .removeClass('start__item--current')
                .addClass('start__item--hidden');

            $current__container
                .removeClass('start__item--hidden')
                .addClass('start__item--current');

            if ( $current__slider.hasClass('is-slider') ) {
                $current__slider.slick('unslick');
            }

            getSlider($current__container);
        }

        app.$window.on('slick:progressive:setup', function (e) {
            getSlider($('.setup__slider'));
        });

        app.$window.one('slick:progressive:setup', function (e) {
            $start__nav.on('click', showSlider);
            $start__nav.one('click', function () {
                $start.addClass('start__container--ready');
            });
        });
    }

</script>

<%-- // Deferred Styles --%>
<style>
    .start__container--ready img {
        animation: none;
        opacity: 1;
    }
</style>


</asp:Content>