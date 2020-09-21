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
     <link rel="stylesheet" href="/css/style.css"/>
</head>

<body>

<h1>Liste des bornes</h1>

<div class="input-group">
    <label for="searchBox" class="filter">Rechercher</label>
    <input type="search" id="searchBox" placeholder="...">
</div>
<table class="map table hover table-dark tablePosition">
<thead>
    <tr>
      <th scope="col">Action</th>
      <th scope="col">Operateur</th>
      <th scope="col">Aménageur</th>
      <th scope="col">Code Insee</th>
      <th scope="col">Type prise</th>
      <th scope="col">Acces recharge</th>
    </tr>
  </thead>
    <tr scope="row" data-th-each="borne : ${list}">
        <td><span><a th:href="@{/show(id=${borne.id})}">
                <svg width="1em" height="1.0625em" viewBox="0 0 16 17" class="bi bi-compass" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M8 16.016a7.5 7.5 0 0 0 1.962-14.74A1 1 0 0 0 9 0H7a1 1 0 0 0-.962 1.276A7.5 7.5 0 0 0 8 16.016zm6.5-7.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
                <path d="M6.94 7.44l4.95-2.83-2.83 4.95-4.949 2.83 2.828-4.95z"/>
                </svg>
            </span>
        </td>
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
        numberPerPage:30,
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