<!-- Author: T. Wittrock, Kiel -->
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="UTF-8"/>

<xsl:template match="*">
  <xsl:choose>
    <xsl:when test="name()='FileLocation'">
      <xsl:if test="contains(@Url, 'http://') and (contains(@Url, 'windowsserver2003-') or contains(@Url, 'windows2003-') or contains(@Url, 'windowsxp-')) and contains(@Url, '-x64-') and contains(@Url, '-enu') and contains(@Url, '.exe')">
        <xsl:value-of select="@Url"/>
        <xsl:text>&#10;</xsl:text>
      </xsl:if>
      <xsl:if test="contains(@Url, 'http://') and contains(@Url, '/windowsmedia') and contains(@Url, '-x64-') and contains(@Url, '-enu') and contains(@Url, '.exe')">
        <xsl:value-of select="@Url"/>
        <xsl:text>&#10;</xsl:text>
      </xsl:if>
      <xsl:if test="contains(@Url, 'http://') and contains(@Url, '/msxml6') and contains(@Url, '-enu-') and contains(@Url, '-amd64') and contains(@Url, '.exe')">
        <xsl:value-of select="@Url"/>
        <xsl:text>&#10;</xsl:text>
      </xsl:if>
      <xsl:if test="contains(@Url, 'http://') and contains(@Url, '/windowsxp') and contains(@Url, '-kb923789-') and contains(@Url, '-x86-') and contains(@Url, '-enu') and contains(@Url, '.exe')">
        <xsl:value-of select="@Url"/>
        <xsl:text>&#10;</xsl:text>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:apply-templates select="*"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:transform>
