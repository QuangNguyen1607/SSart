<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home-2">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="Zone/News"></xsl:apply-templates>
				</div>
				<div class="wrap-button">
					<div class="container">
						<div class="button-prev">
							<em class="lnr lnr-chevron-left"></em>
						</div>
						<div class="button-next">
							<em class="lnr lnr-chevron-right"></em>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="box-img">
				<img class="lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="wrap-text">
				<div class="container">
					<div class="wrap">
						<div class="title-text white">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="desc">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
						<div class="btn-center">
							<a class="btn btn-view-more white">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							Xem thêm
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>