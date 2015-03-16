<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<jsp:directive.include file="includes/top.jsp" />
  <div id="msg" class="success">
    <h2><spring:message code="screen.success.header" /></h2>
    <p><spring:message code="screen.success.success" /></p>
    <p><spring:message code="screen.success.security" /></p>
  </div>
  <div>附加信息在此---------------------------</div>
<%
Enumeration<String> keys = request.getAttributeNames();
while (keys.hasMoreElements()) {
	String key = keys.nextElement();
	String value = request.getAttribute(key).toString();
	//this.appendConfig(key, value);
	out.println("====================================================<br />");
	out.println("<span style='color:red'>"  +key + "</span>:" + value);
	out.println("<br />====================================================<br />");
}

out.println("====================================================<br />");
out.println("==================  SESSION START  ====================<br />");
out.println("====================================================<br />");

Enumeration<String> sessions = request.getSession().getAttributeNames();
while (sessions.hasMoreElements()) {
	String key = sessions.nextElement();
	String value = request.getSession().getAttribute(key).toString();
	out.println("====================================================<br />");
	out.println("<span style='color:red'>"  +key + "</span>:" + value);
	out.println("<br />====================================================<br />");
}

out.println(request.getAttribute("credentials"));
%>
<jsp:directive.include file="includes/bottom.jsp" />

