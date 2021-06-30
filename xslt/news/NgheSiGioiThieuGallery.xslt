<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="nghe-si-gioi-thieu main-section">
			<div class="container">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="gallery">
			<div class="wrap-flex-main">
				<div class="gallery-item-content">
					<h2 class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<div class="content">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
				<div class="gallery-item-img">
					<div class="img">
						<a>
							<xsl:attribute name="data-fancybox">
								<xsl:text disable-output-escaping="yes"></xsl:text>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
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
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>