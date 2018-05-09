<html>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sling:defineObjects />
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sling EXE1 </title>
</head>
    <body >
       		<%--
    		Using the Sling Taglibs to get the contacts resource
    		where the contacts are stored
    		 --%>
            <c:set var="ex1Resource" value="${sling:getRelativeResource(resource,'ex1')}" />
                <ul class="list-group" id="ex1-list">
                <c:set var="ex1" value="${sling:listChildren(ex1Resource)}" />
                <c:forEach var="ex11" items="${ex1}" >
                	<sling:adaptTo adaptable="${ex11}" adaptTo="org.apache.sling.api.resource.ValueMap" var="ex11Props" />
                	<li class="list-group-item">
                        <div class="col-xs-12 col-sm-9">
                            <span class="name">${ex11Props['name']}</span><br>
                            <span class="address">${ex11Props['address']}</span><br>
                            <span class="phone">${ex11Props['phone']}</span><br>
                            <span class="email">${ex11Props['email']}</span><br>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                </c:forEach>
                </ul>

                <div class="modal-body">
                    <form action="/content/excercicesapp/ex1/*" method="post" >
                        <fieldset >
                            <label for="name">Name</label>
                            <input type="text"  id="name"  name="name">
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="email">Email address</label>
                            <input type="email" id="email" name="email">
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="address">Address</label>
                            <input type="text"  id="address"  name="address">
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text"  id="phone" name="phone">
                        </fieldset>
                        <input type="hidden" name=":redirect" value="/content/excercicesapp.html" />
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
</body>
</html>