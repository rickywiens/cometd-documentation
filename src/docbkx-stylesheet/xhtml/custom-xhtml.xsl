<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        xmlns="http://www.w3.org/1999/xhtml"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xslthl="http://xslthl.sf.net"
        xmlns:gcse="http://www.google.com"
        version="1.0">

    <xsl:import href="urn:docbkx:stylesheet" />
    <xsl:import href="urn:docbkx:stylesheet/highlight.xsl" />

    <xsl:param name="use.id.as.filename" select="1"/>
    <xsl:param name="section.label.includes.component.label" select="1" />
    <xsl:param name="highlight.source" select="1" />
    <xsl:param name="table.borders.with.css" select="1" />

    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="processing-instruction('linebreak')">
        <br />
    </xsl:template>

    <xsl:template match="xslthl:comment" mode="xslthl">
        <span class="hl-comment">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="xslthl:string" mode="xslthl">
        <span class="hl-string">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="xslthl:annotation" mode="xslthl">
        <span class="hl-annotation">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template name="user.head.content">
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-11897685-1']);
_gaq.push(['_setDomainName', '.cometd.org']);
_gaq.push(['_trackPageview']);
(function()
{
    var ga = document.createElement('script');
    ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
})();
</script>
    </xsl:template>

    <xsl:template name="user.header.content">
        <div class="callout">
            <a href="https://www.webtide.com/support.jsp">
                For CometD support, custom code development, clustering advices,
                scalability and performance tuning, contact the core CometD developers at
                <span class="website">www.webtide.com</span>
            </a>
        </div>
        <div>
            <script>
                (function() {
                    var cx = '016459005284625897022:cerl6-injdw';
                    var gcse = document.createElement('script');
                    gcse.type = 'text/javascript';
                    gcse.async = true;
                    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                            '//www.google.com/cse/cse.js?cx=' + cx;
                    var s = document.getElementsByTagName('script')[0];
                    s.parentNode.insertBefore(gcse, s);
                })();
            </script>
            <gcse:search></gcse:search>
        </div>
    </xsl:template>

</xsl:stylesheet>
