{**
 * templates/frontend/components/headerHead.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2000-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header <head> tag and contents.
 *}
<head>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>
		{$pageTitleTranslated|strip_tags}
		{* Add the journal name to the end of page titles *}
		{if $requestedPage|escape|default:"index" != 'index' && $currentContext && $currentContext->getLocalizedName()}
			| {$currentContext->getLocalizedName()}
		{/if}
	</title>

	{load_header context="frontend"}
	{load_stylesheet context="frontend"}

    <link rel="stylesheet" href="https://journal.iitta.gov.ua/lib/pkp/styles/pkp.css" type="text/css" />


    <link rel="stylesheet" href="/ojs/lib/pkp/styles/journal/style.css" type="text/css" />
    <link rel="stylesheet" href="/ojs/lib/pkp/styles/journal/min.css" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script type="text/javascript" src="/ojs/lib/pkp/styles/journal/script.js"></script>
    <!--
    <link rel="stylesheet" href="https://journal.iitta.gov.ua/lib/pkp/styles/common.css" type="text/css" />
    <link rel="stylesheet" href="https://journal.iitta.gov.ua/styles/common.css" type="text/css" />
    <link rel="stylesheet" href="https://journal.iitta.gov.ua/styles/compiled.css" type="text/css" />
    -->


    <link rel="stylesheet" href="https://journal.iitta.gov.ua/styles/sidebar.css" type="text/css" />	<link rel="stylesheet" href="https://journal.iitta.gov.ua/styles/leftSidebar.css" type="text/css" />
    <link rel="stylesheet" href="https://journal.iitta.gov.ua/plugins/generic/externalFeed/externalFeed.css" type="text/css" />
    <link rel="stylesheet" href="https://journal.iitta.gov.ua/plugins/generic/pln/css/pln.css" type="text/css" />
    <link rel="stylesheet" href="https://journal.iitta.gov.ua/plugins/blocks/languageToggle/styles/languageToggle.css" type="text/css" />

    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open Sans">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ubuntu Condensed">
</head>
