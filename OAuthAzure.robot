<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>11.1.0.0</version>
      <version>11.2.0.0</version>
    </saved-by-versions>
    <file-type>robot</file-type>
    <referenced-types>
      <type name="azuremetadata"/>
      <type name="OAuthCredentials"/>
    </referenced-types>
    <triggers/>
    <sub-robots/>
    <device-mappings/>
    <comment/>
    <tags/>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="metadata" type-name="azuremetadata"/>
      <typed-variable name="credentials" type-name="OAuthCredentials"/>
    </typed-variables>
    <parameters>
      <parameter name="credentials" type-name="OAuthCredentials"/>
    </parameters>
    <return-variables>
      <variable name="metadata"/>
    </return-variables>
    <store-in-database-variables/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">metadata</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">azuremetadata</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="1">credentials</property>
      <property name="parameter" class="Boolean" id="2">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">OAuthCredentials</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="accessToken" class="AttributeAssignment">
            <property name="attributeValue" class="String">EncryptedPassword(1){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}</property>
            <property name="currentlyAssigned" idref="2"/>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="3">kapow.robot.plugin.common.domain.PasswordAttributeType</property>
          </property>
          <property name="refreshToken" class="AttributeAssignment">
            <property name="attributeValue" class="String">EncryptedPassword(1){qjNsNr7bXizAkfv2MlykPaxQm0aqzH9Bv6Dk31l6qG+zeXcxgN55T8R69gtiXIdL8mdsKLLIR1yPesboKWyDOb4yWCSX2zlLnW/WGUyPqULhPIJFwQxHXJKr5B45bHtIsz6dRrTTT2W6qtHvUFh2L79Kf0y73FhDvJ/fFCmTclCxZ6FQg95SO5yQ0tpNmZxC5HJsM6HOe0C/ffUVLqB6Qa1WozSNAX08gpzWAFCEj2/pPV4Zmg9HLKGX/90ueZts8j2KGYLhTSaRbvP+HmFvabA3kk6z8z49e4HT+C6adDvgTmRDmt9rYMGo+AhgX5Rw41NuOMXMflSVbdHqGm2XLuBkYFOYEjhLx2y57zGUeVe+Z2ESjwVLIr2k5tgyc5Rhx16lJZACSU2nssjfVIy7R9A6dlG7D2xmhZr66TWat2+uSXg6n/llYoZ9tf5fdpxg53FiMr0QT0ySbPcSXZ12acFcmCfD4z07kHrrFhh7g0XDXXcvowh3QJJ56Bdhm7xCzU5+KsDNcUyHge8PWZOYaqd3ckJ9/npvtXv93E2PtUrQXZkjvQ9NVJaHug9ClZNyy3WFDX3vPSmmkbXcXnyTS8x9kymBCFBWmZDo7U90t2vCeGRQtQ1cZqRr8x4al6hk5Tp9LIDPcj6QkfDZSqO6QNxbZDeX8ndIs4K23EBxqWbGcnE/tweAPK2dx9czdJhs4WigTbzzgG+4hbkbL26EZuFThUOzE1llo3/b7UBwjl7waYRJggQ5VrJp/f1XloM+xlZ7TLvMbEqtfbz3WZGPSeE8YxesEHduhIj67j5cqinwOX5Lkw1IWMR8+CFgd45NzG5sKa/PaCyGj7oIT1h6Tq9sbTe1/X1Nf6H4+EuiqEjKS3IYpN6AOIWv8tcyeZplrlaPGbnwM0WWq9ndK4+ZMeF3nk6C0W1luYDt60yClULvOnBIu+5ROsWX1O4ZmYNLvUaQGbfiN2/Bq8rqOpykQMpMgka08U9ck3G7FDJ6iWPAMl1Jnwo/VshuyPpdmLpK5nh+UaD0byq+ncjzTJaUW69JhEOj0lZWg2X4GluakTrzPaMulu9nV4+p+N43ka8rx1ZfJY7oTG2hjL7zYWypXLJZfVnE5z82wJHGGVV1tD29cJkrrN9uZbCA1BM+maFOxnKPJY0SbFfBoPYSW2KFZMVGikexFDcls4+42zqkdD+8bKVGkeB1KZCpvNxXjK9aq3ilNIINb0W9nOzzW4+6bM11bUiw7VhJxZLwEkCEmj7nVFxNnPs8Xplt0gtPhY0rrlxcV50HaEencMcIR2+ZTMo3hRKw8Uw7nKf7DjKOizHdS5xLkRNySYeP/wpXWLhm02iiRL3Te1fAnrnwFaW8XcpNnE59+Tk9e4DP30eOe0q/PZ9OrttbLb2G1f1Je4Nnv3JhTnwDekSBa+0AXXWQT644c06c5TkigKv0Cz6BsV/Qb5gykA9QPpqd7fQ+g6Rb3HOSTngIalmgbsbrYJCRJcFdky2eD3pmlqfp/EphmSjzdXsNrNxPVIOt0P0ZloZi3V5+TJoHX2w=}</property>
            <property name="currentlyAssigned" idref="2"/>
            <property name="lastKnownAttributeType" idref="3"/>
          </property>
          <property name="serviceProvider" class="AttributeAssignment">
            <property name="attributeValue" class="String">Microsoft Azure AD 2.0</property>
            <property name="currentlyAssigned" idref="2"/>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="4">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="4"/>
  <property name="privateHTTPCacheEnabled" idref="2"/>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList"/>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="4"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="5"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">Call REST Web Service</property>
        <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">https://graph.microsoft.com/v1.0/$metadata</property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToVariableOutputSpecification" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">metadata.metadata</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
            <property name="credentialsProvider" class="com.kapowtech.net.OAuthCredentialsProvider">
              <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                <property name="name" idref="1"/>
              </property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">credentialsProvider</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="7"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="8">
        <property name="name" class="String">Write File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">c:\RobotsData\rest.xml</property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">metadata.metadata</property>
            </property>
          </property>
          <property name="appendToFile" idref="2"/>
          <property name="executeInRoboMaker" idref="2"/>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="9">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" idref="7"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="10"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="6"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="8"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
        <name/>
        <comment/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27"/>
</object>
