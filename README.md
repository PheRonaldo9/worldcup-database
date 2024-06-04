
---

# worldcup Database
This project includes a PostgreSQL script and two Bash scripts to manage and query data about the FIFA World Cup competition knockout matches in a PostgreSQL database.

---

# World Cup Information Management Scripts

This project includes a PostgreSQL script and two Bash scripts to manage and query data about the FIFA World Cup competition knockout matches in a PostgreSQL database. The scripts are designed to:
1. Set up the database and tables - SQL
2. Import world cup knockout games data from a CSV file - Bash
3. Query specific information about the world cup knockout games from the database - Bash

## Prerequisites

Before running the scripts, ensure you have the following installed:

- PostgreSQL
- Bash

## Database Setup

First, set up the PostgreSQL database and tables using the provided SQL script - world_all_cup.sql . This script will create the `worldcup` database along with the necessary tables and constraints.

### Creating the Database

1. Save the provided SQL script to a file, e.g., `worldcup.sql`.
2. Execute the script using the `psql` command:
   ```bash
   psql -U freecodecamp -f worldcup.sql
   ```

This script will:

- Drop the existing `worldcup` database if it exists.
- Create a new `worldcup` database.
- Create the `games`, and `teams` tables.
- Populate these tables with initial data.

## Importing Data

Use the provided Bash script - insert_data bash script to import data from the CSV file into the PostgreSQL database.

### Bash Script: `insert_data.sh`

The Bash script reads data from `games_test.csv` and inserts it into the `worldcup` database.

1. Save the provided Bash script to a file, e.g., `insert_data.sh`.
2. Make the script executable:
   ```bash
   chmod +x insert_data.sh
   ```
3. Run the script:
   ```bash
   ./insert_data.sh
   ```

### CSV File Format

- `games_test.csv` should contain six columns: `year`, `round`, `winner`, `opponent`, `winner_goals`, and `opponent_goals`.

### Script Details

The script performs the following operations:

1. Truncates the existing games and teams tables.
2. Reads games.csv and:
   - Inserts new teams if they do not exist in the `teams` table.
   - Inserts game details into the games table, associating the winner and opponent teams using their `team_id`s.
3. The script reads each line from games.csv, skipping the header row. For each row:
   - It checks if the WINNER team exists in the `teams` table by querying for its `team_id`. If not found, it inserts the team name and gets the new `team_id`.
   - It checks if the OPPONENT team exists in the `teams` table by querying for its `team_id`. If not found, it inserts the team name and gets the new `team_id`.
   - It inserts the game details (year, round, winner_id, opponent_id, winner_goals, opponent_goals) into the `games` table.

The script uses the `PSQL` variable to execute SQL queries. It assumes the database is named `worldcup` unless the script is run with the argument `test`, in which case it uses the database `worldcuptest`.

## Querying Data

Use the provided Bash script to query specific information from the `worldcup` database.

### Bash Script: `student_info.sh`

The Bash script queries the `worldcup` database for specific information.

1. Save the provided Bash script to a file, e.g., `queries.sh`.
2. Make the script executable:
   ```bash
   chmod +x queries.sh
   ```
3. Run the script:
   ```bash
   ./queries.sh
   ```

### Script Details

The script performs the following operations:

1. Total Goals in Winning Games: Retrieves the total number of goals scored by winning teams.
2. Total Goals in All Games: Retrieves the total number of goals scored in all games.
3. Average Goals in Winning Games: Calculates the average number of goals scored by winning teams.
4. Most Goals in a Single Game: Retrieves the maximum number of goals scored by a single team in a game.
5. Games with More Than Two Goals: Counts the number of games where the winning team scored more than two goals.
6. Winner of the 2018 Tournament: Retrieves the name of the winning team in the 2018 tournament.
7. Teams in the 2014 Eighth-Final Round: Lists the names of teams that played in the 2014 Eighth-Final round.
8. Unique Winning Team Names: Retrieves a list of unique winning team names.
9. Champions by Year: Lists the year and team name of all champions.
10. Teams Starting with 'Co': Lists the names of teams that start with 'Co'.

## Example Usage

1. Ensure PostgreSQL is running and the database is set up.
2. Prepare your CSV file (`games_test.csv`).
3. Execute the SQL script to set up the database.
4. Run the `insert_data.sh` script to import the data.
5. Run the `queries` script to query specific information from the database.

---

## END

---
