<html>

<head>
    <meta charset="utf-8">


    <title>
        Event tooltip with eventRender - Demos | FullCalendar
    </title>


    <link href="/assets/demo-to-codepen.css" rel="stylesheet">


    <style>
        html,
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
            font-size: 14px;
        }

        #calendar {
            max-width: 900px;
            margin: 40px auto;
        }
    </style>


    <link href="https://unpkg.com/@fullcalendar/core@4.4.0/main.min.css" rel="stylesheet">


    <link href="https://unpkg.com/@fullcalendar/daygrid@4.4.0/main.min.css" rel="stylesheet">


    <script src="/assets/demo-to-codepen.js"></script>

    <script src="https://unpkg.com/@fullcalendar/core@4.4.0/main.min.js"></script>




    <script src="https://unpkg.com/@fullcalendar/daygrid@4.4.0/main.min.js"></script>




    <style>
        /*
      i wish this required CSS was better documented :(
      https://github.com/FezVrasta/popper.js/issues/674
      derived from this CSS on this page: https://popper.js.org/tooltip-examples.html
      */

        .popper,
        .tooltip {
            position: absolute;
            z-index: 9999;
            background: #FFC107;
            color: black;
            width: 150px;
            border-radius: 3px;
            box-shadow: 0 0 2px rgba(0, 0, 0, 0.5);
            padding: 10px;
            text-align: center;
        }

        .style5 .tooltip {
            background: #1E252B;
            color: #FFFFFF;
            max-width: 200px;
            width: auto;
            font-size: .8rem;
            padding: .5em 1em;
        }

        .popper .popper__arrow,
        .tooltip .tooltip-arrow {
            width: 0;
            height: 0;
            border-style: solid;
            position: absolute;
            margin: 5px;
        }

        .tooltip .tooltip-arrow,
        .popper .popper__arrow {
            border-color: #FFC107;
        }

        .style5 .tooltip .tooltip-arrow {
            border-color: #1E252B;
        }

        .popper[x-placement^="top"],
        .tooltip[x-placement^="top"] {
            margin-bottom: 5px;
        }

        .popper[x-placement^="top"] .popper__arrow,
        .tooltip[x-placement^="top"] .tooltip-arrow {
            border-width: 5px 5px 0 5px;
            border-left-color: transparent;
            border-right-color: transparent;
            border-bottom-color: transparent;
            bottom: -5px;
            left: calc(50% - 5px);
            margin-top: 0;
            margin-bottom: 0;
        }

        .popper[x-placement^="bottom"],
        .tooltip[x-placement^="bottom"] {
            margin-top: 5px;
        }

        .tooltip[x-placement^="bottom"] .tooltip-arrow,
        .popper[x-placement^="bottom"] .popper__arrow {
            border-width: 0 5px 5px 5px;
            border-left-color: transparent;
            border-right-color: transparent;
            border-top-color: transparent;
            top: -5px;
            left: calc(50% - 5px);
            margin-top: 0;
            margin-bottom: 0;
        }

        .tooltip[x-placement^="right"],
        .popper[x-placement^="right"] {
            margin-left: 5px;
        }

        .popper[x-placement^="right"] .popper__arrow,
        .tooltip[x-placement^="right"] .tooltip-arrow {
            border-width: 5px 5px 5px 0;
            border-left-color: transparent;
            border-top-color: transparent;
            border-bottom-color: transparent;
            left: -5px;
            top: calc(50% - 5px);
            margin-left: 0;
            margin-right: 0;
        }

        .popper[x-placement^="left"],
        .tooltip[x-placement^="left"] {
            margin-right: 5px;
        }

        .popper[x-placement^="left"] .popper__arrow,
        .tooltip[x-placement^="left"] .tooltip-arrow {
            border-width: 5px 0 5px 5px;
            border-top-color: transparent;
            border-right-color: transparent;
            border-bottom-color: transparent;
            right: -5px;
            top: calc(50% - 5px);
            margin-left: 0;
            margin-right: 0;
        }
    </style>

    <script src="https://unpkg.com/popper.js/dist/umd/popper.min.js"></script>
    <script src="https://unpkg.com/tooltip.js/dist/umd/tooltip.min.js"></script>
    <script>

        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                plugins: ['dayGrid, interaction'],
                defaultView: 'dayGridMonth',
                defaultDate: '2020-04-12',

                eventRender: function (info) {
                    var tooltip = new Tooltip(info.el, {
                        title: info.event.extendedProps.description,
                        placement: 'top',
                        trigger: 'hover',
                        container: 'body'
                    });
                },
                dateClick : function(){
                	alert('click');
                },

                events: [
                    {
                        title: 'All Day Event',
                        description: 'description for All Day Event',
                        start: '2020-04-01'
                    },
                    {
                        title: 'Long Event',
                        description: 'description for Long Event',
                        start: '2020-04-07',
                        end: '2020-04-10'
                    },
                    {
                        groupId: '999',
                        title: 'Repeating Event',
                        description: 'description for Repeating Event',
                        start: '2020-04-09T16:00:00'
                    },
                    {
                        groupId: '999',
                        title: 'Repeating Event',
                        description: 'description for Repeating Event',
                        start: '2020-04-16T16:00:00'
                    },
                    {
                        title: 'Conference',
                        description: 'description for Conference',
                        start: '2020-04-11',
                        end: '2020-04-13'
                    },
                    {
                        title: 'Meeting',
                        description: 'description for Meeting',
                        start: '2020-04-12T10:30:00',
                        end: '2020-04-12T12:30:00'
                    },
                    {
                        title: 'Lunch',
                        description: 'description for Lunch',
                        start: '2020-04-12T12:00:00'
                    },
                    {
                        title: 'Meeting',
                        description: 'description for Meeting',
                        start: '2020-04-12T14:30:00'
                    },
                    {
                        title: 'Birthday Party',
                        description: 'description for Birthday Party',
                        start: '2020-04-13T07:00:00'
                    },
                    {
                        title: 'Click for Google',
                        description: 'description for Click for Google',
                        url: 'http://google.com/',
                        start: '2020-04-28'
                    }
                ]
            });

            calendar.render();
        });

    </script>

</head>

<body data-gr-c-s-loaded="true">
    <div class="demo-topbar">
        <button data-codepen="" class="codepen-button">Edit in CodePen</button>




        Event tooltip with eventRender and Tooltip.js

    </div>

    <div id="calendar" class="fc fc-ltr fc-unthemed" style="">
        <div class="fc-toolbar fc-header-toolbar">
            <div class="fc-left">
                <h2>April 2020</h2>
            </div>
            <div class="fc-center"></div>
            <div class="fc-right"><button type="button"
                    class="fc-today-button fc-button fc-button-primary">today</button>
                <div class="fc-button-group"><button type="button" class="fc-prev-button fc-button fc-button-primary"
                        aria-label="prev"><span class="fc-icon fc-icon-chevron-left"></span></button><button
                        type="button" class="fc-next-button fc-button fc-button-primary" aria-label="next"><span
                            class="fc-icon fc-icon-chevron-right"></span></button></div>
            </div>
        </div>
        <div class="fc-view-container">
            <div class="fc-view fc-dayGridMonth-view fc-dayGrid-view" style="">
                <table class="">
                    <thead class="fc-head">
                        <tr>
                            <td class="fc-head-container fc-widget-header">
                                <div class="fc-row fc-widget-header" style="">
                                    <table class="">
                                        <thead>
                                            <tr>
                                                <th class="fc-day-header fc-widget-header fc-sun"><span>Sun</span></th>
                                                <th class="fc-day-header fc-widget-header fc-mon"><span>Mon</span></th>
                                                <th class="fc-day-header fc-widget-header fc-tue"><span>Tue</span></th>
                                                <th class="fc-day-header fc-widget-header fc-wed"><span>Wed</span></th>
                                                <th class="fc-day-header fc-widget-header fc-thu"><span>Thu</span></th>
                                                <th class="fc-day-header fc-widget-header fc-fri"><span>Fri</span></th>
                                                <th class="fc-day-header fc-widget-header fc-sat"><span>Sat</span></th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </thead>
                    <tbody class="fc-body">
                        <tr>
                            <td class="fc-widget-content">
                                <div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 648px;">
                                    <div class="fc-day-grid">
                                        <div class="fc-row fc-week fc-widget-content" style="height: 108px;">
                                            <div class="fc-bg">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
                                                                data-date="2020-03-29"></td>
                                                            <td class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
                                                                data-date="2020-03-30"></td>
                                                            <td class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
                                                                data-date="2020-03-31"></td>
                                                            <td class="fc-day fc-widget-content fc-wed fc-past"
                                                                data-date="2020-04-01"></td>
                                                            <td class="fc-day fc-widget-content fc-thu fc-past"
                                                                data-date="2020-04-02"></td>
                                                            <td class="fc-day fc-widget-content fc-fri fc-past"
                                                                data-date="2020-04-03"></td>
                                                            <td class="fc-day fc-widget-content fc-sat fc-past"
                                                                data-date="2020-04-04"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="fc-content-skeleton">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <td class="fc-day-top fc-sun fc-other-month fc-past"
                                                                data-date="2020-03-29"><span
                                                                    class="fc-day-number">29</span></td>
                                                            <td class="fc-day-top fc-mon fc-other-month fc-past"
                                                                data-date="2020-03-30"><span
                                                                    class="fc-day-number">30</span></td>
                                                            <td class="fc-day-top fc-tue fc-other-month fc-past"
                                                                data-date="2020-03-31"><span
                                                                    class="fc-day-number">31</span></td>
                                                            <td class="fc-day-top fc-wed fc-past"
                                                                data-date="2020-04-01"><span
                                                                    class="fc-day-number">1</span></td>
                                                            <td class="fc-day-top fc-thu fc-past"
                                                                data-date="2020-04-02"><span
                                                                    class="fc-day-number">2</span></td>
                                                            <td class="fc-day-top fc-fri fc-past"
                                                                data-date="2020-04-03"><span
                                                                    class="fc-day-number">3</span></td>
                                                            <td class="fc-day-top fc-sat fc-past"
                                                                data-date="2020-04-04"><span
                                                                    class="fc-day-number">4</span></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_j46qvp918l">
                                                                    <div class="fc-content"> <span class="fc-title">All
                                                                            Day Event</span></div>
                                                                </a></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="fc-row fc-week fc-widget-content" style="height: 108px;">
                                            <div class="fc-bg">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-day fc-widget-content fc-sun fc-past"
                                                                data-date="2020-04-05"></td>
                                                            <td class="fc-day fc-widget-content fc-mon fc-past"
                                                                data-date="2020-04-06"></td>
                                                            <td class="fc-day fc-widget-content fc-tue fc-past"
                                                                data-date="2020-04-07"></td>
                                                            <td class="fc-day fc-widget-content fc-wed fc-past"
                                                                data-date="2020-04-08"></td>
                                                            <td class="fc-day fc-widget-content fc-thu fc-past"
                                                                data-date="2020-04-09"></td>
                                                            <td class="fc-day fc-widget-content fc-fri fc-past"
                                                                data-date="2020-04-10"></td>
                                                            <td class="fc-day fc-widget-content fc-sat fc-past"
                                                                data-date="2020-04-11"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="fc-content-skeleton">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <td class="fc-day-top fc-sun fc-past"
                                                                data-date="2020-04-05"><span
                                                                    class="fc-day-number">5</span></td>
                                                            <td class="fc-day-top fc-mon fc-past"
                                                                data-date="2020-04-06"><span
                                                                    class="fc-day-number">6</span></td>
                                                            <td class="fc-day-top fc-tue fc-past"
                                                                data-date="2020-04-07"><span
                                                                    class="fc-day-number">7</span></td>
                                                            <td class="fc-day-top fc-wed fc-past"
                                                                data-date="2020-04-08"><span
                                                                    class="fc-day-number">8</span></td>
                                                            <td class="fc-day-top fc-thu fc-past"
                                                                data-date="2020-04-09"><span
                                                                    class="fc-day-number">9</span></td>
                                                            <td class="fc-day-top fc-fri fc-past"
                                                                data-date="2020-04-10"><span
                                                                    class="fc-day-number">10</span></td>
                                                            <td class="fc-day-top fc-sat fc-past"
                                                                data-date="2020-04-11"><span
                                                                    class="fc-day-number">11</span></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td rowspan="2"></td>
                                                            <td rowspan="2"></td>
                                                            <td class="fc-event-container" colspan="3"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_29ob3yc2p4">
                                                                    <div class="fc-content"> <span class="fc-title">Long
                                                                            Event</span></div>
                                                                </a></td>
                                                            <td rowspan="2"></td>
                                                            <td class="fc-event-container" rowspan="2"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-not-end"
                                                                    aria-describedby="tooltip_yn1181l1ae">
                                                                    <div class="fc-content"> <span
                                                                            class="fc-title">Conference</span></div>
                                                                </a></td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_5ln0w5woqs">
                                                                    <div class="fc-content"><span
                                                                            class="fc-time">4p</span> <span
                                                                            class="fc-title">Repeating Event</span>
                                                                    </div>
                                                                </a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="fc-row fc-week fc-widget-content" style="height: 108px;">
                                            <div class="fc-bg">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-day fc-widget-content fc-sun fc-past"
                                                                data-date="2020-04-12"></td>
                                                            <td class="fc-day fc-widget-content fc-mon fc-past"
                                                                data-date="2020-04-13"></td>
                                                            <td class="fc-day fc-widget-content fc-tue fc-past"
                                                                data-date="2020-04-14"></td>
                                                            <td class="fc-day fc-widget-content fc-wed fc-past"
                                                                data-date="2020-04-15"></td>
                                                            <td class="fc-day fc-widget-content fc-thu fc-past"
                                                                data-date="2020-04-16"></td>
                                                            <td class="fc-day fc-widget-content fc-fri fc-past"
                                                                data-date="2020-04-17"></td>
                                                            <td class="fc-day fc-widget-content fc-sat fc-past"
                                                                data-date="2020-04-18"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="fc-content-skeleton">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <td class="fc-day-top fc-sun fc-past"
                                                                data-date="2020-04-12"><span
                                                                    class="fc-day-number">12</span></td>
                                                            <td class="fc-day-top fc-mon fc-past"
                                                                data-date="2020-04-13"><span
                                                                    class="fc-day-number">13</span></td>
                                                            <td class="fc-day-top fc-tue fc-past"
                                                                data-date="2020-04-14"><span
                                                                    class="fc-day-number">14</span></td>
                                                            <td class="fc-day-top fc-wed fc-past"
                                                                data-date="2020-04-15"><span
                                                                    class="fc-day-number">15</span></td>
                                                            <td class="fc-day-top fc-thu fc-past"
                                                                data-date="2020-04-16"><span
                                                                    class="fc-day-number">16</span></td>
                                                            <td class="fc-day-top fc-fri fc-past"
                                                                data-date="2020-04-17"><span
                                                                    class="fc-day-number">17</span></td>
                                                            <td class="fc-day-top fc-sat fc-past"
                                                                data-date="2020-04-18"><span
                                                                    class="fc-day-number">18</span></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-not-start fc-end"
                                                                    aria-describedby="tooltip_122tj6y4ou">
                                                                    <div class="fc-content"> <span
                                                                            class="fc-title">Conference</span></div>
                                                                </a></td>
                                                            <td class="fc-event-container" rowspan="4"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_swjknv3ldt">
                                                                    <div class="fc-content"><span
                                                                            class="fc-time">7a</span> <span
                                                                            class="fc-title">Birthday Party</span></div>
                                                                </a></td>
                                                            <td rowspan="4"></td>
                                                            <td rowspan="4"></td>
                                                            <td class="fc-event-container" rowspan="4"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_o0ifgcr5w5">
                                                                    <div class="fc-content"><span
                                                                            class="fc-time">4p</span> <span
                                                                            class="fc-title">Repeating Event</span>
                                                                    </div>
                                                                </a></td>
                                                            <td rowspan="4"></td>
                                                            <td rowspan="4"></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_ymg541rrdp">
                                                                    <div class="fc-content"><span
                                                                            class="fc-time">10:30a</span> <span
                                                                            class="fc-title">Meeting</span></div>
                                                                </a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_obgidi5leg">
                                                                    <div class="fc-content"><span
                                                                            class="fc-time">12p</span> <span
                                                                            class="fc-title">Lunch</span></div>
                                                                </a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    aria-describedby="tooltip_xeav21gky7">
                                                                    <div class="fc-content"><span
                                                                            class="fc-time">2:30p</span> <span
                                                                            class="fc-title">Meeting</span></div>
                                                                </a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="fc-row fc-week fc-widget-content" style="height: 108px;">
                                            <div class="fc-bg">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-day fc-widget-content fc-sun fc-past"
                                                                data-date="2020-04-19"></td>
                                                            <td class="fc-day fc-widget-content fc-mon fc-past"
                                                                data-date="2020-04-20"></td>
                                                            <td class="fc-day fc-widget-content fc-tue fc-past"
                                                                data-date="2020-04-21"></td>
                                                            <td class="fc-day fc-widget-content fc-wed fc-past"
                                                                data-date="2020-04-22"></td>
                                                            <td class="fc-day fc-widget-content fc-thu fc-past"
                                                                data-date="2020-04-23"></td>
                                                            <td class="fc-day fc-widget-content fc-fri fc-past"
                                                                data-date="2020-04-24"></td>
                                                            <td class="fc-day fc-widget-content fc-sat fc-past"
                                                                data-date="2020-04-25"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="fc-content-skeleton">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <td class="fc-day-top fc-sun fc-past"
                                                                data-date="2020-04-19"><span
                                                                    class="fc-day-number">19</span></td>
                                                            <td class="fc-day-top fc-mon fc-past"
                                                                data-date="2020-04-20"><span
                                                                    class="fc-day-number">20</span></td>
                                                            <td class="fc-day-top fc-tue fc-past"
                                                                data-date="2020-04-21"><span
                                                                    class="fc-day-number">21</span></td>
                                                            <td class="fc-day-top fc-wed fc-past"
                                                                data-date="2020-04-22"><span
                                                                    class="fc-day-number">22</span></td>
                                                            <td class="fc-day-top fc-thu fc-past"
                                                                data-date="2020-04-23"><span
                                                                    class="fc-day-number">23</span></td>
                                                            <td class="fc-day-top fc-fri fc-past"
                                                                data-date="2020-04-24"><span
                                                                    class="fc-day-number">24</span></td>
                                                            <td class="fc-day-top fc-sat fc-past"
                                                                data-date="2020-04-25"><span
                                                                    class="fc-day-number">25</span></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="fc-row fc-week fc-widget-content" style="height: 108px;">
                                            <div class="fc-bg">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-day fc-widget-content fc-sun fc-past"
                                                                data-date="2020-04-26"></td>
                                                            <td class="fc-day fc-widget-content fc-mon fc-past"
                                                                data-date="2020-04-27"></td>
                                                            <td class="fc-day fc-widget-content fc-tue fc-past"
                                                                data-date="2020-04-28"></td>
                                                            <td class="fc-day fc-widget-content fc-wed fc-past"
                                                                data-date="2020-04-29"></td>
                                                            <td class="fc-day fc-widget-content fc-thu fc-past"
                                                                data-date="2020-04-30"></td>
                                                            <td class="fc-day fc-widget-content fc-fri fc-other-month fc-past"
                                                                data-date="2020-05-01"></td>
                                                            <td class="fc-day fc-widget-content fc-sat fc-other-month fc-past"
                                                                data-date="2020-05-02"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="fc-content-skeleton">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <td class="fc-day-top fc-sun fc-past"
                                                                data-date="2020-04-26"><span
                                                                    class="fc-day-number">26</span></td>
                                                            <td class="fc-day-top fc-mon fc-past"
                                                                data-date="2020-04-27"><span
                                                                    class="fc-day-number">27</span></td>
                                                            <td class="fc-day-top fc-tue fc-past"
                                                                data-date="2020-04-28"><span
                                                                    class="fc-day-number">28</span></td>
                                                            <td class="fc-day-top fc-wed fc-past"
                                                                data-date="2020-04-29"><span
                                                                    class="fc-day-number">29</span></td>
                                                            <td class="fc-day-top fc-thu fc-past"
                                                                data-date="2020-04-30"><span
                                                                    class="fc-day-number">30</span></td>
                                                            <td class="fc-day-top fc-fri fc-other-month fc-past"
                                                                data-date="2020-05-01"><span
                                                                    class="fc-day-number">1</span></td>
                                                            <td class="fc-day-top fc-sat fc-other-month fc-past"
                                                                data-date="2020-05-02"><span
                                                                    class="fc-day-number">2</span></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td class="fc-event-container"><a
                                                                    class="fc-day-grid-event fc-h-event fc-event fc-start fc-end"
                                                                    href="http://google.com/"
                                                                    aria-describedby="tooltip_7uk7xcv8rr">
                                                                    <div class="fc-content"> <span
                                                                            class="fc-title">Click for Google</span>
                                                                    </div>
                                                                </a></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="fc-row fc-week fc-widget-content" style="height: 108px;">
                                            <div class="fc-bg">
                                                <table class="">
                                                    <tbody>
                                                        <tr>
                                                            <td class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
                                                                data-date="2020-05-03"></td>
                                                            <td class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
                                                                data-date="2020-05-04"></td>
                                                            <td class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
                                                                data-date="2020-05-05"></td>
                                                            <td class="fc-day fc-widget-content fc-wed fc-other-month fc-past"
                                                                data-date="2020-05-06"></td>
                                                            <td class="fc-day fc-widget-content fc-thu fc-other-month fc-today "
                                                                data-date="2020-05-07"></td>
                                                            <td class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
                                                                data-date="2020-05-08"></td>
                                                            <td class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
                                                                data-date="2020-05-09"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="fc-content-skeleton">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <td class="fc-day-top fc-sun fc-other-month fc-past"
                                                                data-date="2020-05-03"><span
                                                                    class="fc-day-number">3</span></td>
                                                            <td class="fc-day-top fc-mon fc-other-month fc-past"
                                                                data-date="2020-05-04"><span
                                                                    class="fc-day-number">4</span></td>
                                                            <td class="fc-day-top fc-tue fc-other-month fc-past"
                                                                data-date="2020-05-05"><span
                                                                    class="fc-day-number">5</span></td>
                                                            <td class="fc-day-top fc-wed fc-other-month fc-past"
                                                                data-date="2020-05-06"><span
                                                                    class="fc-day-number">6</span></td>
                                                            <td class="fc-day-top fc-thu fc-other-month fc-today "
                                                                data-date="2020-05-07"><span
                                                                    class="fc-day-number">7</span></td>
                                                            <td class="fc-day-top fc-fri fc-other-month fc-future"
                                                                data-date="2020-05-08"><span
                                                                    class="fc-day-number">8</span></td>
                                                            <td class="fc-day-top fc-sat fc-other-month fc-future"
                                                                data-date="2020-05-09"><span
                                                                    class="fc-day-number">9</span></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



    <div class="tooltip" role="tooltip" id="tooltip_o0ifgcr5w5" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(664px, 337px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Repeating Event</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_5ln0w5woqs" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(664px, 248px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Repeating Event</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_29ob3yc2p4" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(536px, 229px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Long Event</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_j46qvp918l" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(536px, 120px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for All Day Event</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_swjknv3ldt" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(280px, 337px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Birthday Party</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_7uk7xcv8rr" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(408px, 553px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Click for Google</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_xeav21gky7" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(152px, 410px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Meeting</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_obgidi5leg" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(152px, 391px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Lunch</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_ymg541rrdp" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(152px, 372px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Meeting</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_122tj6y4ou" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(151px, 337px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Conference</div>
    </div>
    <div class="tooltip" role="tooltip" id="tooltip_yn1181l1ae" aria-hidden="true" x-placement="top"
        style="position: absolute; will-change: transform; visibility: hidden; top: 0px; left: 0px; transform: translate3d(923px, 229px, 0px);">
        <div class="tooltip-arrow" style="left: 75px;"></div>
        <div class="tooltip-inner">description for Conference</div>
    </div>
</body>

</html>