<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://www.opengis.net/gml/3.2" xmlns:ns2="http://www.fixm.aero/base/3.0" xmlns:ns3="http://www.fixm.aero/flight/3.0" xmlns:ns4="http://www.fixm.aero/foundation/3.0" xmlns:ns5="http://www.faa.aero/nas/3.0">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/message">{"identifier":"<xsl:value-of select="flight/flightPlan/@identifier"/>","fdpsFlightStatus":"<xsl:value-of select="flight/flightStatus/@fdpsFlightStatus"/>","operator":"<xsl:value-of select="flight/operator/operatingOrganization/organization/@name"/>","aircraftIdentification":"<xsl:value-of select="flight/flightIdentification/@aircraftIdentification"/>","departurePoint":"<xsl:value-of select="flight/departure/@departurePoint"/>","arrivalPoint":"<xsl:value-of select="flight/arrival/@arrivalPoint"/>","lat":"<xsl:value-of select="substring-before(flight/enRoute/position/position/location/pos,' ')"/>","lon":"<xsl:value-of select="substring-after(flight/enRoute/position/position/location/pos,' ')"/>","surveillance":"<xsl:value-of select="flight/enRoute/position/actualSpeed/surveillance"/>","altitude":"<xsl:value-of select="flight/enRoute/position/altitude"/>","trackVelocityX":"<xsl:value-of select="flight/enRoute/position/trackVelocity/x"/>","trackVelocityY":"<xsl:value-of select="flight/enRoute/position/trackVelocity/y"/>"}</xsl:template>
</xsl:stylesheet>