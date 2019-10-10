%{
    All of the bagpipe specific markup.
%}

\version "2.16.0"

#(ly:set-option 'point-and-click #t)

% Choose a size
#(set-global-staff-size 22)
#(set-default-paper-size "letter" 'landscape)

\include "bagpipe.ly"

\paper {
  indent = 0\mm
  ragged-right = ##f
  %ragged-bottom = ##t
}

\layout {
  indent = 10\mm
  \context {
    \Score
    \override NonMusicalPaperColumn #'line-break-permission = ##f
  }
}

commonLayout = {
    \hideKeySignature
    \set Score.automaticBars = ##f
    \numericTimeSignature
    \hideKeySignature
    \omit Staff.TimeSignature % hideTimeSignature
}

\markup { \fontsize #2 \bold "Plain notes" }
\score {
    {
        \commonLayout
    \omit Staff.TimeSignature % hideTimeSignature
    %\set Staff.instrumentName = "Plain notes "
    G4 a b c cflat d e f fflat g gflat A
    \bar "|."
    }
    \addlyrics {
    G a b c cflat d e f fflat g gflat A
    }
}

\markup { \fontsize #2 \bold "Single grace notes" }
\score {
    {
        \commonLayout
    %\set Staff.instrumentName = "Single grace notes "
    \grG a4 \gra a \grb a \grc a \grd a
    \gre a \grf a \grg a \grA a
    \bar "|."
    }
    \addlyrics {
    "\grG" "\gra" "\grb" "\grc" "\grd"
    "\gre" "\grf" "\grg" "\grA"
    }
}

\markup { \fontsize #2 \bold "Doublings" }
\score {
    {
        \commonLayout
    %\set Staff.instrumentName = "Doublings "
    \dblG G \dbla a \dblb b \dblc c \dbld d
    \dble e \dblf f \dblg g \dblA A \tripleA A
    \hdblf f \tdblf f
    \bar "|."
    }
    \addlyrics {
    "\dblG" "\dbla" "\dblb" "\dblc" "\dbld"
    "\dble" "\dblf" "\dblg" "\dblA" "\\tripleA"
    "\hdblf" "\\tdblf"
    }
}
\markup {
    \hspace #10
    \override #'(line-width . 120)
    \justify {
        All other half doublings and thumb doublings are available similarly.
    }
}

\markup { \fontsize #2 \bold "Slurs" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = "Slurs "
    \slura a \slurb b \slurc c \slurd d \wslurd d
    \slure e \slurf f \slurg g \slurA A
    \hslurf f \tslurf f
    \bar "|."
    }
    \addlyrics {
    "\slura" "\slurb" "\slurc" "\slurd" "\wslurd"
    "\slure" "\slurf" "\slurg" "\slurA"
    "\hslurf" "\\tslurf"
    }
}
\markup {
    \hspace #10
    \override #'(line-width . 120)
    \justify {
        All other half slurs and thumb slurs are available similarly.
        Note that many of these aren't really playable, and are only included for consistency.
    }
}

\pageBreak

\markup { \fontsize #2 \bold "Shakes" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = "Shakes "
    \shakea a \shakeb b \shakec c \shaked d
    \shakee e \shakef f \shakeg g \shakeA A
    \hshakef f \tshakef f
    \bar "|."
    }
    \addlyrics {
    "\shakea" "\shakeb" "\shakec" "\shaked"
    "\shakee" "\shakef" "\shakeg" "\shakeA"
    "\hshakef" "\\tshakef"
    }
}
\markup { "All other half shakes and thumb shakes are available similarly. "
          "Note that many of these aren't really playable, and are only included for consistency." }

\markup { \fontsize #2 \bold "Catches" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = "Catches "
    e \catcha a e \catchb b e \catchc c e \catchd d
    f \catche e f \catchc c g \tcatchc c
    \bar "|."
    }
    \addlyrics {
    \skip 4 "\catcha" \skip 4 "\catchb" \skip 4 "\catchc" \skip 4 "\catchd"
    \skip 4 "\catche" \skip 4 "\catchc" \skip 4 "\\tcatchc"
    }
}
\markup { "All other g-grace catches and thumb catches are available similarly." }

\markup { \fontsize #2 \bold "Throws" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = "Throws "
    a \thrwd d G \Gthrwd d a \thrwe e a \wthrwe e
    d \thrwf f a \gripthrwd d
    \bar "|."
    }
    \addlyrics {
    \skip 4 "\\thrwd" \skip 4 "\Gthrwd" \skip 4 "\\thrwe" \skip 4 "\\wthrwe"
    \skip 4 "\\thrwf" \skip 4 "\\gripthrwd"
    }
}

\markup { \fontsize #2 \bold "Grips and birls" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = "Grips and birls "
    a \grip c d \bgrip d a \egrip c
    \birl a \wbirl a \gbirl a \dbirl a
    \bar "|."
    }
    \addlyrics {
    \skip 4 "\grip" \skip 4 "\bgrip" \skip 4 "\egrip"
    "\birl" "\wbirl" "\gbirl" "\dbirl"
    }
}

\markup { \fontsize #2 \bold "Taorluath" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = \markup { "Taorluath " }
    e \taor a d \btaor a G \Gtaor a
    b \taoramb b c \taoramc c b \taoramd d
    e \taorjmd a e \taorold a
    \bar "|."
    }
    \addlyrics {
    \skip 4 "\\taor" \skip 4 "\btaor" \skip 4 "\Gtaor"
    \skip 4 "\\taoramb" \skip 4 "\\taoramc" \skip 4 "\\taoramd"
    \skip 4 "\\taorjmd" \skip 4 "\\taorold"
    }
}
\markup { "\\taorjmd is how the taorluath is written in Joseph MacDonald’s book."
          "It is never played that way nowadays." }
\markup { "\\taorold is how it was played in late 19:th early 20:th century."
          "It was usually not written like this, but rather as a grip and an e gracenote on a." }

\pageBreak

\markup { \fontsize #2 \bold "Crunluath" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = \markup { "Crunluath " }
    e \crun e d \dcrun e G \Gcrun e
    b \crunamb e c \crunamc e b \crunamd e
    s16 \grg a8[ \grd b16 \crunambfosg b] s16 \grg a8[ \grd c16 \crunamcfosg c]
    \bar "|."
    }
    \addlyrics {
    \skip 4 "\\crun" \skip 4 "\dcrun" \skip 4 "\Gcrun"
    \skip 4 "\\crunamb" \skip 4 "\\crunamc" \skip 4 "\\crunamd"
    \skip 4 "\\crunambfosg" \skip 4 "\\crunamcfosg"
    }
}

\markup { \fontsize #2 \bold "Piobaireachd notation" }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = \markup { \column { "Piobaireachd " "notation " } }
    \cad c4 A \hcad c
    e \gracad e d \grGcad d
    a \pthrwd d c \darodo b c \pdarodo b G \Gdarodo c
    a \dre e G \bari g e \dari g e \dare f
    \bar "|."
    }
    \addlyrics {
    "\cad" \skip 4 "\hcad"
    \skip 4 "\gracad" \skip 4 "\grGcad"
    \skip 4 "\pthrwd" \skip 4 "\darodo" \skip 4 "\pdarodo" \skip 4 "\Gdarodo"
    \skip 4 "\dre" \skip 4 "\bari" \skip 4 "\dari" \skip 4 "\dare"
    }
}

\score {
    {
    \commonLayout
    \set Staff.instrumentName = " "
    a16_\trebling d8. a4_\txtaor a4_\txcrun a4_\txtaorcrun
    a4_\txtaoram a4_\txcrunam a4_\txtaorcrunam
    \bar "|."
    }
    \addlyrics {
    "\\trebling" \skip 8. "\\txtaor" "\\txcrun" "\\txtaorcrun"
    "\\txtaoram" "\\txcrunam" "\\txtaorcrunam"
    }
}

\markup { \fontsize #2 \bold "" }
\markup { \column { " " \fontsize #2 \bold "Ancient movements - J. MacDonald" } }
\score {
    {
    \commonLayout
    %\set Staff.instrumentName = \markup { \column { "Ancient movements" "J. MacDonald" } }
    e \fifteenthcutting a G \Gfifteenthcutting a
    e \seventeenthcutting a G \Gseventeenthcutting a
    }
    \addlyrics {
    \skip 4 "\fifteenthcutting" \skip 4 "\Gfifteenthcutting"
    \skip 4 "\seventeenthcutting" \skip 4 "\Gseventeenthcutting"
    }
}

\score {
    {
    \commonLayout
    %\set Staff.instrumentName = " "
    e \barluadh g G \Gbarluadh g
    \bar "|."
    }
    \addlyrics {
    \skip 4 "\barluadh" \skip 4 "\Gbarluadh"
    }
}

\markup {
    \hspace #10
    \column {
        \override #'(line-width . 120)
        \justify {
        These are the specific bagpipe markups that are available. You need to
        know a lot more about entering normal music in order to produce userful
        output. All such information is available in the Lilypond tutorial and
        manual, as well as in the tips, regression tests, and snippet repository.
        }
    }
}

\header {
    title = "Cheat sheet for entering bagpipe music"
    subtitle = "Intended for Lilypond 2.16 or better"
    tagline = \markup { "P/S Sven Axelsson, The Murray Pipes & Drums of Gothenburg" }
}
