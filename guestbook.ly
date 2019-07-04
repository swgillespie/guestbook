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

  %% Useful for debugging margin and spacing issues.
  % annotate-spacing = ##t

  %% Draw each song's bar the full width of the page, even if there aren't
  %% enough notes to do so at lilypond's desired spacing.
  ragged-right = ##f

  %% Begin drawing at x-coordinate 0.
  %left-margin = #0
}

%% Lilypond embeds a Scheme interpreter, so these few lines issues a few commands
%% in Scheme that we'll use later on. Here, we are defining variables that we will
%% use later. In Lilypond, the '#' sigil escapes to Scheme mode and yields the value
%% of the evaluated Scheme expression.
%%
%% We've actually already seen this notation already: ##f evaluates the Scheme value
%% "#f" (false), and #0 evaluates the Scheme value 0 (0).
#(define note-size 14)
#(define staff-scale 3)
#(define indent 0)
#(define break-visibility #(#f #f #f))

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
    \layout {
      indent = #indent
    }
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size
      \override Score.BarNumber.break-visibility = #break-visibility

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key d \minor


      d,1 |
      f2 g a g~ |
      g2.~ g8 bes16 a | \break
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
    \layout {
      indent = #indent
    }

    <<
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size
      \override Score.BarNumber.break-visibility = #break-visibility

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key f \minor

      c4 c8 c bes4 bes8 bes |
      aes aes aes aes g ees c f~ |
    }

    \addlyrics {
      Stop call -- in' Stop call -- in' I don't wan -- na talk an -- y -- more
    }
    >>
  }
}


%%
%% Page 3: Your Song
%%
\book {
  \bookOutputName "your_song"
  \header {
    title = "Your Song"
    composer = "Elton John"
  }

  \score {
    \midi { \tempo 4 = 120 }
    \layout {
      indent = #indent
    }

    <<
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size
      \override Score.BarNumber.break-visibility = #break-visibility

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key ees \major

      r2 r4 c |
      bes2 ees,4 ees |
      f4. c4. c4 |
      g'4. ees4. ees4 |
      f1
  }

    \addlyrics {
      How won -- der -- ful life is when you're in the world
    }
    >>
  }
}

%%
%% Page 4: Raindrop Prelude
%%
\book {
  \bookOutputName "raindrop"
  \header {
    title = "Raindrop Prelude"
    composer = "Frédéric Chopin"
  }

  \score {
    \midi { \tempo 4 = 80 }
    \layout {
      indent = #indent
    }
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size
      \override Score.BarNumber.break-visibility = #break-visibility

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key des \major

      f8. des16 aes2 bes4 |
      c2. des4 |
      ees8. f16 ges2 f4 |
      f1
    }
  }
}

%%
%% Page 5: Phoenix Wright
%%
\book {
  \bookOutputName "objection"
  \header {
    title = "Objection! (from Phoenix Wright)"
    composer = "Masakazu Sugimori"
  }

  \score {
    \midi { \tempo 4 = 120 }
    \layout {
      indent = #indent
    }
    \relative c'' {
      \magnifyStaff #staff-scale
      \set fontSize = #note-size
      \override Score.BarNumber.break-visibility = #break-visibility

      \numericTimeSignature
      \time 4/4
      \clef treble
      \key d \minor

      %d8[ g16 d d'8] d,[ g16 d d'8] d,[ g16 d] |
      %d'2. d,8 g |

      d,8[ g d'] d,[ g d'] d,[ g] |
      d'1 |

      %{
      d,8[ g d'] d,[ g d'] d,[ g] |
      d'2. d,8 g |
      d8 g d' d, g d' d, g |
      d' d, g d' d, g f'4 |
      %}


      %d8 g d' d, g d' g, f |
    }
  }
}

%%
%% Page 6: Pokemon Kanto Trainer Theme
%%
\book {
  \bookOutputName "trainer"
  \header {
    title = "Trainer Fight! (from Pokémon)"
    composer = "Junichi Masuda"
  }

  \score {
    \midi { \tempo 4 = 180 }
    \layout {
      indent = #indent
    }
    \relative c'' {
      \magnifyStaff #staff-scale
        \set fontSize = #note-size
        \override Score.BarNumber.break-visibility = #break-visibility

        \numericTimeSignature
        \time 4/4
        \clef treble
        \key b \minor

        %b4. e,4. f4 |
        %d8 e4 f4 ges,8 a bes |
        %b4. des4. d4 |
        %b8 des4 d2~ d8 |

        b8 r4 e,8 r4 f8 r |
        d e r f r ges, a bes |
        b r4 des8 r4 d8 r |
        b des r d2~ d8 \bar "|." |
    }
  }
}
