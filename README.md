⚽ League Football Database Management System  

📖 Overview  
This project is a Football League Database Management System designed to store and manage data related to various football leagues, teams, players, matches, referees, and stadiums. It provides a structured way to manage the relationships and statistics of leagues across different countries, teams, players, and their associated matches.  

🌟 Features  

⚽ Football Leagues:  
Multiple leagues are stored, each associated with a specific country.  

🏆 Teams:  
Each league consists of several teams.  
Teams are uniquely identified by their Team ID and Team Name.  
Each team has a dedicated coach and a manager who manages only one team at a time.  
👥 Players:  
Each team consists of multiple players, but a player can only belong to one team.  
Players are uniquely identified by their Player ID.  
🏅 Matches:  
Teams play matches against one another, and each match is identified by a Match ID.  
Each match has a unique scheduled date 📅.  
Matches are officiated by a group of referees, each with a unique Referee ID.  
Every match is played in a particular stadium.  
🏟️ Stadiums:  
Each team has a home stadium where matches are played.  

🗂️ Database Design

The database stores data for:  
Leagues: Each associated with a country.  
Teams: Each with unique details such as Team ID, Team Name, and associated coach/manager.  
Players: Each uniquely identified by their Player ID, along with their personal and playing information.  
Matches: Each match between two teams, identified by a unique Match ID and officiated by referees.  
Referees: Each referee is stored with a unique Referee ID and their details.  
Stadiums: Each team has a home stadium where their home matches are played.  
