
<%
//Verifica se está logado
if(session.getValue("loginUsuario") != null || session.getValue("senhaUsuario") != null){
out.println("Voce esta logado com sucesso no sistema, por isso consegue ver esta pagina. Seu login e: " + session.getValue("loginUsuario") + " e sua senha: " + session.getValue("senhaUsuario") + ". Clique <a href='logoff.jsp'>aqui</a> para sair do sistema");
%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
  </head>

  <body>


    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#"><img src="images/logoPainel.png" width="90"></a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="logoff.jsp">Deslogar</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link " href="logado.jsp">
                  <span data-feather="home"></span>
                  Painel
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="#">
                  <span data-feather="file"></span>
                  Meus cadastros<span class="sr-only">(current)</span>
                </a>
              </li>
              <%-- <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="shopping-cart"></span>
                  Products
                </a>
              </li> --%>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="users"></span>
                  Perfil
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="bar-chart-2"></span>
                  Reports
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="layers"></span>
                  Historico
                </a>
              </li>
            </ul>
<%--
            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Saved reports</span>
              <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Current month
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Last quarter
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Social engagement
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Year-end sale
                </a>
              </li>
            </ul> --%>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2"><% out.println("Cadastrados "); session.getValue("loginUsuario"); %></h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <%-- <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Share</button>
                <button class="btn btn-sm btn-outline-secondary">Export</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
              </button> --%>
            </div>
          </div>
<%@ page language="java" import="java.sql.*"  %>


<%
String driver = "net.sourceforge.jtds.jdbc.Driver" ;
String url = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd271692016" ;
String usuario = "bd271692016";
String senha = "123456";


Class.forName( driver ) ;

Connection conexao = DriverManager.getConnection( url, usuario, senha ) ;

String sql = "select * from CURSOS" ;

Statement stm = conexao.createStatement() ;

ResultSet dados = stm.executeQuery(sql);

out.print( "<table class='table'>  <thead class='thead-dark'><tr><th scope='col'>#</th><th scope='col'>Codigo da empresa</th><th scope='col'>Curso</th><th scope='col'>Carga horaria</th> 	  <th scope='col'>Telefone</th>	  <th scope='col'>Descricao</th> </tr></thead><tbody>"  ) ;

while ( dados.next()  ) {

out.print( "<tr>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("COD_CURSO")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("COD_EMPRESA")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("NOME_CURSO")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("CARGA_HORARIA")  ) ;
 out.print( "</td>"  ) ;
 out.print( "<td>"  ) ;
   out.print( dados.getString("TELEFONE")  ) ;
 out.print( "</td>"  ) ;
  out.print( "<td>"  ) ;
   out.print( dados.getString("DESCRICAO")  ) ;
 out.print( "</td>"  ) ;
out.print( "</tr>"  ) ;
}
out.print( "</tbody></table>");

%>

      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script>
  </body>
</html>


<% } else {
out.println("Você nao esta logado no sistema. Clique <a href='index.html'>aqui</a> para logar-se");
}
%>
