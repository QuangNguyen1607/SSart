<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="tin-tuc-detail pt">
			<div class="container">
				<div class="container-1170">
					<div class="wrap-header-post">
						<h1 class="title-page-big fw-400">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h1>
						<div class="wrap-date-share">
							<div class="date-main">
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</div>
							<ul class="wrap-social-main">
								<li>
									<a>
										<xsl:attribute name="href">
											<xsl:text disable-output-escaping="yes">
									https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
											<xsl:value-of disable-output-escaping="yes" select="FullUrl">
								</xsl:value-of>
										</xsl:attribute>
										<em class="ri-facebook-fill"></em>
									</a>
								</li>
								<li>
									<a>
										<xsl:attribute name='href'>
											<xsl:text>https://twitter.com/intent/tweet?text=</xsl:text>
											<xsl:value-of select='FullUrl'></xsl:value-of>
										</xsl:attribute>
										<em class="ri-twitter-fill"></em>
									</a>
								</li>
								<li>
									<a>
										<xsl:attribute name='href'>
											<xsl:text>https://www.linkedin.com/cws/share?url=</xsl:text>
											<xsl:value-of select='FullUrl'></xsl:value-of>
										</xsl:attribute>
										<em class="ri-linkedin-box-fill"></em>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="content-main">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
		<section class="tin-tuc-other">
			<div class="container">
				<div class="title-page-big mb">
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/OtherNewsText"></xsl:value-of>
				</div>
				<div class="wrap-slide-main">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
						</div>
						<div class="wrap-button-static">
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
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
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
					<a class="post-category" href="javascript:;">
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</a>
					<a class="post-title" href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<div class="post-date">
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>