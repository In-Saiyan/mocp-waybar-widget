#!/bin/bash

# Initial values to compare later
last_title=""
last_artist=""
last_state=""

# Infinite loop to keep checking mocp status
while true; do
    info=$(mocp -i)
    title=$(echo "$info" | grep 'Title:' | cut -d ':' -f2 | xargs)
    artist=$(echo "$info" | grep 'Artist:' | cut -d ':' -f2 | xargs)
    state=$(echo "$info" | grep 'State:' | cut -d ':' -f2 | xargs)

    if [ -z "$title" ]; then
        title="No track"
    fi

    # Determine the correct icon based on the player state
    if [ "$state" == "PLAY" ]; then
        icon="\uf144"  # Play icon
    elif [ "$state" == "PAUSE" ]; then
        icon="\uf28b"  # Pause icon
    else
        icon="\uf04d"  # Stop icon
        state="Stopped"
    fi

    # Only update if the title, artist, or state changes
    if [ "$title" != "$last_title" ] || [ "$artist" != "$last_artist" ] || [ "$state" != "$last_state" ]; then
        text="$artist - $title"
        # Output the updated JSON format
        echo "{\"text\": \"$icon $text\", \"class\": \"custom-mocp\", \"alt\": \"mocp\", \"tooltip\": \"$text\"}"

        # Update the last values
        last_title="$title"
        last_artist="$artist"
        last_state="$state"
    fi

    # Wait for a second before checking again
    sleep 1
done

