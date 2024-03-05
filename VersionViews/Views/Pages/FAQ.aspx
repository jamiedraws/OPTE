<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% var CampaignName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<header class="header">

    <div class="header__in">

        <%-- // @HEADER --%>
        <%= Html.Partial("Header") %>

        <div class="hero__section">
            <h1 class="hero__title"><%= CampaignName %> Beauty Device FAQ</h1>
        </div>

    </div>

</header>

<style>
    /*	FAQ | Critical | @Layout
    * --------------------------------------------------------------------- */
    .section--faq {
        font-size: 1.6rem;
    }

    .section--faq p {
        line-height: 1.5;
        margin-bottom: 1.5rem;
    }

    .section--faq p:not(:first-of-type):last-of-type {
        margin-bottom: 0;
    }

    .faq__ul {
        list-style: none;
    }

    .faq__ul > li {
        border-bottom: 1px solid #c8c8c8;
    }

    .faq__ul > li:first-of-type {
        border-top: 1px solid #c8c8c8;
    }

    .faq__title {
        font: 2.4rem/1 'Sofia Pro Bold', 'Sofia Pro Regular', Helvetica, sans-serif;
        margin: 6rem 0 2.5rem;
    }

    .faq__title:first-of-type {
        margin-top: 0;
    }

    @media all and ( min-width : 0 ) and ( max-width : 992px ) {
        .faq__question {
            font-size: 1.8rem;
        }

        .answer__img--icon {
            width: 26.612903225806452vw;
            height: 26.008064516129032vw;
            margin: auto;
        }
    }

    @media all and ( min-width : 993px ) {
        .faq__question {
            font-size: 2.2rem;
        }

        .answer__img--icon {
            width: 264px;
            height: 258px;
        }
    }

    .faq__question {
        border: none;
        background: none;
        display: table;
        padding: 2rem;
        width: 100%;
        text-align: left;
    }

    .faq__question > span {
        display: table-cell;
        vertical-align: middle;
    }

    .faq__question > span:last-of-type {
        padding-left: 2rem;
    }

    .faq__arrow {
        background: url(/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>) no-repeat center center;
        width: 15px;

        -webkit-transition: -webkit-transform 150ms ease-in-out;
        -moz-transition: -moz-transform 150ms ease-in-out;
        transition: transform 150ms ease-in-out;

        -webkit-transform-origin: center center;
        -moz-transform-origin: center center;
        transform-origin: center center;

        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        transform: rotate(0deg);
    }

    .faq__answer {
        height: 0;
        margin: 0;
        will-change: height;
        transition: height .3s cubic-bezier(.215,.61,.355,1);
        overflow: hidden;
    }
</style>

<%-- // @MAIN --%>
<main class="main">

    <!-- // FAQ | Section -->
    <section class="section section--faq section--line--bottom" data-lazy-load-progressive="0.25">

        <div class="section__in">

            <div class="faq__container">
                <h2 class="faq__title">What are the benefits of <%= CampaignName %>?</h2>
                <ul class="faq__ul">
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How does <%= CampaignName %> achieve a natural, flawless look?</span>
                        </button>
                        <div class="faq__answer">
                            <p><%= CampaignName %> digitally scans your skin and analyzes your complexion to detect spots. It then covers ONLY the spots so your natural luminescence shines through. The result: your skin looks and feels like naturally perfect skin!</p>
                            <img class="answer__img--icon" src="/images/target-imperfections.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Target imperfections with <%= CampaignName %>">
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>What skincare benefits does <%= CampaignName %> have?</span>
                        </button>
                        <div class="faq__answer">
                            <p><%= CampaignName %> has Pixel-white, a powerful skin-lightening ingredient that reduces the appearance of spots over time.</p>
                            <img class="answer__img--icon" src="/images/reduce-spots-over-time.png?appV=<%= DtmContext.ApplicationVersion %>" alt="Hour glass representing spots reducing over time with <%= CampaignName %>">
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>Why should I choose <%= CampaignName %> over lasers?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Unlike lasers, <%= CampaignName %> requires no down-time and is gentle on your skin. You will feel no pain when using <%= CampaignName %> and results are immediate. </p>
                            <img class="answer__img--icon" src="/images/gentle-on-skin.png?appV=<%= DtmContext.ApplicationVersion %>" alt="A heart representing gentle touch using <%= CampaignName %>">
                        </div>
                    </li>
                </ul>

                <h2 class="faq__title">How does <%= CampaignName %> Work?</h2>
                <ul class="faq__ul">
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How does <%= CampaignName %> Work?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Please visit the <a href="index<%= DtmContext.ApplicationExtension %>#how-it-works" title="Learn more about how <%= CampaignName %> works">How it Works</a> section of the website.</p>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>Is the blue light safe?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Yes, the blue light is safe. It has been favorably assessed for skin and eye compatibility by an accredited certification laboratory. The blue light illuminates the skin (similar to the flash on a camera) so <%= CampaignName %> can detect spots and other tonal imperfections.</p>
                            <div class="answer__img--icon" data-src-img="/images/blue-light-safe.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Blue light is considered safe for <%= CampaignName %>"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>What ingredients are in it?</span>
                        </button>
                        <div class="faq__answer">
                            <p>The Tone Perfecting Serum has 4 key ingredients that provide flawless coverage and reduce the appearance of unevenness over time.</p>
                            <p>For a full list of ingredients, see below:<br>Water, propylene glycol, titanium dioxide, iron oxides, caprylyl glycol, 1,2-Hexanediol, phenoxyethanol, undecylenoyl phenylalanine, alumina, sodium polyacrylate, silica, aminomethyl propanol</p>
                            <%= Html.Partial("GetIngredients") %>
                        </div>
                    </li>
                </ul>

                <h2 class="faq__title">How is <%= CampaignName %> Different?</h2>
                <ul class="faq__ul">
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How is <%= CampaignName %> different from regular foundation?</span>
                        </button>
                        <div class="faq__answer">
                            <p>First, the application:<br><%= CampaignName %> scans your skin to detect spots, then covers ONLY the spot with natural mineral pigments to custom-correct your skin tone. This allows your skin to look and feel like naturally perfect skin! Even good foundations have a different color and finish than natural skin and block your natural luminescence.</p>
                            <%= Html.Partial("GetWorksGrid") %>

                            <p>Second, the formula:<br><%= CampaignName %> has 4 key ingredients to provide flawless coverage while reducing the appearance of unevenness overtime.</p>
                            <%= Html.Partial("GetIngredients") %>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>How is <%= CampaignName %> different than typical skincare/whitening creams?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Spot lightening creams treat all over - so both spots and the the surrounding skin appear to be lightened and the contrast remains. <%= CampaignName %> applies Tone Perfecting Serum ONLY on spots and NOT the surrounding skin. This targeted treatment is designed to reduce the contrast between the spot and surrounding skin.</p>
                            <div class="use__items use__items--1x3">
                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/spot-original-skin.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration of original skin with age spot"></div>
                                    <figcaption>
                                        <p>Original skin<br>with age spot</p>
                                    </figcaption>
                                </figure>

                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/spot-lightening-cream.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration of skin using igthening cream"></div>
                                    <figcaption>
                                        <p>Using ligthening cream:<br>Both are lightened</p>
                                    </figcaption>
                                </figure>

                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/spot-using-opte.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration of skin using <%= CampaignName %>"></div>
                                    <figcaption>
                                        <p>Using <%= CampaignName %>:<br>Only spot lightened</p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                    </li>
                </ul>

                <h2 class="faq__title">Will it work for my needs?</h2>
                <ul class="faq__ul">
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>What type of spots does <%= CampaignName %> work on?</span>
                        </button>
                        <div class="faq__answer">
                            <p><%= CampaignName %> covers age and sun spots, redness and discoloration, blemishes, scars, and spider veins.<br>Active ingredients also reduce the appearance of melanin-related spots, like age spots and sun spots, over time.</p>
                            <div class="use__items use__items--1x5">
                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/works-age-sun-spots.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> works on age/sun spots"></div>
                                    <figcaption>
                                        <p>Age/Sun Spots</p>
                                    </figcaption>
                                </figure>

                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/works-redness.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> works on redness"></div>
                                    <figcaption>
                                        <p>Redness</p>
                                    </figcaption>
                                </figure>

                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/works-blemishes.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> works on blemishes"></div>
                                    <figcaption>
                                        <p>Blemishes</p>
                                    </figcaption>
                                </figure>

                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/works-scars.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> works on scars"></div>
                                    <figcaption>
                                        <p>Scars</p>
                                    </figcaption>
                                </figure>

                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/works-spider-viens.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> works on spider veins"></div>
                                    <figcaption>
                                        <p>Spider Veins</p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>Does it work for all skin colors?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Yes, it automatically works on all skin colors.</p>
                            <div class="answer__img--skin-chart" data-src-img="/images/skin-tones.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Skin tone illustration showing what works with <%= CampaignName %>"></div>
                        </div>
                    </li>
                </ul>

                <h2 class="faq__title">How do I use <%= CampaignName %>?</h2>
                <ul class="faq__ul">
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow" data-src-img="/images/arrow.svg?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Navigation arrow"></span>
                            <span>How should I apply <%= CampaignName %>?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Go to the How to Use section of the website for detailed instructions.</p>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>Can I use it under my eyes and around my nose?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Yes, you can use it under the eyes and on the nose as well. It will do a great job covering the imperfections but it wont treat under-eye circles.</p>
                            <div class="answer__img--icon" data-src-img="/images/use-under-eyes-and-on-nose.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration showing where to apply <%= CampaignName %> under eyes and nose"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>Can I use <%= CampaignName %> on my neck, hands and body?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Yes, <%= CampaignName %> safe to use on neck, hands, body and even d&eacute;colletage.</p>
                            <div class="use__items use__items--1x3">
                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/apply-hand.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Apply <%= CampaignName %> on hands"></div>
                                </figure>
                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/apply-neck.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Apply <%= CampaignName %> on neck"></div>
                                </figure>
                                <figure class="use__item">
                                    <div class="use__img" data-src-img="/images/apply-decolletage.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Apply <%= CampaignName %> on d&eacute;colletage"></div>
                                </figure>
                            </div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How long should I use the Beauty Wand each day?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Typical usage is between 2 and 5 minutes. At first you may spend more time with the Beauty Wand or even try it on your hand to get comfortable with the technique.</p>
                            <div class="answer__img--icon" data-src-img="/images/use-between-2-5-minutes.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Use the <%= CampaignName %> Beauty Wand between 2 to 5 minutes each day"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How long does my end look last?</span>
                        </button>
                        <div class="faq__answer">
                            <p>The Tone Perfecting Serum is formulated to last all day. For touch-ups, simply reapply to imperfections as needed.</p>
                            <div class="answer__img--icon" data-src-img="/images/lasts-all-day-night.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> Tone Perfecting Serum lasts all day"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>After using the Beauty Wand, can I apply moisturizer or SPF lotion on my face?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Apply all skin care, including your SPF, before using the Beauty Wand, not after. Applying liquid products after use will smear the Tone Perfecting Serum. Finishing powders and bronzers are okay to use and may extend the life of your end look.</p>
                            <div class="answer__img--graph" data-src-img="/images/first-use-uv-lotion-then-use-opte.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Use UV lotion before using <%= CampaignName %>"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>Afterward, can I put on concealer?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Yes, you can put concealer on your under eye areas. Adding powder, lipstick, and eye makeup should not impact your flawless coverage. Do not add liquid makeups, BB creams, moisturizers, etc. after application.</p>
                            <div class="answer__img--icon" data-src-img="/images/you-can-use-concealer.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Use concealer after using <%= CampaignName %>"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>When can I wash my face after use?</span>
                        </button>
                        <div class="faq__answer">
                            <p>You can wash your face anytime after application. This will remove the Serum and reveal age spots. Simply reapply the next time you want a flawless look. Use any face wash to remove the Serum. No need for make up remover.</p>
                            <div class="answer__img--icon" data-src-img="/images/washing-your-face.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Wash your face after using <%= CampaignName %>"></div>
                        </div>
                    </li>
                </ul>

                <h2 class="faq__title">Servicing <%= CampaignName %>?</h2>
                <ul class="faq__ul">
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How do I change the Tone Perfecting Serum and Preserving Disk?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Follow the User Guide inside the Refill Kit or go to this How to Use section of the website. Replace both the Tone Perfecting Serum and the Preserving Disk at the same time. If any questions occur, please call The Beauty Wand Helpline at <a href="tel:844-627-7738" title="Reach out to the <%= CampaignName %> Beauty Wand Helpline">844-627-7738</a>.</p>
                            <div class="answer__img--graph" data-src-img="/images/preserving-disc-tone-perfecting-serum.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustrations of the <%= CampaignName %> Preserving Disk and Tone Perfecting Serum"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>What do the yellow and red Drops mean?</span>
                        </button>
                        <div class="faq__answer">
                            <p>The yellow and red drops signal the Beauty Wand is low on Serum. Yellow indicates you have about 5 uses left. Red indicates that you need to change the Serum and Preserving Disk after you complete your current use.</p>
                            <div class="answer__img--graph" data-src-img="/images/yellow-red-drops.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustrations of the <%= CampaignName %> yellow and red drops"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>Why is there a second tip in the system?</span>
                        </button>
                        <div class="faq__answer">
                            <p>The 2nd tip is deliberately smaller for the nose area. It should perform the same as the regular sized tip.</p>
                            <div class="answer__img--graph" data-src-img="/images/beauty-tip-precision-tip.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustrations of the <%= CampaignName %> Beauty Tip and Precision Tip"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>What can I do if the Beauty Wand stops working? How can I fix minor technical issues?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Contact the Beauty Wand Helpline for any issues. Available 8am -6pm EST Monday through Friday at <a href="tel:844-627-7738" title="Reach out to the <%= CampaignName %> Beauty Wand Helpline">844-627-7738</a>.</p>
                            <div class="answer__img--icon" data-src-img="/images/support.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> customer service"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>Why has the Beauty Wand stopped clicking?</span>
                        </button>
                        <div class="faq__answer">
                            <p>The Beauty Wand clicks when it is working properly, and it may stop working if both rollers are not contacting the skin or you are moving too fast. If this happens: lift the Beauty Wand away from your skin, then return it to your skin with both rollers making contact, then slowly glide the rollers along your skin. If the Beauty Wand still doesn't click, return it to the Cradle and close the lid for maintenance.</p>
                            <div class="answer__img--icon" data-src-img="/images/do-not-use-perpendicular-to-face.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Where not to use the <%= CampaignName %> Beauty Wand"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>Should I keep going over an area until the clicking stops?</span>
                        </button>
                        <div class="faq__answer">
                            <p>The Beauty Wand clicks as it is dispenses the Serum. The clicks will diminish as the Serum covers tonal imperfections but the clicking will not completely stop because the Beauty Wand detects very small, micro-differences in skin tone.</p>
                            <div class="answer__img--icon" data-src-img="/images/beauty-wand-clicking-sound.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> Beauty Wand sound wave detection"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How long does the Tone Perfecting Serum and Preserving Disk last?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Each refill should last for about 2 months with normal daily usage. Actual timing may vary depending on daily usage length. The Beauty Wand display a yellow droplet when you have about 5 uses left and a red droplet when you are on your last usage. Make sure to exchange the refill when you see the red droplet, as each replacement refill requires 3 hours to prepare.</p>
                            <div class="answer__img--icon" data-src-img="/images/serum-is-low.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="<%= CampaignName %> calendar representing longevity"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>If I press harder into my skin does more Tone Perfecting Serum come out?</span>
                        </button>
                        <div class="faq__answer">
                            <p>No. Actually the lighter you press, the better the Beauty Wand works. You should barely feel the rollers gliding across your skin. You should not see any indentations in your skin when using the Beauty Wand.</p>
                            <div class="answer__img--icon" data-src-img="/images/do-not-press-hard.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Do not press hard on the <%= CampaignName %> Beauty Wand"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How am I supposed to use the Beauty Wand over my nose?</span>
                        </button>
                        <div class="faq__answer">
                            <p>For best results, keep the Beauty Wand flat on your nose. One way to do this is to roll up the side of your nose, like a ramp. Others find it useful to use their spare hand to pull their nose to the side, flattening it. There is a 2nd tip that is designed for the nose area as well, allowing for precision use.</p>
                            <div class="answer__img--icon" data-src-img="/images/use-under-eyes-and-on-nose.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Illustration showing where to apply <%= CampaignName %> under eyes and nose"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>How should the Wand be placed against the skin?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Hold the wand flat on your skin at all times, keeping both rollers on your skin. If you tilt the rollers, the Beauty Wand cannot accurately scan your skin.</p>
                            <div class="answer__img--icon" data-src-img="/images/do-not-use-perpendicular-to-face.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Where not to use the <%= CampaignName %> Beauty Wand"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>To confirm, I should not use any foundation after I use the product, correct?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Correct. Do not use any liquid foundation or BB creams after applying the Serum. Powders, including powder foundation, bronzer, and blush are okay to use.</p>
                            <div class="answer__img--icon" data-src-img="/images/do-not-use-liquid-foundation.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Do not use liquid foundation after using <%= CampaignName %>"></div>
                        </div>
                    </li>
                    <li>
                        <button class="faq__question">
                            <span class="faq__arrow"></span>
                            <span>What should I do if I notice smearing on my skin from the rollers?</span>
                        </button>
                        <div class="faq__answer">
                            <p>Apply skincare, including SPF products, prior to using the Beauty Wand.  SPF products with less than SPF 50 are most compatible.  Use a lower SPF product if smearing occurs. Consult your physician before lowering your SPF protection if you are using your SPF for a specific condition.</p>
                            <div class="answer__img--graph" data-src-img="/images/first-use-uv-lotion-then-use-opte.png?appV=<%= DtmContext.ApplicationVersion %>" data-alt="Use UV lotion before using <%= CampaignName %>"></div>
                        </div>
                    </li>
                </ul>

            </div>

        </div>

    </section>

    <%= Html.Partial("GetOffer") %>

</main>


<%-- // @FOOTER --%>
<%= Html.Partial("Footer") %>
<%= Html.Partial("GetDeferStyles") %>

<style>
    /*	FAQ | Defer | @Layout
    * --------------------------------------------------------------------- */
    .faq__answer--visible {
        margin: 2rem 2rem 2rem 5.75rem;
    }

    .faq__question--selected .faq__arrow {
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        transform: rotate(180deg);
    }

    <%= Html.Partial("GetStyleModel_MBG") %>
    <%= Html.Partial("GetStyleModel_Button") %>
    <%= Html.Partial("GetStyleModel_Ingredients") %>
    <%= Html.Partial("GetStyleModel_WorksGrid") %>
    <%= Html.Partial("GetStyleModel_UseGrid") %>

    .use__items {
        color: #7f766e;
        text-transform: uppercase;
    }

    .use__item p {
        line-height: 1.15;
    }

    @media all and ( min-width : 0 ) and ( max-width : 500px ) {
        .use__items--1x3 .use__img,
        .use__items--1x3 .use__img > img {
            width: 45.2vw;
            height: 45.2vw;
        }

        .answer__img--graph {
            margin: auto;
        }
    }

    @media all and ( min-width : 501px ) {
        .use__items--1x3 .use__img,
        .use__items--1x3 .use__img > img {
            width: 226px;
            height: 226px;
        }

        .use__items--1x5 .use__img,
        .use__items--1x5 .use__img > img {
            width: 150px;
            height: 150px;
        }
    }

    @media all and ( min-width : 769px ) and ( max-width : 992px ) {
        .use__item {
            margin: 1rem;
        }
    }

    @media all and ( min-width : 993px ) {
        .use__items--1x5 .use__item {
            width: 19%;
        }

        .answer__img--skin-chart {
            width: 564px;
            height: 141px;
        }
    }

    .use__item figcaption {
        margin-top: 1.5rem;
    }

</style>

<script>

    function onAppReady (app) {
        var $questions = $('.faq__question');
        var $answers = $('.faq__answer');
        var $nav = $('#nav');
        var $html__body = $('html, body');

        function getAnswerSize () {
            $answers.each(function () {
                var $answer = $(this);
                if ( !$answer.hasClass('faq__answer--visible') ) {
                    $(this).children().each(function () {
                        $answer.attr('data-container-height', ($answer.data('container-height') || 0) + $(this).outerHeight(true));
                    });
                } else {
                    $answer.attr('data-container-height', 0);
                }
            });
        }

        function scrollToTarget ($target) {
            $html__body.animate({
                scrollTop : $target.position().top - app.$nav.outerHeight()
            }, 100);
        }

        $questions.on('click', function (event) {
            event.preventDefault();

            var $question = $(this);
            var $current__answer = $question.siblings('.faq__answer').get(0);

            getAnswerSize();
            $answers.each(function () {
                var $answer = $(this);
                var $question = $answer.prev('.faq__question');
                if ( $current__answer === this ) {
                    $question.toggleClass('faq__question--selected');
                    $answer.toggleClass('faq__answer--visible').css('height', $answer.attr('data-container-height'));
                } else {
                    $question.removeClass('faq__question--selected');
                    $answer.removeClass('faq__answer--visible').css('height', 0);
                }
            });

            if ( app.isStickyNav() ) {
                scrollToTarget($question);
            } else {
                app.getHeightFromStickyNav().done(function (offset) {
                    scrollToTarget($question);
                });
            }
        });

        app.$body.on('transitionend', '.faq__answer--visible', function () {
            var $answer = $(this);
            $answer.attr('data-cache-height', $answer.height()).css('height', 'auto');
        });

        getAnswerSize();
    }

</script>


</asp:Content>