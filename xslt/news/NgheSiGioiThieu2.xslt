<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="nghe-si-tong-quan gioi-thieu main-section">
			<div class="container">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="img-sign">
			<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
		<div class="wrap-flex-content">
			<div class="content">
				<div class="desc">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
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
	</xsl:template>
</xsl:stylesheet>