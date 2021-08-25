<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home-3 main-section">
			<div class="container">
				<div class="wrap-title-select">
					<h2 class="title-text pl">Trưng bày</h2>
					<!-- <div class="wrap-select-1">
						<ul>
							<xsl:apply-templates select="Zone" mode="select"></xsl:apply-templates>
						</ul>
					</div> -->
				</div>
				<xsl:apply-templates select="Zone" mode="content"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="select">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="content">
		<div class="wrap-slide-tab" id="tab-slide-1">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">wrap-slide-tab active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">tab-slide-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="wrap-slide">
				<h2 class="Title-Product-Home">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
				</h2>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="Product"></xsl:apply-templates>
					</div>
				</div>
			</div>
			<div class="wrap-button">
				<div class="button-prev button-sw-1">
					<em class="lnr lnr-chevron-left"></em>
				</div>
				<div class="button-next button-sw-1">
					<em class="lnr lnr-chevron-right"></em>
				</div>
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
					<!-- <div class="display-price">Giá từ:
						<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
					-
						<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of> đ
					</div> -->
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>