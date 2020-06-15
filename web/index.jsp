<%-- 
    Document   : index
    Created on : 25/05/2020, 11:44:09 PM
    Author     : Berenice
--%>

<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicia el juego</title>
    </head>
    <body style="background: pink;">
    <center>
        <h1 style="font-family: cursive; font-size: 38px;">Inicio del juego</h1> 
        
        <h2 style="font-family: cursive; font-size: 28px;">AHORCADO</h2>
       
        <form method="post" action="acceso.jsp" >
            <h6 style="font-family: cursive; font-size: 18px;">Participante: </h6>
            <input type="text" name="nombre" style="padding:10px;border-radius:15px" required/>
            <h6 style="font-family: cursive; font-size: 18px;">Num. Intentos </h6>
            <input type="number" name="nintento" style="padding:10px;border-radius:15px" min="1" required/>
            <br/>
            <br/>
            <h2 style="font-family: cursive; font-size: 28px;">¿En qué nivel deseas jugar? </h2>
        
        <select name="niveles[]" style="font-family: cursive; font-size: 15px;"> 
            <%    LinkedList<String> list = new LinkedList<String>();
                  list.add(0, "Facil");
                  list.add(1, "Intermedio");
                  list.add(2, "Dificil");
                  for (int i = 0; i < list.size(); i++) { %>
                  <option  value="<%=list.get(i) %>"><%=list.get(i) %></option>
                  <% }  %>  

            </select>
            
            <input type="submit" value="Continuar" style="padding:10px;border-radius:15px" />
        </form>
    </center>
   
</body>
</html>
