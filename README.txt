STORY PROXY - NODE.JS WINDOWS PACKAGE

Requirements:
- Windows x64
- Node.js 20 or newer: https://nodejs.org/

Install and run:
1. Extract this ZIP, for example to C:\StoryProxy.
2. Install Node.js 20+ on the target machine.
3. Double-click START.cmd.
4. Enter an initial login password when prompted.
5. Open http://localhost:1111/login.

Data and backup:
- Runtime data is stored in the data folder beside START.cmd.
- Back up the entire data folder when migrating.
- The generated .jwt-secret file must remain beside START.cmd.

Security:
- This package listens only on localhost by default.
- Do not expose port 1111 publicly without firewall, HTTPS, and a strong password.

Stop:
- Close the command window titled Story Proxy or press Ctrl+C in it.