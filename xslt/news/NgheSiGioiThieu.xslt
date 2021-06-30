<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="nghe-si-gioi-thieu main-section">
			<div class="container">
				<div class="personKongo" id="tab1">
					<div class="item-center text-center">
						<div class="desc-main">
							<xsl:value-of disable-output-escaping="yes" select="ZoneDescription"></xsl:value-of>
						</div>
					</div>
					<div class="wrap-history-personKongo">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="sec-history">
			<div class="item-img-content">
				<div class="item-date-history">
					<span>
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</span>
				</div>
				<div class="item-img">
					<a class="zoom-img">
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
				<div class="item-content">
					<h3 class="item-title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</h3>
					<div class="item-desc">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
					<div class="btn-left">
						<a class="btn btn-view-more">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						XEM THÊM
						</a>
					</div>
				</div>
			</div>
			<div class="item-empty"></div>
		</div>
	</xsl:template>
</xsl:stylesheet>