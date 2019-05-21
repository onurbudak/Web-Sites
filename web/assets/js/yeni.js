
var MONTHS = new Array("OCAK", "ŞUBAT", "MART", "NİSAN", "MAYIS", "HAZİRAN", "TEMMUZ", "AĞUSTOS", "EYLÜL", "EKİM", "KASIM", "ARALIK");
var DAYS = new Array("PAZAR", "PAZARTESİ", "SALI", "ÇARŞAMBA", "PERŞEMBE", "CUMA", "CUMARTESİ");

function timer() {
    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth();
    var day = now.getDate();
    var weekday = now.getDay();

    if (now.getHours() < 10)
        hours = "0" + now.getHours();
    else
        hours = now.getHours();
    if (now.getMinutes() < 10)
        minutes = "0" + now.getMinutes();
    else
        minutes = now.getMinutes();

    if (now.getSeconds() < 10)
        seconds = "0" + now.getSeconds();
    else
        seconds = now.getSeconds();

    var tarih = day + " " + MONTHS[month] + " " + year;
    var saat = hours + ":" + minutes + ":" + seconds;

    document.getElementById("tarih").innerHTML = tarih;
    document.getElementById("gun").innerHTML = DAYS[weekday];
    document.getElementById("saat").innerHTML = saat;
}

setInterval("timer()", 1000);

/*
//var phpzaman = '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' //SSI method of getting server date 

var phpzaman = 'March 28, 2019 22:43:05'; // ileri saat uygulamasından dolayı böyle yaptım, bakalım ne olucak

var aylar = new Array("Ocak","Şubat","Mart","Nisan","Mayıs","Haziran","Temmuz","Agustos","Eylül","Ekim","Kasım","Aralık");
var sunucutarihi = new Date(phpzaman);

function uzunluk(ne){										
	var cikti = (ne.toString().length == 1)? "0" + ne : ne;
	return cikti;
}

function tarihGoster(){
	sunucutarihi.setSeconds(sunucutarihi.getSeconds() + 1);
	var tarih = uzunluk(sunucutarihi.getDate()) +" "+ aylar[sunucutarihi.getMonth()] +" "+ sunucutarihi.getFullYear();
	var zaman = uzunluk(sunucutarihi.getHours()) +":"+ uzunluk(sunucutarihi.getMinutes()) +":"+ uzunluk(sunucutarihi.getSeconds());
	document.getElementById("sunucutarihi").innerHTML = tarih;
	document.getElementById("sunucuzamani").innerHTML = zaman;
}
*/


function kayanyazi(){
		
        var kayanyazi = document.getElementById('kayanyazi');
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
          if(this.readyState == 4 && this.status == 200){
            kayanyazi.innerHTML = this.responseText;
          }else{
            kayanyazi.innerHTML = "İstek Başarısız.";
          }
        };
		
        xmlhttp.open("GET", "kayanyazi.php", true);
        xmlhttp.send();
			
}

function dersler(){
		
		
        var ders = document.getElementById('dersler');
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
          if(this.readyState == 4 && this.status == 200){
            ders.innerHTML = this.responseText;

          }else{
            ders.innerHTML = "İstek Başarısız.";

          }
        };
		
        xmlhttp.open("GET", "dersler.php", true);
        xmlhttp.send();
			
}


function sınavlar(){
		
		
        var sınav = document.getElementById('sınavlar');
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
          if(this.readyState == 4 && this.status == 200){
            sınav.innerHTML = this.responseText;

          }else{
            sınav.innerHTML = "İstek Başarısız.";

          }
        };
		
        xmlhttp.open("GET", "sınavlar.php", true);
        xmlhttp.send();
			
}

function etkinlik(){
		
		
        var etkinlik = document.getElementById('etkinlik');
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
          if(this.readyState == 4 && this.status == 200){
            etkinlik.innerHTML = this.responseText;

          }else{
            etkinlik.innerHTML = "İstek Başarısız.";

          }
        };
		
        xmlhttp.open("GET", "etkinlikler.php", true);
        xmlhttp.send();
			
}

setInterval("kayanyazi()", 10000);
setInterval("dersler()", 10000);
setInterval("sınavlar()", 10000);
setInterval("etkinlik()", 10000);

function resim(){
		
		
        var resim = document.getElementById('resim');
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
          if(this.readyState == 4 && this.status == 200){
            resim.innerHTML = this.responseText;

          }else{
            resim.innerHTML = "İstek Başarısız.";

          }
        };
		
        xmlhttp.open("GET", "resim.php", true);
        xmlhttp.send();
			
}
	
//setInterval(function() {$("#marquee1").load('server.php?n1=6&n2=9');}, 100);


$(document).ready(function() {

      //  $("#marquee1").load("server.php");
		
});






