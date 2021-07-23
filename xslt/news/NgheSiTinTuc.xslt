<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="nghe-si-tin-tuc">
			<div class="container">
				<xsl:apply-templates select="News[position()=1]" mode="PostBig"></xsl:apply-templates>
				<div class="wrap-post-small">
					<div class="row">
						<xsl:apply-templates select="News[position() &gt; 1]" mode="PostSmall"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="PostBig">
		<div class="wrap-post-big">
			<div class="post-big-img">
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
			<div class="post-big-content">
				<a class="category">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
				</a>
				<h1 class="title">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</h1>
				<div class="date">
					<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="PostSmall">
		<div class="col-lg-4 col-sm-6">
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
					<a class="post-category">
						<xsl:attribute name="href">
							<xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
					</a>
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
					<div class="post-date">
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>