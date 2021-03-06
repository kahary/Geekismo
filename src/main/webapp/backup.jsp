<%@page contentType="text/html" pageEncoding="UTF-8" 
        import="br.com.geekismo.persistencia.jdbc.ArtigoDAO"
        import="br.com.geekismo.persistencia.entidade.Artigo"
        import="br.com.geekismo.persistencia.jdbc.ComentarioDAO" 
        import="java.util.List"
        import="br.com.geekismo.persistencia.entidade.Comentarios"%>
<!DOCTYPE html>
<html>
<head>
    <title>Geekismo - Porque Geek é o novo sexy</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jquery.validate.js"></script>
    <script src="js/ValidadorForm.js"></script>
        <jsp:useBean id="usuario" class="br.com.geekismo.persistencia.entidade.Usuarios" scope="session">
        </jsp:useBean>
        <jsp:useBean id="artigo" class="br.com.geekismo.persistencia.entidade.Artigo" scope="session">
        </jsp:useBean>
        <%
            if( usuario.getNome() != null){
                    usuario.setEstado(true);}
        %>
</head>
<body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<div class="container-fluid">
    <nav id="navegacao" class="row">
        <h1>menu</h1>
        <ul>
            <li>
                <form method="get" action="index.jsp" >
                    <button class="navegacao nave" onclick="submit" name="pa" value="1">HOME</button>
                </form>
            </li>
            <li>
                <form method="get" action="jsp/usuarios/Formulario_de_registro.jsp" >
                    <button class="navegacao nave" onclick="submit">SOBRE</button>
                </form>
            </li>
            <% if( usuario.isEstado() == true){%>
            <li>    
                <form method="get" action="SairUsuario" >
                    <button class="navegacao nave" onclick="submit"><span class="glyphicon glyphicon-sunglasses"></span> Sair</button>
                </form>
            </li>    
            <li>     
                <form method="get">
                    <button class="navegacao nave"><jsp:getProperty name="usuario" property="nome"/></button>
                </form>
            </li>
           <%}else{%>
           <li>
               <button  class="navegacao nave" type="button" data-toggle="modal" data-target="#myModal">LOGAR</button>
           </li>
           <li>
               <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Coloque seus dados para acessar</h4>
                            </div>
                            <div class="modal-body">
                                <form role="form" action="LoginUsuario">
                                    <div class="form-group">
                                        <label for="login">Login:</label>
                                        <input name="login" type="text" class="form-control" id="login"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="senha">senha:</label>
                                        <input name="senha" type="text" class="form-control" id="usr" />
                                    </div>
                                    <button type="submit" class="btn btn-default"><span style="color:Black;">Entrar</span></button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <span>Não tem conta? <a href="Formulario_de_registro.jsp"> Cadastre-se</a>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>  
            </li>    
           <%}%>
        </ul>
    </nav>
</div>
<div class="container">
    <header id="cabecalho" class="row">
        <img id="logo" class="img-responsive"  src="_imagens/logo.png"/>

    </header>
    <div id="publicacao" class="row">
        
        <section role="main" id="publicacao" class="col-md-12">
            <div id="Formatacao">
                <div style="text-align: center; padding-top: 30px; border-bottom: 1px solid #333;">
                    <h1 style="margin-bottom: 0px; padding-bottom: 0px;">Cadastro de usuário</h1><br/>
                    <h5 style="margin-top: 0px; padding-top: 0px;padding-bottom: 10px;">Preencha os campos abaixo como solicitado</h5>
                </div>
                <div style="padding-left: 30px; padding-top: 40px; padding-bottom: 40px;">
                    <form id="form-signup" action="#" method="post" accept-charset="utf-8">
                        <fieldset>
                            <label>
                                Nome:
                                <input class="form-control" type="text" name="nome" />
                            </label><br/>
                            <label>
                                Login:
                                <input class="form-control" type="text" name="login" />
                            </label><br/>
                            <label>
                                Senha:
                                <input id="senha" class="form-control" type="text" name="senha" />
                            </label><br/>
                            <label>
                                Redigite a senha:
                                <input class="form-control" id="comfirmarsenha" name="comfirmarsenha" />
                            </label><br/>
                            <input class="btn btn-default" type="submit" value="Cadastrar" /><br/>
                        </fieldset>
                    </form>
                </div>    
            </div> 
            
        </section>
    </div>
    <div id="footer" class="row">
        Todas as imagens de filmes, séries e etc são marcas registradas dos seus respectivos proprietários
    </div>
   </div>
        
  
</body>
</html>	
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
     <h4 class="modal-title">Preencha os campos abaixo como solicitado</h4>
</div>
