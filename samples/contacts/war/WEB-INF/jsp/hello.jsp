<%@ include file="/WEB-INF/jsp/include.jsp" %>

<html>
<head><title>Contacts Security Demo</title></head>
<body>
<h1>Contacts Security Demo</h1>
<p>This is a very simple application to demonstrate the Acegi Security System for Spring.
The application manages contacts, partitioned based on the user that owns them.
Users may only manage their own contacts, and only users with ROLE_SUPERVISOR
are allowed to delete their contacts. The application automatically extracts
the principal from the web container (which should be configured with a 
suitable Acegi Security System for Spring adapter). It also demonstrates how to configure
server-side secure objects so they can only be accessed via a public facade.

<P>This application also demonstrates a public method, which is used to select
the random contact that is shown below:
<P>
<code>
<c:out value="${contact}"/>
</code>
<p>
<p><A HREF="<c:url value="secure/index.htm"/>">Manage</a>
<A HREF="<c:url value="secure/debug.jsp"/>">Debug</a>
</body>
</html>
