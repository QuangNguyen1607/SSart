<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="nghe-si-tac-pham-ds main-section">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="Zone" mode="tab"></xsl:apply-templates>
				</div>
				<xsl:apply-templates select="Zone" mode="content"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="tab">
		<div class="col-lg-4">
			<div class="box-tac-pham">
				<div class="img">
					<a class="zoom-img">
						<xsl:attribute name="href">
							<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img >
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<a class="title">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="content">
		<div class="box-detail-tac-pham">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">box-detail-tac-pham active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">tab-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="close-button">
				<em class="material-icons">clear</em>
			</div>
			<div class="row">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6">
			<div class="box-img">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					</div>
				</div>
				<div class="wrap-title-button">
					<div class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
					<div class="wrap-button">
						<div class="button-prev">
							<em class="lnr lnr-chevron-left"></em>
						</div>
						<div class="button-next">
							<em class="lnr lnr-chevron-right"></em>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="box-content">
				<div class="content">
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
					xem thêm
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="img zoom-img">
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
		</div>
	</xsl:template>
</xsl:stylesheet>