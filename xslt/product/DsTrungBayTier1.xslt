<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<h1 class="title-page-big text-center mb">
			<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
		</h1>
		<xsl:apply-templates select="Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="wrap-slide-section">
			<h2 class="title-underline-text">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h2>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="Product"></xsl:apply-templates>
				</div>
			</div>
			<div class="wrap-button-main">
				<div class="button-prev button-sw-2">
					<em class="lnr lnr-chevron-left"></em>
				</div>
				<div class="button-next button-sw-2">
					<em class="lnr lnr-chevron-right"></em>
				</div>
			</div>
			<div class="item-center">
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
	</xsl:template>
	<xsl:template match="Product">
		<div class="swiper-slide">
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
					<a class="display-title">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
					<p class="display-small">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
					<div class="display-price">Giá từ:
						<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
					- <xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of> đ</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>