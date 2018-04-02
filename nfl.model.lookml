- connection: nfldb

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: agg_play
  joins:
    - join: drive
      type: left_outer 
      sql_on: ${agg_play.drive_id} = ${drive.drive_id}
      relationship: many_to_one

    - join: play
      type: left_outer 
      sql_on: ${agg_play.play_id} = ${play.play_id}
      relationship: many_to_one
    
    - join: play_player
      type: left_outer 
      sql_on: ${play_player.play_id} = ${play.play_id}
      relationship: many_to_one
      
    - join: player
      relationship: many_to_one
      type: left_outer
      sql_on: ${play_player.player_id} = ${player.player_id}


- explore: drive

- explore: game

- explore: meta

- explore: play
  joins:
    - join: drive
      type: left_outer 
      sql_on: ${play.drive_id} = ${drive.drive_id}
      relationship: many_to_one


- explore: play_player
  joins:
    - join: drive
      type: left_outer 
      sql_on: ${play_player.drive_id} = ${drive.drive_id}
      relationship: many_to_one

    - join: play
      type: left_outer 
      sql_on: ${play_player.play_id} = ${play.play_id}
      relationship: many_to_one

    - join: player
      type: left_outer 
      sql_on: ${play_player.player_id} = ${player.player_id}
      relationship: many_to_one
    
    - join: game
      type: left_outer
      relationship: many_to_one
      sql_on: ${play_player.gsis_id} = ${game.gsis_id}


- explore: player

- explore: team

