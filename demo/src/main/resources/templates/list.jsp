<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>List</title>
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.rawgit.com/openlayers/openlayers.github.io/master/en/v5.3.0/css/ol.css" type="text/css">
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
      <link rel="stylesheet" href="/css/paginate.css"/>
      <link rel="stylesheet" href="/css/ligne.css"/>
</head>

<body>

<h1>>List</h1>

<div class="input-group">
    <label for="searchBox">Filtre</label>
    <input type="search" id="searchBox" placeholder="Filtre...">
</div>
<table class="map table hover table-dark">
    <tr data-th-each="borne : ${list}">

        <td><span><a th:href="@{/show(id=${borne.id})}">Show</span></td>
        <td data-th-text="${borne.operateur}"></td>
        <td data-th-text="${borne.amenageur}">...</td>
        <td data-th-text="${borne.operateur}">...</td>
        <td data-th-text="${borne.codeinsee}">...</td>
        <td data-th-text="${borne.typeprise}">...</td>
        <td data-th-text="${borne.accesrecharge}">...</td>
    </tr>
</table>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/js/paginate.min.js"></script>
<script th:inline="javascript">
/*<![CDATA[*/

    $( document ).ready(function() {
    let options = {
        numberPerPage:2,
        goBar:true,
        pageCounter:true,
    };

    let filterOptions = {
        el:'#searchBox'
    };
    paginate.init('.map',options,filterOptions);
     });
/*]]>*/
</script>
</body>
</html>