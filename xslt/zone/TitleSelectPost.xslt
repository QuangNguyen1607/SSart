<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<h1 class="title-page-big mb text-center">
			<xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
		</h1>
		<div class="ajaxSelect">
			<div class="wrap-select-post">
				<div class="post-select">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/TitleText"></xsl:value-of>
					</p>
					<div class="select-option">
						<span>
							<xsl:choose>
								<xsl:when test="Zone[IsActive='true']/Zone[IsActive='true']">
									<xsl:value-of disable-output-escaping="yes" select="Zone[IsActive='true']/Zone[IsActive='true']/Title"></xsl:value-of>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/NewsListAllFilter"></xsl:value-of>
								</xsl:otherwise>
							</xsl:choose>
						</span>
						<em class="material-icons">expand_more</em>
						<ul class="list-option">
							<xsl:apply-templates select="Zone[IsActive='true']/Zone" mode="ZoneSub"></xsl:apply-templates>
						</ul>
					</div>
				</div>
				<div class="post-select">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ArtistText"></xsl:value-of>
					</p>
					<div class="select-option">
						<span>
							<xsl:choose>
								<xsl:when test="Zone[IsActive='true']/Zone[IsActive='true']/Zone[IsActive='true']">
									<xsl:value-of disable-output-escaping="yes" select="Zone[IsActive='true']/Zone[IsActive='true']/Zone[IsActive='true']/Title"></xsl:value-of>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of disable-output-escaping="yes" select="/ZoneList/NewsListAllFilter"></xsl:value-of>
								</xsl:otherwise>
							</xsl:choose>
						</span>
						<em class="material-icons">expand_more</em>
						<ul class="list-option">
							<xsl:apply-templates select="Zone[IsActive='true']/Zone[IsActive='true']/Zone" mode="ZoneSub"></xsl:apply-templates>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneSub">
		<li class="option">
			<a class="ajaxlink">
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
</xsl:stylesheet>