<%-- 
    Document   : Editor
    Created on : 26/10/2015, 16:46:21
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>Quill Pretty Editor Demo</title>
    <link rel="stylesheet" type="text/css" href="quill.snow.css">
    <link rel="stylesheet" type="text/css" href="advanced.css">
     <link rel="stylesheet" type="text/javascript" href="../js/jquery.js">
    <meta charset="utf-8">
  </head>
  <body>
      <script>
          function update(){
              document.getElementById("conteudoform").value = document.getElementById("conteudo").innerHTML ;
          }
      </script>
    <form>
            <h1>Digite o titulo</h1>  
            <div id="herp"></div>
            <input type="text" name="titulo" value=""/>
            <input id="conteudoform" style="display:none;" type="text" name="texto" value="22" />
            <input type="submit"  onmouseover="update()" value="Adicionar"/ >        
    </form>
    <div id="content-container">
      <div  style="display:none; " class="basic-wrapper">
        <div class="toolbar-container">
          <select title="Font" class="ql-font">
            <option value="sans-serif" selected>Sans Serif</option>
            <option value="Georgia, serif">Serif</option>
            <option value="Monaco, 'Courier New', monospace">Monospace</option>
          </select>
          <select title="Size" class="ql-size">
            <option value="10px">Small</option>
            <option value="13px" selected>Normal</option>
            <option value="18px">Large</option>
            <option value="32px">Huge</option>
          </select>
          <select title="Text Alignment" class="ql-align">
            <option value="left" selected>Left</option>
            <option value="center">Center</option>
            <option value="right">Right</option>
            <option value="justify">Justify</option>
          </select>
          <button title="Bold" class="ql-bold">Bold</button>
          <button title="Italic" class="ql-italic">Italic</button>
          <button title="Underline" class="ql-underline">Under</button>
          <button title="List" class="ql-list">List</button>
        </div>
        <div class="editor-container"></div>
      </div>
      <div class="advanced-wrapper">
        <div class="toolbar-container"><span class="ql-format-group">
            <select title="Font" class="ql-font">
              <option value="sans-serif" selected>Sans Serif</option>
              <option value="Georgia, serif">Serif</option>
              <option value="Monaco, 'Courier New', monospace">Monospace</option>
            </select>
            <select title="Size" class="ql-size">
              <option value="10px">Small</option>
              <option value="13px" selected>Normal</option>
              <option value="18px">Large</option>
              <option value="32px">Huge</option>
            </select></span><span class="ql-format-group"><span title="Bold" class="ql-format-button ql-bold"></span><span class="ql-format-separator"></span><span title="Italic" class="ql-format-button ql-italic"></span><span class="ql-format-separator"></span><span title="Underline" class="ql-format-button ql-underline"></span></span><span class="ql-format-group">
            <select title="Text Color" class="ql-color">
              <option value="rgb(0, 0, 0)" selected></option>
              <option value="rgb(230, 0, 0)"></option>
              <option value="rgb(255, 153, 0)"></option>
              <option value="rgb(255, 255, 0)"></option>
              <option value="rgb(0, 138, 0)"></option>
              <option value="rgb(0, 102, 204)"></option>
              <option value="rgb(153, 51, 255)"></option>
              <option value="rgb(255, 255, 255)"></option>
              <option value="rgb(250, 204, 204)"></option>
              <option value="rgb(255, 235, 204)"></option>
              <option value="rgb(255, 255, 204)"></option>
              <option value="rgb(204, 232, 204)"></option>
              <option value="rgb(204, 224, 245)"></option>
              <option value="rgb(235, 214, 255)"></option>
              <option value="rgb(187, 187, 187)"></option>
              <option value="rgb(240, 102, 102)"></option>
              <option value="rgb(255, 194, 102)"></option>
              <option value="rgb(255, 255, 102)"></option>
              <option value="rgb(102, 185, 102)"></option>
              <option value="rgb(102, 163, 224)"></option>
              <option value="rgb(194, 133, 255)"></option>
              <option value="rgb(136, 136, 136)"></option>
              <option value="rgb(161, 0, 0)"></option>
              <option value="rgb(178, 107, 0)"></option>
              <option value="rgb(178, 178, 0)"></option>
              <option value="rgb(0, 97, 0)"></option>
              <option value="rgb(0, 71, 178)"></option>
              <option value="rgb(107, 36, 178)"></option>
              <option value="rgb(68, 68, 68)"></option>
              <option value="rgb(92, 0, 0)"></option>
              <option value="rgb(102, 61, 0)"></option>
              <option value="rgb(102, 102, 0)"></option>
              <option value="rgb(0, 55, 0)"></option>
              <option value="rgb(0, 41, 102)"></option>
              <option value="rgb(61, 20, 102)"></option>
            </select><span class="ql-format-separator"></span>
            <select title="Background Color" class="ql-background">
              <option value="rgb(0, 0, 0)"></option>
              <option value="rgb(230, 0, 0)"></option>
              <option value="rgb(255, 153, 0)"></option>
              <option value="rgb(255, 255, 0)"></option>
              <option value="rgb(0, 138, 0)"></option>
              <option value="rgb(0, 102, 204)"></option>
              <option value="rgb(153, 51, 255)"></option>
              <option value="rgb(255, 255, 255)" selected></option>
              <option value="rgb(250, 204, 204)"></option>
              <option value="rgb(255, 235, 204)"></option>
              <option value="rgb(255, 255, 204)"></option>
              <option value="rgb(204, 232, 204)"></option>
              <option value="rgb(204, 224, 245)"></option>
              <option value="rgb(235, 214, 255)"></option>
              <option value="rgb(187, 187, 187)"></option>
              <option value="rgb(240, 102, 102)"></option>
              <option value="rgb(255, 194, 102)"></option>
              <option value="rgb(255, 255, 102)"></option>
              <option value="rgb(102, 185, 102)"></option>
              <option value="rgb(102, 163, 224)"></option>
              <option value="rgb(194, 133, 255)"></option>
              <option value="rgb(136, 136, 136)"></option>
              <option value="rgb(161, 0, 0)"></option>
              <option value="rgb(178, 107, 0)"></option>
              <option value="rgb(178, 178, 0)"></option>
              <option value="rgb(0, 97, 0)"></option>
              <option value="rgb(0, 71, 178)"></option>
              <option value="rgb(107, 36, 178)"></option>
              <option value="rgb(68, 68, 68)"></option>
              <option value="rgb(92, 0, 0)"></option>
              <option value="rgb(102, 61, 0)"></option>
              <option value="rgb(102, 102, 0)"></option>
              <option value="rgb(0, 55, 0)"></option>
              <option value="rgb(0, 41, 102)"></option>
              <option value="rgb(61, 20, 102)"></option>
            </select><span class="ql-format-separator"></span>
            <select title="Text Alignment" class="ql-align">
              <option value="left" selected></option>
              <option value="center"></option>
              <option value="right"></option>
              <option value="justify"></option>
            </select></span><span class="ql-format-group"><span title="Link" class="ql-format-button ql-link"></span><span class="ql-format-separator"></span><span title="Image" class="ql-format-button ql-image"></span><span class="ql-format-separator"></span><span title="List" class="ql-format-button ql-list"></span></span></div>
          <div id="conteudo" class="editor-container"  ></div>
      </div>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js"></script>
    <script type="text/javascript" src="quill.js"></script>
    <script type="text/javascript" src="advanced.js"></script>
  </body>
</html>
