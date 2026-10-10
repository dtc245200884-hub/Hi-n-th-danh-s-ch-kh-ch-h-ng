```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<Map<String, String>> customers = new ArrayList<>();

    Map<String, String> c1 = new HashMap<>();
    c1.put("name", "Nguyen Van An");
    c1.put("birthday", "1990-01-15");
    c1.put("address", "Ha Noi");
    c1.put("image", "https://i.pravatar.cc/100?img=12");
    customers.add(c1);

    Map<String, String> c2 = new HashMap<>();
    c2.put("name", "Tran Thi Binh");
    c2.put("birthday", "1995-05-20");
    c2.put("address", "Hai Phong");
    c2.put("image", "https://i.pravatar.cc/100?img=47");
    customers.add(c2);

    Map<String, String> c3 = new HashMap<>();
    c3.put("name", "Le Van Cuong");
    c3.put("birthday", "1992-09-10");
    c3.put("address", "Da Nang");
    c3.put("image", "https://i.pravatar.cc/100?img=13");
    customers.add(c3);

    request.setAttribute("customers", customers);
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sach khach hang</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Danh sach khach hang</h1>

        <table>
            <thead>
                <tr>
                    <th>Anh</th>
                    <th>Ho va ten</th>
                    <th>Ngay sinh</th>
                    <th>Dia chi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>
                            <img src="<c:out value='${customer.image}'/>"
                                 alt="Anh khach hang">
                        </td>
                        <td><c:out value="${customer.name}"/></td>
                        <td><c:out value="${customer.birthday}"/></td>
                        <td><c:out value="${customer.address}"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
```