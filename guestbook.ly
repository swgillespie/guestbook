%% Sean and Rachel Get Married: The Guest Book
%%
%% This file is a LilyPond file describing the guest book for Sean Gillespie
%% and Rachel Hutto's wedding on July 13, 2019. The idea for this guestbook
%% is that guests will have the option to place their fingerprints inside of
%% musical notes forming melodies that we like.
%%
%% This file is designed to be post-processed with Inkscape, but only to edit
%% out the centers of the notes.

\version "2.19.82"

\paper {
  %% Because the goal of this project is to produce a book where people will
  %% be putting their fingerprints in notes, the notes themselves need to be
  %% roughly finger-sized.
  %%
  %% When doing the math, this works out to around the "tabloid" size in 
  %% lilypond.
  #(set-paper-size "tabloid" 'landscape)
  annotate-spacing = ##t
}

#(define note-size 14)
#(define staff-scale 3)

%%
%% Page 1: National Treasure
%%
\book {
  \bookOutputName "national_treasure"
  \header {
    title = "National Treasure Theme"
    composer = "Trevor Rabin"
  }

  \score {
    \midi { \tempo 4 = 120 }
    \layout { ragged-right = ##f }
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key d \minor


      d,1 |
      f2 g a g~ |
      g2.~ g8 bes16 a | 
      g1 |
      bes2 c d c~  |
      c1
    }
  }
}

%%
%% Page 2: Telephone - Lady Gaga
%%
\book {
  \bookOutputName "telephone"
  \header {
    title = "Telephone"
    composer = "Lady Gaga"
  }

  \score {
    \midi { \tempo 4 = 120 }
    \layout { ragged-right = ##f }

    <<
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key f \minor

      c4 c8 c bes4 bes8 bes |
      aes aes aes aes g ees c f~ |
      %f8 c' c c bes4 bes8 bes aes aes aes g4 f4.
    }

    \addlyrics {
      Stop call -- in' Stop call -- in' I don't wan -- na talk an -- y -- more
      % left my head and my heart on the dance -- floor
    }
    >>
  }
}