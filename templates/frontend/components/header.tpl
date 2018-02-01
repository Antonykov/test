{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
{strip}
	{* Determine whether a logo or title string is being displayed *}
	{assign var="showingLogo" value=true}
	{if $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
		{assign var="showingLogo" value=false}
	{/if}
{/strip}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{translate|assign:"pageTitleTranslated" key=$pageTitle}{/if}
{include file="frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">


	<div class="cmp_skip_to_content">
		<a href="#pkp_content_main">{translate key="navigation.skip.main"}</a>
		<a href="#pkp_content_nav">{translate key="navigation.skip.nav"}</a>
		<a href="#pkp_content_footer">{translate key="navigation.skip.footer"}</a>
	</div>
	<div class="pkp_structure_page">


        <div id="header">

            <div id="issn">ISSN: 2076-8184</div>
            <div id="social">
                <a href="https://scholar.google.com.ua/citations?user=0iqI-UsAAAAJ&hl=ru"><img src="/ojs/lib/pkp/templates/common/social_img/goo_sch.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/goo_sch_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/goo_sch.png';" title="Google Scholar" alt="Google Scholar" width="16" height="16"></a>&nbsp;&nbsp;
                <a href="https://www.facebook.com/journal.iitta/?ref=tn_tnmn"><img src="/ojs/lib/pkp/templates/common/social_img/fb.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/fb_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/fb.png';" title="Facebook" alt="Facebook" width="16" height="16"></a>&nbsp;&nbsp;
                <a href="https://plus.google.com/u/0/112335705302815713443"><img src="/ojs/lib/pkp/templates/common/social_img/google.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/google_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/google.png';" title="Google +" alt="Google +" width="16" height="16"></a>&nbsp;&nbsp;
                <a href="http://journal.iitta.gov.ua/index.php/itlt/gateway/plugin/WebFeedGatewayPlugin/rss2"><img src="/ojs/lib/pkp/templates/common/social_img/rss.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/rss_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/rss.png';" title="RSS" alt="rss" width="15" height="15"></a>&nbsp;&nbsp;
                <a href="https://twitter.com/journal_itlt"><img src="/ojs/lib/pkp/templates/common/social_img/twitter.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/twitter_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/twitter.png';" title="Twitter" alt="Twitter" height="17"></a>&nbsp;&nbsp;
                <a href="http://journal.iitta.gov.ua/index.php/itlt/pages/view/indexing"><img src="/ojs/lib/pkp/templates/common/social_img/index.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/index_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/index.png';" title="Indexing" alt="Indexing"  height="18"></a>&nbsp;&nbsp;
                <a href="http://journal.iitta.gov.ua/index.php/itlt/pages/view/stat"><img src="/ojs/lib/pkp/templates/common/social_img/stat.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/stat_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/stat.png';" title="Statistic" alt="Statistic"  height="16"></a>&nbsp;&nbsp;
                <a href="http://journal.iitta.gov.ua/index.php/itlt/search"><img src="/ojs/lib/pkp/templates/common/social_img/search.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/search_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/search.png';" title="Search" alt="Search"  height="16"></a>&nbsp;&nbsp;
                <a href="http://journal.iitta.gov.ua/index.php/itlt/about/contact"><img src="/ojs/lib/pkp/templates/common/social_img/contacts.png" onmouseover="this.src='/ojs/lib/pkp/templates/common/social_img/contacts_blue.png';" onmouseout="this.src='/ojs/lib/pkp/templates/common/social_img/contacts.png';" title="Contacts" alt="Contacts" height="15"></a>

            </div>

            <div id="headerline"></div>
            <div id="navbar" class="clearfix">
                <ul class="menu clearfix">
                    <li id="home"><a href="http://journal.my/ojs/index.php/test">Home</a></li>
                    <li id="about"><a href="http://journal.my/ojs/index.php/test/about">About</a></li>
                    <li id="about"><a href="http://journal.iitta.gov.ua/index.php/itlt/about/editorialTeam">Editorial Board</a></li>

                    <li id="login"><a href="https://journal.iitta.gov.ua/index.php/itlt/login">Login</a></li>
                    <li id="register"><a href="https://journal.iitta.gov.ua/index.php/itlt/user/register">Register</a></li>
                    <li id="search"><a href="https://journal.iitta.gov.ua/index.php/itlt/search">Search</a></li>

                    <li id="current"><a href="https://journal.iitta.gov.ua/index.php/itlt/issue/current">Current Issue</a></li>
                    <li id="archives"><a href="https://journal.iitta.gov.ua/index.php/itlt/issue/archive">Archives</a></li>

                    <li id="about"><a href="http://journal.iitta.gov.ua/index.php/itlt/pages/view/ethics_policies"}">Ethics Policies</a></li>

                    <li id="announcements"><a href="https://journal.iitta.gov.ua/index.php/itlt/announcement">News</a></li>


                    <li class="navItem" id="navItem-0"><a href="http://journal.iitta.gov.ua/index.php/itlt/pages/view/faq">FAQ</a></li>
                </ul>
                <a href="#" id="pull">Menu</a>
            </div>

            <div id="headerlogo">
                <!--<img src="/lib/pkp/templates/common/social_img/book.png" height="85">-->
            </div>

            <div id="headerTitle">
                <h1>
                    Information Technologies and Learning Tools
                </h1><br />
                <div id="head_subtitle">Theory, Methods and Practice of Using ICT in Education</div>
            </div>


        </div>

        <div id="container">
            <div id="body">

                <div id="sidebar">
                    <div id="leftSidebar">


                        <div class="block" id="sidebarUser">
                            <span class="blockTitle">User</span>

                            <form method="post" action="https://journal.iitta.gov.ua/index.php/itlt/login/signIn">
                                <table>
                                    <tr>
                                        <td><label for="sidebar-username">Username</label></td>
                                        <td><input type="text" id="sidebar-username" name="username" value="" size="12" maxlength="32" class="textField" /></td>
                                    </tr>
                                    <tr>
                                        <td><label for="sidebar-password">Password</label></td>
                                        <td><input type="password" id="sidebar-password" name="password" value="" size="12" class="textField" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><input type="checkbox" id="remember" name="remember" value="1" /> <label for="remember">Remember me</label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><input type="submit" value="Login" class="button" /></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div class="block" id="sidebarLanguageToggle">

                            <span class="blockTitle">Language</span>
                            <form action="#">
                                <label for="languageSelect">Select Language</label><br />
                                <select size="1" name="locale" onchange="location.href=('https://journal.iitta.gov.ua/index.php/itlt/user/setLocale/NEW_LOCALE?source=%2Findex.php%2Fitlt%2Findex'.replace('NEW_LOCALE', this.options[this.selectedIndex].value))" class="selectMenu"><option label="English" value="en_US" selected="selected">English</option>
                                    <option label="Русский" value="ru_RU">Русский</option>
                                    <option label="Українська" value="uk_UA">Українська</option>
                                </select>
                                <!--<input type="submit" class="button" value="Submit" onclick="changeLanguage(); return false;" />-->
                            </form>
                        </div>
                        <div class="block" id="sidebarNavigation">
                            <span class="blockTitle">Journal Content</span>

                            <form id="simpleSearchForm" action="https://journal.iitta.gov.ua/index.php/itlt/search/search">
                                <table id="simpleSearchInput">
                                    <tr>
                                        <td>
                                            <label for="simpleQuery">Search <br />
                                                <input type="text" id="simpleQuery" name="simpleQuery" size="15" maxlength="255" value="" class="textField" /></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label for="searchField">
                                            Search Scope
                                            <br />
                                            <select id="searchField" name="searchField" size="1" class="selectMenu">
                                                <option label="All" value="query">All</option>
                                                <option label="Authors" value="authors">Authors</option>
                                                <option label="Title" value="title">Title</option>
                                                <option label="Abstract" value="abstract">Abstract</option>
                                                <option label="Index terms" value="indexTerms">Index terms</option>
                                                <option label="Full Text" value="galleyFullText">Full Text</option>

                                            </select></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" value="Search" class="button" /></td>
                                    </tr>
                                </table>
                            </form>

                            <br />

                            <span class="blockSubtitle">Browse</span>
                            <ul>
                                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/issue/archive">By Issue</a></li>
                                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/search/authors">By Author</a></li>
                                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/search/titles">By Title</a></li>

                            </ul>
                        </div>
                        <div class="block" id="notification">
                            <span class="blockTitle">Notifications</span>
                            <ul>
                                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/notification">View</a></li>
                                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/notification/subscribeMailList">Subscribe</a></li>
                            </ul>
                        </div>
                        <div class="block" id="sidebarInformation">
                            <span class="blockTitle">Information</span>
                            <ul>
                                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/information/readers">For Readers</a></li>      <li><a href="https://journal.iitta.gov.ua/index.php/itlt/information/authors">For Authors</a></li>      <li><a href="http://journal.iitta.gov.ua/index.php/itlt/pages/view/reviewer">For Reviewers</a></li>     <li><a href="https://journal.iitta.gov.ua/index.php/itlt/information/librarians">For Librarians</a></li>
                            </ul>
                        </div>
                        <div class="block custom" id="customblock-FlagCounter">
                            <div>&nbsp;</div>
                            <div><a href="https://info.flagcounter.com/iLWX" rel="nofollow"><img src="http://s11.flagcounter.com/count/iLWX/bg_f0f2f6/txt_01445F/border_a9b4ca/columns_2/maxflags_6/viewers_1/labels_1/pageviews_1/flags_1/" alt="Flag Counter" border="0" /></a></div>
                        </div>  <div class="block custom" id="customblock-DailyStat">
                        <div class="stat"><!-- hit.ua --> <a href="http://hit.ua/?x=99537" target="_blank">



                        </a><noscript>&lt;img src='http://c.hit.ua/hit?i=99537&amp;amp;g=0&amp;amp;x=5' border='0' width='88' height='31' alt='hit.ua: посетителей и просмотров за сегодня' title='hit.ua: посетителей и просмотров за сегодня'/&gt;</noscript><!-- / hit.ua --></div>
                        <div class="stat1"><!-- I.UA counter --><a title="Rated by I.UA" onclick="this.href='http://i.ua/r.php?155687';" href="http://www.i.ua/" target="_blank">

                        </a><!-- End of I.UA counter --></div>
                    </div>  <div class="block custom" id="customblock-RevolverMaps">
                        <div>&nbsp;</div>
                        <script type="text/javascript" src="https://ra.revolvermaps.com/0/0/4.js?i=0th2s9shnyq&amp;m=7&amp;h=90&amp;c=ff0000&amp;r=0"></script>
                    </div>
                    </div>
                </div>





        <!-- .pkp_navigation_user_wrapper
        <nav class="pkp_navigation_user_wrapper navDropdownMenu" id="navigationUserWrapper" aria-label="{translate|escape key="common.navigation.user"}">
            <ul id="navigationUser" class="pkp_navigation_user pkp_nav_list">
            {if $isUserLoggedIn}
                <li class="profile {if $unreadNotificationCount} has_tasks{/if}" aria-haspopup="true" aria-expanded="false">
                    <a href="{url router=$smarty.const.ROUTE_PAGE page="submissions"}">
                        {$loggedInUsername|escape}
                        <span class="task_count">
                            {$unreadNotificationCount}
                        </span>
                    </a>
                    <ul>
                        {if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_ASSISTANT, ROLE_ID_REVIEWER, ROLE_ID_AUTHOR), (array)$userRoles)}
                            <li>
                                <a href="{url router=$smarty.const.ROUTE_PAGE page="submissions"}">
                                    {translate key="navigation.dashboard"}
                                    <span class="task_count">
                                        {$unreadNotificationCount}
                                    </span>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="profile"}">
                                {translate key="common.viewProfile"}
                            </a>
                        </li>
                        {if array_intersect(array(ROLE_ID_SITE_ADMIN), (array)$userRoles)}
                            <li>
                                <a href="{if $multipleContexts}{url router=$smarty.const.ROUTE_PAGE context="index" page="admin" op="index"}{else}{url router=$smarty.const.ROUTE_PAGE page="admin" op="index"}{/if}">
                                    {translate key="navigation.admin"}
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOut"}">
                                {translate key="user.logOut"}
                            </a>
                        </li>
                        {if $isUserLoggedInAs}
                            <li>
                                <a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOutAsUser"}">
                                    {translate key="user.logOutAs"} {$loggedInUsername|escape}
                                </a>
                            </li>
                        {/if}
                    </ul>
                </li>
                {else}
                {if !$disableUserReg}
                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="register"}">{translate key="navigation.register"}</a></li>
                {/if}
                <li><a href="{url router=$smarty.const.ROUTE_PAGE page="login"}">{translate key="navigation.login"}</a></li>
            {/if}
            </ul>
        </nav>
-->









<!--
		{* Wrapper for page content and sidebars *}
		{if $isFullWidth}
			{assign var=hasSidebar value=0}
		{/if}
		<div class="pkp_structure_content{if $hasSidebar} has_sidebar{/if}">
			<div id="pkp_content_main" class="pkp_structure_main" role="main">
-->