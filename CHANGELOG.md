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

