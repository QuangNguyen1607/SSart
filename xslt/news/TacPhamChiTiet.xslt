<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="tac-pham-chi-tiet">
			<div class="container">
				<div class="item-center flex-column">
					<h1 class="title-page-big mb">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h1>
					<div class="desc-main text-center">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
				<div class="container-1170">
					<div class="content-main">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>