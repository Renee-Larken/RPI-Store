<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Nov 26, 2016, 6:11:27 AM
    Author     : sowrabbilakshminarayanan
--%>

<sql:query var="Departments" dataSource="jdbc/rpischoolstore">
    SELECT * FROM Departments
</sql:query>
        <div id="indexLeftColumn">
            <div id="welcomeText">
            <p>[ welcome text ]</p>
                    <!-- test to access context parameters -->
            </div>
        </div>
 <%--
<div id="indexRightColumn">
    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">dairy</span>
        </a>
    </div>
    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">meats</span>
        </a>
    </div>
    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">bakery</span>
        </a>
    </div>
    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">fruit & veg</span>
           </a>
  </div>
</div>

 --%>


        <div id="indexRightColumn">
            <c:forEach var="Departments" items="${Departments.rows}">
                    <div class="departmentBox">
                        <a href="departments?${Departments.DepartmentID}">

                            <span class="departmentLabelText">${Departments.DepartmentName}</span>
                            
                            <img src="${initParam.departmentImagePath}${Departments.DepartmentName}.jpg"
                                 alt="${Departments.DepartmentName}">
                            
                        </a>
                    </div>
            </c:forEach>
            </div>
