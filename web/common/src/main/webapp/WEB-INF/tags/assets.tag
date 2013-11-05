<%@ tag body-content="empty" %>
<%@ attribute name="group" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="base" value="${pageContext.request.contextPath}"/>
<c:if test="${empty group}"><c:set var="group" value="main"/></c:if>
<c:if test="${not empty param.debug}">
    <c:set var="debugAssets" value="${param.debug}" scope="session"/>
</c:if>
<c:choose>

    <c:when test="${sessionScope.debugAssets}">
        <link rel="stylesheet" type="text/css" href="${base}/styles/lib/bootstrap-2.3.2.min.css"/>
        <link rel="stylesheet" type="text/css" href="${base}/styles/lib/bootstrap-responsive-2.3.2.min.css"/>
        <link rel="stylesheet" type="text/css" href="${base}/styles/style.css"/>

        <script type="text/javascript" src="${base}/scripts/lib/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="${base}/scripts/lib/bootstrap-2.3.2.min.js"></script>
        <script type="text/javascript" src="${base}/scripts/lib/plugins/jquery.cookie.js"></script>
        <script type="text/javascript" src="${base}/scripts/script.js"></script>
    </c:when>
    <c:otherwise>
        <link rel="stylesheet" type="text/css" href="${base}/assets/v/${applicationScope.assetsVersion}/${group}.css"/>
        <script type="text/javascript" src="${base}/assets/v/${applicationScope.assetsVersion}/${group}.js"></script>
    </c:otherwise>
</c:choose>