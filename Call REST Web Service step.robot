<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.7.0.0</version>
    </saved-by-versions>
    <referenced-types/>
    <referenced-snippets/>
    <triggers/>
    <typed-variables/>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">status</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="0">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="0"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="1">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="0"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="2"/>
    <steps class="ArrayList">
      <object class="Group" id="3">
        <name class="String">HTTP</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="4"/>
        <steps class="ArrayList">
          <object class="Group" id="5">
            <name class="String">GET</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="6"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="7">
                <property name="name" class="String" id="8">Write Log</property>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="9">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTP - GET</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="10">
                <property name="name" class="String" id="11">Call REST Web Service</property>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">http://httpbin.org/get</property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="12">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="13">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">GET was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="14">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="15"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="6"/>
                <to idref="7"/>
              </object>
              <object class="TransitionEdge">
                <from idref="7"/>
                <to idref="9"/>
              </object>
              <object class="TransitionEdge">
                <from idref="9"/>
                <to idref="10"/>
              </object>
              <object class="TransitionEdge">
                <from idref="10"/>
                <to idref="12"/>
              </object>
              <object class="TransitionEdge">
                <from idref="12"/>
                <to idref="13"/>
              </object>
              <object class="TransitionEdge">
                <from idref="13"/>
                <to idref="14"/>
              </object>
              <object class="TransitionEdge">
                <from idref="14"/>
                <to idref="15"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="16">
            <name class="String">POST</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="17"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="18">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="19">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTP - POST</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="20">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">http://httpbin.org/post</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PostRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="21">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="22">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">POST was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="23">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="24"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="17"/>
                <to idref="18"/>
              </object>
              <object class="TransitionEdge">
                <from idref="18"/>
                <to idref="19"/>
              </object>
              <object class="TransitionEdge">
                <from idref="19"/>
                <to idref="20"/>
              </object>
              <object class="TransitionEdge">
                <from idref="20"/>
                <to idref="21"/>
              </object>
              <object class="TransitionEdge">
                <from idref="21"/>
                <to idref="22"/>
              </object>
              <object class="TransitionEdge">
                <from idref="22"/>
                <to idref="23"/>
              </object>
              <object class="TransitionEdge">
                <from idref="23"/>
                <to idref="24"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="25">
            <name class="String">PUT</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="26"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="27">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="28">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTP - PUT</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="29">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">http://httpbin.org/put</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PutRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="30">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="31">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">PUT was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="32">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="33"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="26"/>
                <to idref="27"/>
              </object>
              <object class="TransitionEdge">
                <from idref="27"/>
                <to idref="28"/>
              </object>
              <object class="TransitionEdge">
                <from idref="28"/>
                <to idref="29"/>
              </object>
              <object class="TransitionEdge">
                <from idref="29"/>
                <to idref="30"/>
              </object>
              <object class="TransitionEdge">
                <from idref="30"/>
                <to idref="31"/>
              </object>
              <object class="TransitionEdge">
                <from idref="31"/>
                <to idref="32"/>
              </object>
              <object class="TransitionEdge">
                <from idref="32"/>
                <to idref="33"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="34">
            <name class="String">DELETE</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="35"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="36">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="37">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTP - DELETE</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="38">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">http://httpbin.org/delete</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.DeleteRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="39">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="40">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">DELETE was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="41">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="42"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="35"/>
                <to idref="36"/>
              </object>
              <object class="TransitionEdge">
                <from idref="36"/>
                <to idref="37"/>
              </object>
              <object class="TransitionEdge">
                <from idref="37"/>
                <to idref="38"/>
              </object>
              <object class="TransitionEdge">
                <from idref="38"/>
                <to idref="39"/>
              </object>
              <object class="TransitionEdge">
                <from idref="39"/>
                <to idref="40"/>
              </object>
              <object class="TransitionEdge">
                <from idref="40"/>
                <to idref="41"/>
              </object>
              <object class="TransitionEdge">
                <from idref="41"/>
                <to idref="42"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="43">
            <name class="String">PATCH</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="44"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="45">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="46">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTP - PATCH</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="47">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">http://httpbin.org/patch</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PatchRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="48">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="49">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">PATCH was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="50">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="51"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="44"/>
                <to idref="45"/>
              </object>
              <object class="TransitionEdge">
                <from idref="45"/>
                <to idref="46"/>
              </object>
              <object class="TransitionEdge">
                <from idref="46"/>
                <to idref="47"/>
              </object>
              <object class="TransitionEdge">
                <from idref="47"/>
                <to idref="48"/>
              </object>
              <object class="TransitionEdge">
                <from idref="48"/>
                <to idref="49"/>
              </object>
              <object class="TransitionEdge">
                <from idref="49"/>
                <to idref="50"/>
              </object>
              <object class="TransitionEdge">
                <from idref="50"/>
                <to idref="51"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="52"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="4"/>
            <to idref="5"/>
          </object>
          <object class="TransitionEdge">
            <from idref="5"/>
            <to idref="16"/>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="25"/>
          </object>
          <object class="TransitionEdge">
            <from idref="25"/>
            <to idref="34"/>
          </object>
          <object class="TransitionEdge">
            <from idref="34"/>
            <to idref="43"/>
          </object>
          <object class="TransitionEdge">
            <from idref="43"/>
            <to idref="52"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="53">
        <name class="String">HTTPS</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="54"/>
        <steps class="ArrayList">
          <object class="Group" id="55">
            <name class="String">GET</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="56"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="57">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="58">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTPS - GET</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="59">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">https://httpbin.org/get</property>
                  </property>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="60">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="61">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">GET was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="62">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="63"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="56"/>
                <to idref="57"/>
              </object>
              <object class="TransitionEdge">
                <from idref="57"/>
                <to idref="58"/>
              </object>
              <object class="TransitionEdge">
                <from idref="58"/>
                <to idref="59"/>
              </object>
              <object class="TransitionEdge">
                <from idref="59"/>
                <to idref="60"/>
              </object>
              <object class="TransitionEdge">
                <from idref="60"/>
                <to idref="61"/>
              </object>
              <object class="TransitionEdge">
                <from idref="61"/>
                <to idref="62"/>
              </object>
              <object class="TransitionEdge">
                <from idref="62"/>
                <to idref="63"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="64">
            <name class="String">POST</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="65"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="66">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="67">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTPS - POST</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="68">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">https://httpbin.org/post</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PostRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="69">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="70">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">POST was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="71">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="72"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="65"/>
                <to idref="66"/>
              </object>
              <object class="TransitionEdge">
                <from idref="66"/>
                <to idref="67"/>
              </object>
              <object class="TransitionEdge">
                <from idref="67"/>
                <to idref="68"/>
              </object>
              <object class="TransitionEdge">
                <from idref="68"/>
                <to idref="69"/>
              </object>
              <object class="TransitionEdge">
                <from idref="69"/>
                <to idref="70"/>
              </object>
              <object class="TransitionEdge">
                <from idref="70"/>
                <to idref="71"/>
              </object>
              <object class="TransitionEdge">
                <from idref="71"/>
                <to idref="72"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="73">
            <name class="String">PUT</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="74"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="75">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="76">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTPS - PUT</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="77">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">https://httpbin.org/put</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PutRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="78">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="79">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">PUT was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="80">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="81"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="74"/>
                <to idref="75"/>
              </object>
              <object class="TransitionEdge">
                <from idref="75"/>
                <to idref="76"/>
              </object>
              <object class="TransitionEdge">
                <from idref="76"/>
                <to idref="77"/>
              </object>
              <object class="TransitionEdge">
                <from idref="77"/>
                <to idref="78"/>
              </object>
              <object class="TransitionEdge">
                <from idref="78"/>
                <to idref="79"/>
              </object>
              <object class="TransitionEdge">
                <from idref="79"/>
                <to idref="80"/>
              </object>
              <object class="TransitionEdge">
                <from idref="80"/>
                <to idref="81"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="82">
            <name class="String">DELETE</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="83"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="84">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="85">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTPS - DELETE</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="86">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">https://httpbin.org/delete</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.DeleteRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="87">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="88">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">DELETE was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="89">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="90"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="83"/>
                <to idref="84"/>
              </object>
              <object class="TransitionEdge">
                <from idref="84"/>
                <to idref="85"/>
              </object>
              <object class="TransitionEdge">
                <from idref="85"/>
                <to idref="86"/>
              </object>
              <object class="TransitionEdge">
                <from idref="86"/>
                <to idref="87"/>
              </object>
              <object class="TransitionEdge">
                <from idref="87"/>
                <to idref="88"/>
              </object>
              <object class="TransitionEdge">
                <from idref="88"/>
                <to idref="89"/>
              </object>
              <object class="TransitionEdge">
                <from idref="89"/>
                <to idref="90"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="91">
            <name class="String">PATCH</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="92"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="93">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">------------------------------------------------------------------------------------------------------------------------------------------------</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="94">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">HTTPS - PATCH</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="95">
                <property name="name" idref="11"/>
                <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
                  <property name="urlProvider" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">https://httpbin.org/patch</property>
                  </property>
                  <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PatchRestRequest"/>
                  <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToBrowserStateOutputSpecification"/>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="96">
                <property name="name" class="String">Extract Status</property>
                <property name="stepAction" class="ExtractSourceStepAction">
                  <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification"/>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="97">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">PATCH was sucessfully sent and returt the following response:</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="98">
                <property name="name" idref="8"/>
                <property name="stepAction" class="WriteLog2">
                  <property name="expression" class="Expression" serializationversion="1">
                    <property name="text" class="String">status</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="99"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="92"/>
                <to idref="93"/>
              </object>
              <object class="TransitionEdge">
                <from idref="93"/>
                <to idref="94"/>
              </object>
              <object class="TransitionEdge">
                <from idref="94"/>
                <to idref="95"/>
              </object>
              <object class="TransitionEdge">
                <from idref="95"/>
                <to idref="96"/>
              </object>
              <object class="TransitionEdge">
                <from idref="96"/>
                <to idref="97"/>
              </object>
              <object class="TransitionEdge">
                <from idref="97"/>
                <to idref="98"/>
              </object>
              <object class="TransitionEdge">
                <from idref="98"/>
                <to idref="99"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="100"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="54"/>
            <to idref="55"/>
          </object>
          <object class="TransitionEdge">
            <from idref="55"/>
            <to idref="64"/>
          </object>
          <object class="TransitionEdge">
            <from idref="64"/>
            <to idref="73"/>
          </object>
          <object class="TransitionEdge">
            <from idref="73"/>
            <to idref="82"/>
          </object>
          <object class="TransitionEdge">
            <from idref="82"/>
            <to idref="91"/>
          </object>
          <object class="TransitionEdge">
            <from idref="91"/>
            <to idref="100"/>
          </object>
        </edges>
      </object>
      <object class="End" id="101"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="3"/>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="53"/>
      </object>
      <object class="TransitionEdge">
        <from idref="53"/>
        <to idref="101"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
