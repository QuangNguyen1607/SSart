<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="home-4 main-section">
			<div class="container">
				<div class="wrap-title-flex">
					<h2 class="title-text pl">
						<xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
					</h2>
					<a class="btn btn-view-more grey">
						<xsl:attribute name="href">
							<xsl:value-of select="Zone/Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Zone/Title"></xsl:value-of>
						</xsl:attribute>
					XEM TẤT CẢ
					</a>
				</div>
				<div class="wrap-post">
					<div class="row">
						<xsl:apply-templates select="Zone/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-4 col-md-6">
			<div class="post-item">
				<div class="post-img zoom-img">
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
				<div class="post-content">
					<a class="post-title">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
					<div class="post-author">
						<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
					</div>
					<div class="post-date">
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>