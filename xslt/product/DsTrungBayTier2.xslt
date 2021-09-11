<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductList">
		<section class="page-trung-bay main-section">
			<div class="container">
				<h1 class="title-page-big text-center mb">
					<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
				</h1>
				<div class="row">
					<xsl:apply-templates select="Product"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-3 col-md-4 col-sm-6">
			<div class="item-display-gallery">
				<div class="display-img zoom-img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="display-content">
					<a class="display-title" href="">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<p class="display-small">
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>