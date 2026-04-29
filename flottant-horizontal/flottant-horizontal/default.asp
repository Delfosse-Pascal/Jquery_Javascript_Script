<!--#include file="../scr_header.asp"-->
<link href="css/demo.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script	src="js/jquery.smint.js" type="text/javascript" ></script>
<script type="text/javascript">
$(document).ready( function() {
    $('.subMenu').smint({
    	'scrollSpeed' : 1000
    });
});
</script>
</head>

<body>
<a href="http://www.outils-web.com"><img src="../../img/ow.png" border="0" width="400" height="100" alt=""></a>
<br /><p class="tt" ><%=descro%></p><br /><br />
<!-- Emplacement du menu -->	

<div class="wrap ">
	<div class="section sTop">
		<div class="inner">
			<h1 class="title">Pourquoi ne pas l'utiliser pour votre premier site ?</h1>
			<h2 class="subtitle">Liens internes dans la Partie 2</h2>
		</div>
	</div>

	<div class="subMenu" >
	 	<div class="inner">
	 		<a href="#sTop" class="subNavBtn">Home</a>
	 		<a href="#s1" class="subNavBtn">Partie 1</a> 
			<a href="#s2" class="subNavBtn">Partie 2</a>
			<a href="#s3" class="subNavBtn">Partie 3</a>
			<a href="#s4" class="subNavBtn">Partie 4</a>
			<a href="#s5" class="subNavBtn">Partie 5</a>
			<a href="https://twitter.com/rabmyself" class="subNavBtn extLink end">Lien externe</a>
		</div>
	</div>

	<div class="section s1">
		<div class="inner ">
			<h1>Partie 1</h1>
			<!--#include file="../scr_footer.asp"-->
		</div>
	</div>

	<div class="section s2">
		<div class="inner">
			<h1>Partie 2</h1>
			<p><a href="#s4" class="intLink">Lien interne pour aller à la Partie 4</a></p>
			<p><a href="#sTop" class="intLink">Lien interne pour revenir en haut</a></p>
		</div>
	</div>

	<div class="section s3">
		<div class="inner">
			<h1>Partie 3</h1>
			<!--#include file="../scr_footer.asp"-->
		</div>
	</div>

	<div class="section s4">
		<div class="inner">
			<h1>Section 4</h1>
		</div>
	</div>

	<div class="section s5">
		<div class="inner">
			<h1>Partie 5</h1>
			<!--#include file="../scr_footer.asp"-->
			<br><br><br>
			<p><a href="#sTop" class="intLink">Revenir en haut</a></p>
		</div>
	</div>

	
</div>

<!-- source http://www.outyear.co.uk/smint/ -->
</body>
</html>