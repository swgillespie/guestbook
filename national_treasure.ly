\version "2.19.82"
\header {
  title = "National Treasure Theme"
  composer = "Trevor Rabin"
}

\score {
  \midi { \tempo 4 = 120 }
  \layout {}
  \relative c'' {
    \numericTimeSignature
    \time 4/4
    \clef treble
    \key d \minor

    d,1 f2 g a g~ g2.~ g8 bes16 a
 
    g1 bes2 c d c~ c1
  }
}