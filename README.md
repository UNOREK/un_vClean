# vClear-Clean-Unused-Vehicles-FiveM-Vanilla
**vClear** is a lightweight and effective admin utility for FiveM that removes unused vehicles from the map with a single command.

- vClear is a lightweight and effective admin utility for FiveM that removes unused vehicles from the map with a single command.
- Works on both *vanilla FiveM* servers and those running Qbox/QBCore/OneSync  
- Triggers from in-game or server console  
- Sends a chat message showing how many vehicles were removed  
- Uses server-side native functions for full compatibility  
- No external dependencies — simple drag-and-drop setup

---

 Installation

1. Drop the `vclear` folder into your `resources` directory  
2. Add the following lines to your `server.cfg`:

```
ensure vclear
add_ace group.admin command.vclear allow
add_principal identifier.steam:yourSteamID group.admin
```

 Replace `yourSteamID` with your actual Steam identifier (e.g. `steam:11000010abc1234`)

3. Restart your server and use `/vclear` in-game or from console.

---

  Use Cases

- Clear abandoned or unused vehicles across the map  
- Reduce lag during peak hours  
- Clean up before restarts  
- Create a fast admin utility with room to expand

