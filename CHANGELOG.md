**Version 4.0.6 (in development)**
- Calendar: vertical zoom. It opens with the whole day on the screen; drag the hour column up or down, use Ctrl + wheel or the zoom buttons on a computer, pinch with two fingers on a phone
- Calendar: long periods become thin bars only when a day is too crowded to show them; a day with few events shows them as normal blocks
- Calendar: fixed scrolling on a phone, which didn't work when the finger started on the grid

**Version 4.0.5 (in development)**
- New calendar view (icon at the top of the page): the events of all schedulers in a typical week, Monday to Sunday, in the style of a calendar app, with a day view, filters (group, recurring, "if false" events, disabled schedulers) and the details of every event
- Editor on a phone: the timelines use the whole width, the weekday names of the week view are smaller and turned sideways
- Timelines: the hour labels and the event labels are spaced on the real width of the screen, so they no longer overlap; in the week view, events too close to show are grouped on the label before ("06:50 +2")


**Version 4.0.4 (in development)**
- Fixed the log of random events: it showed the time of the rule instead of the minute drawn ("executing OFF at 16:39 (random 16:25 ±15)")
- Fixed covers and valves that are still moving (opening/closing) after an event: they were seen in the wrong state and the command was sent again; now they are checked again when they stop, also for forced events
- Fixed the "From" and "To" times of a recurring scheduler: typing them with the keyboard lost the field after the first digit; the preview is now updated when you leave the field
- Fixed the entity list in the editor: it didn't close when clicking outside it

**Version 4.0.3 (in development)**
- New random time for the events of daily and weekly schedulers (fixed times, sunrise and sunset): a different minute every day inside a window of ±5…120 minutes, shown as a hatched area on the timelines (text editor: `R30`)
- Random windows that overlap the next or previous event are refused, both in the editor and when saving
- Recurring: new action "Turn on, then off at random": it stays on for a random time between a minimum and a maximum (text editor: `pulse 10-40`)
- Recurring: a pulse rule whose last "on" could turn off after midnight is refused
- Fixed the header on narrow screens: the name ran under the buttons and the logo was squeezed
- Fixed the sunrise/sunset offset bar: at zero the shorter text made the bar longer, moving the zero tick under the pointer and making the slider jump

**Version 4.0.2 (in development)**
- Added test now button

**Version 4.0.1 (in development)**
- Fixed bug with multiple entities at the same time

**Version 4.0.0 (in development)**
- New web interface with a visual timeline for every scheduler, groups, drag & drop and a text editor for the events
- New logic in the event engine
- Data moved from /share/simplescheduler to the add-on configuration folder (addon_config); version 3 files are imported automatically at the first start
- Events run on time even after Home Assistant was offline: they wait and run as soon as the connection is back
- Real-time web interface: changes (MQTT switches, other browsers, Home Assistant connection) reach the page at once
- MQTT connects to Mosquitto Broker app internally, no credentials needed
- Theme option: automatic (follows the device), light or dark. 
- New per-event force option: the state is kept until the next event
- Climate: new extra setting for the HVAC mode (heat, cool, dry, …), with the modes supported by the selected entity
- Extra features are now entered via UI, no more letter code to remember

