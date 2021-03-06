<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/salesforce/VentasMovil/PM_ServicesProducts/ServiciosAdicionales"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.oracle.com/VentasMovil/PM_ServicesProducts/PM_ServicesProducts"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns1="http://xml.oracle.com/types/ServiciosAdicionales"
                xmlns:fns="urn:fault.enterprise.soap.sforce.com" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns2="urn:enterprise.soap.sforce.com" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ens="urn:sobject.enterprise.soap.sforce.com"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ServiciosAdicionales.wsdl"/>
        <oracle-xsl-mapper:rootElement name="queryResponse"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/salesforce/VentasMovil/PM_ServicesProducts/ServiciosAdicionales"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/PM_ServicesProducts.wsdl"/>
        <oracle-xsl-mapper:rootElement name="processResponse"
                                       namespace="http://xmlns.oracle.com/VentasMovil/PM_ServicesProducts/PM_ServicesProducts"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU JUL 21 19:46:03 CDT 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:processResponse>
      <xsl:for-each select="/ns0:queryResponse/ns0:QueryResults/ns0:records">
        <tns:ArrServiciosAdicionales>
          <tns:Id>
            <xsl:value-of select="ns0:Id"/>
          </tns:Id>
          <tns:Nombre>
            <xsl:value-of select="ns0:Name"/>
          </tns:Nombre>
          <tns:CantidadEquiposAutomaticos>
            <xsl:value-of select="ns0:CantidadEquiposAutomaticos__c"/>
          </tns:CantidadEquiposAutomaticos>
          <tns:Comentario>
            <xsl:value-of select="ns0:Comentario__c"/>
          </tns:Comentario>
          <tns:MaximoAgregar>
            <xsl:value-of select="ns0:MaximoAgregar__c"/>
          </tns:MaximoAgregar>
          <tns:Nombrecomercial>
            <xsl:value-of select="ns0:Nombrecomercial__c"/>
          </tns:Nombrecomercial>
          <tns:NombreEditable>
            <xsl:value-of select="ns0:NombreEditable__c"/>
          </tns:NombreEditable>
          <tns:PlanId>
            <xsl:value-of select="ns0:PlanId__c"/>
          </tns:PlanId>
          <tns:Precio>
            <xsl:value-of select="ns0:Precio__c"/>
          </tns:Precio>
          <tns:SeActiva>
            <xsl:value-of select="ns0:SeActiva__c"/>
          </tns:SeActiva>
          <tns:SeFactura>
            <xsl:value-of select="ns0:SeFactura__c"/>
          </tns:SeFactura>
          <tns:ServicioId>
            <xsl:value-of select="ns0:ServicioId__c"/>
          </tns:ServicioId>
          <tns:SRV_Mode>
            <xsl:value-of select="ns0:SRV_Mode__c"/>
          </tns:SRV_Mode>
          <tns:TipoServicio>
            <xsl:value-of select="ns0:TipoServicio__c"/>
          </tns:TipoServicio>
          <tns:TipoTelefonia>
            <xsl:value-of select="ns0:TipoTelefonia__c"/>
          </tns:TipoTelefonia>
        </tns:ArrServiciosAdicionales>
      </xsl:for-each>
      <tns:ArrProductosAdicionales>
        <tns:Id/>
      </tns:ArrProductosAdicionales>
    </tns:processResponse>
  </xsl:template>
</xsl:stylesheet>
