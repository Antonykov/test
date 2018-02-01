{**
 * templates/frontend/pages/about.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view a journal's or press's description, contact
 *  details, policies and more.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="about.aboutContext"}

<div id="main">

    <div id="breadcrumb">
        <a href="https://journal.iitta.gov.ua/index.php/itlt/index">Home</a> &gt;
        <a href="https://journal.iitta.gov.ua/index.php/itlt/about" class="current">About the Journal</a></div>

    <h2>About the Journal</h2>



    <div id="content">




        <div id="about_custom"><div id="aboutPeople">
            <h3>People</h3>
            <ul>
                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/contact">Contacts</a></li>
                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialTeam">Editorial Board</a></li>
                <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/displayMembership/11">Editorial Staff</a></li>

            </ul>
        </div>
            <div id="aboutPolicies">
                <h3>Policies</h3>
                <ul>
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#focusAndScope">Focus and Scope</a></li>	<!--<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#sectionPolicies">Section Policies</a></li>-->
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#custom-0">Journal Sections</a></li>			<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#custom-1">Ethics Policies</a></li>			<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#custom-2">Author Fees</a></li>
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#peerReviewProcess">Peer Review Process</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#publicationFrequency">Publication Frequency</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#openAccessPolicy">Open Access Policy</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/editorialPolicies#archiving">Archiving</a></li>

                </ul>
            </div>
            <div id="aboutSubmissions">
                <h3>Submissions</h3>
                <ul>
                    <!--<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/submissions#onlineSubmissions">Online Submissions</a></li>-->
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/submissions#authorGuidelines">Author Guidelines</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/submissions#copyrightNotice">Copyright Notice</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/submissions#privacyStatement">Privacy Statement</a></li>
                </ul>
            </div>
            <div id="aboutOther">
                <h3>Other</h3>
                <ul>
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/journalSponsorship">Journal Sponsorship</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/history">Journal History</a></li>	<li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/siteMap">Site Map</a></li>
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/aboutThisPublishingSystem">About this Publishing System</a></li>
                    <li><a href="https://journal.iitta.gov.ua/index.php/itlt/about/statistics">Statistics</a></li>
                </ul>
            </div>


        </div>

{include file="frontend/components/footer.tpl"}
