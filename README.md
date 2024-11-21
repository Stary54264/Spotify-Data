# Trend for Songs of David Over Time

## Overview

This repo contains all the files needed for the analysis of songs from David Tao on Spotify.

This study explores the musical evolution of David Tao using data from Spotify, analyzing features like tempo, energy, and valence (happiness) across his songs from 1997 to the present. The analysis reveals that tempo and valence do not show a straightforward positive relationship, while energy levels in his songs decreased over time before rising again, potentially reflecting personal or artistic shifts. These findings show how an artist's musical characteristics can change over decades, indicating the relationship between creative expression and personal or cultural contexts. By examining the dynamics of music over time, this study highlights how data can deepen our understanding of artistry and its evolution.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Spotify.
-   `data/analysis_data` contains the cleaned dataset that was constructed in a `.csv` file.
-   `paper` contains the files used to generate the paper, including the Quarto document and the reference bibliography file, as well as the PDF. 
-   `scripts` contains the R scripts used to download and clean the data.


## Variables

The variables used in the analysis are:

-   `album_release_date`: the date that the album was released.
-   `energy`: the energy of the song.
-   `valence`: the degree of happiness of the song.
-   `tempo`: the pace of the song.


## Statement on LLM usage

No LLM tools are used in this paper.
