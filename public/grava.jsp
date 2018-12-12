<%@ page language="java" import="java.sql.*"  %>

<%

String vnome = request.getParameter("codEmpresa");
String vrg= request.getParameter("nomeCurso");
String vtel= request.getParameter("carga");
String vemail= request.getParameter("telefone");
String vobs= request.getParameter("descricao");

String driver = "net.sourceforge.jtds.jdbc.Driver" ;
String url = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd271692016" ;
String usuario = "bd271692016";
String senha = "123456";

Class.forName( driver ) ;

Connection conexao = DriverManager.getConnection( "jdbc:jtds:sqlserver://10.4.0.90:1433/bd271692016", "bd271692016", "123456" ) ;

String sql = "insert into CURSOS (COD_EMPRESA,NOME_CURSO,CARGA_HORARIA,TELEFONE,DESCRICAO) values ('" + vnome + "','" + vrg + "','" + vtel + "','" + vemail + "','" + vobs + "')" ;

Statement stm = conexao.createStatement() ;

stm.executeUpdate( sql ) ;

out.print("<center><h3>Cadastro efetuado! </h3><br><br>") ;

out.print("<a href='logado.jsp'>") ;
out.print("-> Voltar para a Página Inicial <-") ;
out.print("</a></center>") ;

%>



