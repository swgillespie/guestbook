\version "2.19.82"
\header {
  title = "Telephone"
  composer = "Lady Gaga"
}

\score {
  \midi { \tempo 4 = 120 }
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    }
  }

  <<
  \relative c'' {
    \numericTimeSignature
    \time 4/4
    \clef treble
    \key f \minor

    c4 c8 c bes4 bes8 bes aes aes aes aes g ees c f~

    %f8 c' c c bes4 bes8 bes aes aes aes g4 f4.
  }

  \addlyrics {
    \set fontSize = #-4
    Stop call -- in' Stop call -- in' I don't wan -- na talk an -- y -- more

    % left my head and my heart on the dance -- floor
  }
  >>


}