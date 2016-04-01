<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<html>
<head>
    <title>Biocode Field Information Management System</title>

    <link rel="stylesheet" type="text/css" href="/dipnet/css/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="/dipnet/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/dipnet/css/alerts.css"/>
    <link rel="stylesheet" type="text/css" href="/dipnet/css/biscicol.css"/>

    <script type="text/javascript" src="/dipnet/js/jquery.js"></script>
    <script type="text/javascript" src="/dipnet/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/dipnet/js/jquery.form.js"></script>
    <script type="text/javascript" src="/dipnet/js/BrowserDetect.js"></script>
    <script type="text/javascript" src="/dipnet/js/lodash.js"></script>
    <script type="text/javascript" src="/dipnet/js/xlsx.js"></script>
    <script type="text/javascript" src="/dipnet/js/papaparse.min.js"></script>
    <script type="text/javascript" src="/dipnet/js/pwstrength.js"></script>

    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.9/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.9/mapbox.css' rel='stylesheet' />

    <script src='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-markercluster/v0.4.0/leaflet.markercluster.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-markercluster/v0.4.0/MarkerCluster.css' rel='stylesheet' />
    <link href='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-markercluster/v0.4.0/MarkerCluster.Default.css' rel='stylesheet' />

    <script type="text/javascript" src="/dipnet/js/biocode-fims-xlsx-reader.js"></script>
    <script type-"text/javascript" src="/dipnet/js/biocode-fims-mapping.js"></script>
    <script type="text/javascript" src="/dipnet/js/dipnet-fims.js"></script>
    <script type="text/javascript" src="/dipnet/js/bootstrap.min.js"></script>

    <link rel="short icon" href="/dipnet/docs/fimsicon.png" />

</head>


<body>
<%@ include file="header-menus.jsp" %>
