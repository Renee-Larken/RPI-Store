<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : departments
    Created on : Nov 26, 2016, 12:50:34 PM
    Author     : sowrabbilakshminarayanan
--%>
<sql:query var="Departments" dataSource="jdbc/rpischoolstore">
    SELECT * FROM Departments
</sql:query>

<sql:query var="selectedDepartment" dataSource="jdbc/rpischoolstore">
    SELECT DepartmentName FROM Departments WHERE DepartmentID = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>

<sql:query var="departmentProducts" dataSource="jdbc/rpischoolstore">
    SELECT * FROM Products WHERE Departments_DepartmentID = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>

    <div id="departmentLeftColumn">
      <c:forEach var="Departments" items="${Departments.rows}">

        <c:choose>
            <c:when test="${Departments.DepartmentID == pageContext.request.queryString}">
                <div class="departmentButton" id="selectedDepartment">
                    <span class=".departmentText">
                        ${Departments.DepartmentName}
                    </span>
                </div>
            </c:when>
            <c:otherwise>
                <a href="departments?${Departments.DepartmentID}" class="departmentButton">
                    <div class=".departmentText">
                        ${Departments.DepartmentName}
                    </div>
                </a>
            </c:otherwise>
        </c:choose>

    </c:forEach>
 </div>

<div id="departmentRightColumn">
    <p id="departmentTitle">${selectedDepartment.rows[0].DepartmentName}</p>
    <table id="productTable">
        <c:forEach var="Products" items="${departmentProducts.rows}" varStatus="iter">
            <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
                <td>
                    <img src="${initParam.productImagePath}${Products.ProductName}.png"
                        alt="${Products.ProductName}">
                </td>
                <td>
                    ${Products.ProductName}
                    <br>
                    <span class="smallText">${Products.ProductDescription}</span>
                </td>
                <td>
                    $ ${Products.ProductPrice} / unit
               </td>
                <td>
                    <form action="addToCart" method="post">
                        <input type="hidden"
                               name="ProductID"
                               value="${Products.ProductID}">
                        <input type="submit"
                            value="add to cart">
                    </form>
                </td>
            </tr>

        </c:forEach>
    </table>
</div>
