{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *} </div>
</div>

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div id="footer">
    <div id="pageFooter"><a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license"><img class="left_img" style="border-width: 0;" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" alt="Creative Commons License" /></a> "Information Technologies and Learning Tools" by <a href="http://iitlt.gov.ua/eng/index.php" rel="cc:attributionURL">Institute ITLT</a> is licensed under a <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0)</a>. <br />Based on <a href="https://pkp.sfu.ca/ojs/" rel="dct:source">Open Journal Systems 2.4.7.1</a>.<div class="footer_institute">© INSTITUTE OF INFORMATION TECHNOLOGIES AND LEARNING TOOLS, 2006-2016</div><!--<div class="footer_designed">Designed by Liliia A. Luparenko</div>--></div>

</div>

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
