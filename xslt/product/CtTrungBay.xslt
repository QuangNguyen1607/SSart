<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ProductDetail">
		<section class="page-trung-bay-chi-tiet main-section">
			<div class="container">
				<h1 class="title-page-big text-center mb">
					<xsl:value-of disable-output-escaping="yes" select="../ZoneTitle"></xsl:value-of>
				</h1>
				<div class="gallery-detail-wrap">
					<div class="gallery-detail-img">
						<a>
							<xsl:attribute name="data-fancybox">
								<xsl:text disable-output-escaping="yes"></xsl:text>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="ProductImages/ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img class="lazyload">
								<xsl:attribute name="data-src">
									<xsl:value-of select="ProductImages/ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="gallery-detail-content">
						<div class="wrap">
							<h2 class="title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<div class="title-sub">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</div>
							<div class="price">Giá từ:
								<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
								<xsl:text disable-output-escaping="yes"> - </xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of> đ
							</div>
							<div class="content">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
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
			</div>
		</section>
		<xsl:if test="count(ProductOther) &gt; 0">
			<section class="trung-bay-khac">
				<div class="container">
					<h3 class="title-page-big text-center mb">Tác phẩm trưng bày khác</h3>
					<div class="wrap-slide-section">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="ProductOther"></xsl:apply-templates>
							</div>
						</div>
						<div class="wrap-button-main no-right">
							<div class="button-prev button-sw-2">
								<em class="lnr lnr-chevron-left"></em>
							</div>
							<div class="button-next button-sw-2">
								<em class="lnr lnr-chevron-right"></em>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductOther">
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
					<a class="display-title" href="">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					<p class="display-small">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
					<div class="display-price">Giá từ:
						<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
						<xsl:text disable-output-escaping="yes"> - </xsl:text>
						<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of> đ
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>