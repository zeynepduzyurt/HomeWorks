<!doctype html>
<html>
<head>

<meta charset="UTF-8">
<title>Soap Calculator</title>
</head>

<body>





<form action="/webservice/" method="post">
<h1 style="align-content: center" align="middle">Soap Hesap Makinesine Hoşgeldiniz.</h1>
<div align="middle">
<h2 >Sayıları Girdikten Sonra Gönder Tuşuna Basınız.</h2>


İlk Sayı(Bölünen,Taban) <input name="x" type="text" value="" /><br><br>
İkinci Sayı(Bölen,Üs)   <input name="y" type="text" value="" /><br><br>

<button type="submit" />Gönder</button> <br><br>


</div>

<?php
    if(isset($_POST['x']) && isset($_POST['y'])) {
        $x = $_POST['x'];
        $y = $_POST['y'];
        
        if(empty($y) || empty($x)) {
            
            echo '<p align="middle" style="color: red" ">Lütfen boş bırakmayın </p>';
        } else {
            echo '<p align="middle" style="color: greenyellow; font-size: 25px;" ">1 .Sayı ' . $x . ' 2.Sayı: ' . $y . ' </p>';
        }
    } else {
        echo '<p align="middle" style="color: red" ">Lütfen formu kullanın </p>';
    }
    
    echo "<br><br><hr><br><hr>";
    
    
    
    
    
    $client = new SoapClient('http://209.97.129.103:8080/CalculatorWebService/services/CalculatorWebService?wsdl');
    $params->x = $x;
    $params->y = $y;
    
    $params1->dividend = $x;
    $params1->divisor = $y;
    
    $params2->base = $x;
    $params2->number = $y;
    
    $objectresult = $client->add($params);
    $simpleresult = $objectresult->addReturn;
    
    
    $objectresult2 = $client->sub($params);
    $simpleresult2 = $objectresult2->subReturn;
    
    $objectresult3 = $client->multiply($params);
    $simpleresult3 = $objectresult3->multiplyReturn;
    
    $objectresult4 = $client->div($params1);
    $simpleresult4 = $objectresult4->divReturn;
    
    $objectresult5 = $client->mod($params1);
    $simpleresult5 = $objectresult5->modReturn;
    
    $objectresult6 = $client->log($params2);
    $simpleresult6 = $objectresult6->logReturn;
    
    echo "<p align='middle' style='color: gold; font-weight: bold; font-size: 30px;' >Toplamları = $simpleresult";
    echo "<p align='middle' style='color: gold; font-weight: bold; font-size: 30px;' >Farkları = $simpleresult2";
    echo "<p align='middle' style='color: gold; font-weight: bold; font-size: 30px;' >Çarpımları = $simpleresult3";
    echo "<p align='middle' style='color: gold; font-weight: bold; font-size: 30px;' >Bölümleri = $simpleresult4";
    echo "<p align='middle' style='color: gold; font-weight: bold; font-size: 30px;' >Bölümlerinden Kalan(Mod) = $simpleresult5";
    echo "<p align='middle' style='color: gold; font-weight: bold; font-size: 30px;' >Logaritma = $simpleresult6";
    
    
    
    
    
    ?>
<br><br>
<hr><p align="right" style='font-weight: bolder; font-size: 35px' >Zeynep Düzyurt</p>
<hr>
</form>
</body>
</html>
<style>

</style>
