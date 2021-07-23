<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<ul class="main-menu">
			<xsl:apply-templates select="Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<li class="list-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>list-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:choose>
				<xsl:when test="count(Zone) &gt; 0 and IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">list-item dropdown active</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="count(Zone) &gt; 0">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">list-item dropdown</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
				</xsl:otherwise>
			</xsl:choose>
			<a class="link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
			<xsl:if test="count(Zone) &gt; 0">
				<ul class="list-dropdown">
					<xsl:apply-templates select="Zone" mode="ZoneSub"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneSub">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
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
</xsl:stylesheet>