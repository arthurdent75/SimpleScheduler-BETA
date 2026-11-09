**Version 4.0.0 (in development)**
- Rewritten from scratch: one Python program with a single websocket connection to Home Assistant
- New web interface with a visual timeline for every scheduler, groups, drag & drop and a text editor for the events
- Data moved from /share/simplescheduler to the add-on configuration folder (addon_config); version 3 files are imported automatically at the first start
- Events run on time even after Home Assistant was offline: they wait and run as soon as the connection is back
- Real-time web interface: changes (MQTT switches, other browsers, Home Assistant connection) reach the page at once through Server-Sent Events, instead of polling every 5 seconds
- Theme option: automatic (follows the device), light or dark. The dark_theme option of version 3 is imported
- New per-event force option: the state is kept until the next event (checked every minute)
- Climate: new extra setting for the HVAC mode (heat, cool, dry, …), with the modes supported by the selected entity
