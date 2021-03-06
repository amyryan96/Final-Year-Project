<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Using JavaScript/HTML5 Scheduler in Spring Boot (Java)</title>
    
    <link href="icons/main.css" rel="stylesheet" type="text/css">
    <link href="icons/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="header">
    <h1><a href='https://code.daypilot.org/70997/using-javascript-html5-scheduler-in-spring-boot-java'>Using HTML5/JavaScript Scheduler in Spring Boot (Java)</a></h1>
    <div><a href="https://javascript.daypilot.org/">DayPilot for JavaScript</a> - AJAX Calendar/Scheduling Widgets forJavaScript/HTML5/jQuery/AngularJS</div>
</div>

<div class="main">
    <div id="dp"></div>
</div>

<!-- DayPilot library -->
<script src="js/daypilot/daypilot-all.min.js"></script>
<!-- jQuery -->
<script src="js/jquery/jquery-2.2.0.min.js"></script>

<script>
    var dp = new DayPilot.Scheduler("dp");
    dp.eventHeight = 40;
    dp.startDate = DayPilot.Date.today().firstDayOfMonth();
    dp.days = DayPilot.Date.today().daysInMonth();
    dp.scale = "Day";
    dp.timeHeaders = [
        {groupBy: "Month"},
        {groupBy: "Day", format: "d"}
    ];
    dp.onTimeRangeSelected = function (args) {
        DayPilot.Modal.prompt("Create a new event:", "Event").then(function (modal) {
            var dp = args.control;
            dp.clearSelection();
            if (!modal.result) {
                return;
            }
            var params = {
                start: args.start.toString(),
                end: args.end.toString(),
                text: modal.result,
                resource: args.resource
            };
            $.ajax({
                type: 'POST',
                url: '/api/events/create',
                data: JSON.stringify(params),
                success: function (data) {
                    dp.events.add(new DayPilot.Event(data));
                    dp.message("Event created");
                },
                contentType: "application/json",
                dataType: 'json'
            });
        });
    }
    dp.onEventMove = function (args) {
        var params = {
            id: args.e.id(),
            start: args.newStart.toString(),
            end: args.newEnd.toString(),
            resource: args.newResource
        };
        $.ajax({
            type: 'POST',
            url: '/api/events/move',
            data: JSON.stringify(params),
            success: function (data) {
                dp.message("Event moved");
            },
            contentType: "application/json",
            dataType: 'json'
        });
    };
    dp.onEventResize = function (args) {
        var params = {
            id: args.e.id(),
            start: args.newStart.toString(),
            end: args.newEnd.toString(),
            resource: args.e.resource()
        };
        $.ajax({
            type: 'POST',
            url: '/api/events/move',
            data: JSON.stringify(params),
            success: function (data) {
                dp.message("Event resized");
            },
            contentType: "application/json",
            dataType: 'json'
        });
    };
    dp.onBeforeEventRender = function(args) {
        args.data.barColor = args.data.color;
        args.data.areas = [
            { top: 6, right: 2, icon: "icon-triangle-down", visibility: "Hover", action: "ContextMenu", style: "font-size: 12px; background-color: #f9f9f9; border: 1px solid #ccc; padding: 2px 2px 0px 2px; cursor:pointer;"}
        ];
    };
    dp.contextMenu = new DayPilot.Menu({
        items: [
            {
                text: "Blue",
                icon: "icon icon-blue",
                color: "#1155cc",
                onClick: function(args) { updateColor(args.source, args.item.color); }
            },
            {
                text: "Green",
                icon: "icon icon-green",
                color: "#6aa84f",
                onClick: function(args) { updateColor(args.source, args.item.color); }
            },
            {
                text: "Yellow",
                icon: "icon icon-yellow",
                color: "#f1c232",
                onClick: function(args) { updateColor(args.source, args.item.color); }
            },
            {
                text: "Red",
                icon: "icon icon-red",
                color: "#cc0000",
                onClick: function(args) { updateColor(args.source, args.item.color); }
            },

        ]
    });
    dp.init();

    dp.rows.load("/api/resources");
    dp.events.load("/api/events");


    function updateColor(e, color) {
        var params = {
            id: e.id(),
            color: color
        };
        $.ajax({
            type: 'POST',
            url: '/api/events/setColor',
            data: JSON.stringify(params),
            success: function (data) {
                e.data.color = color;
                dp.events.update(e);
                dp.message("Color updated");
            },
            contentType: "application/json",
            dataType: 'json'
        });
    }
</script>

</body>
</html>