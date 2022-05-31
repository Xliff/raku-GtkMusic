use v6.c;

use GLib::Raw::Definitions;

unit package GTK::Music::Raw::Enums;

constant GtkMusicGuitarFretMarkStyle is export := guint32;
our enum GtkMusicGuitarFretMarkStyleEnum is export <
  GTK_MUSIC_GUITAR_FRET_MARK_STYLE_NONE
  GTK_MUSIC_GUITAR_FRET_MARK_STYLE_SOLID_CIRCLE
  GTK_MUSIC_GUITAR_FRET_MARK_STYLE_RECTANGLE
  GTK_MUSIC_GUITAR_FRET_MARK_STYLE_FANCY
>;

constant GtkMusicMusicalNoteError is export := guint32;
our enum GtkMusicMusicalNoteErrorEnum is export <
  GTK_MUSIC_MUSICAL_NOTE_ERROR_INVALID_NOTE
  GTK_MUSIC_MUSICAL_NOTE_ERROR_INVALID_MIDI
  GTK_MUSIC_MUSICAL_NOTE_ERROR_ALREADY_COMPLETE
>;

constant GtkMusicMusicalNotesDiatonicIntervals is export := guint32;
our enum GtkMusicMusicalNotesDiatonicIntervalsEnum is export <
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_UNISON
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MINOR_SECOND
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MAJOR_SECOND
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MINOR_THIRD
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MAJOR_THIRD
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_PERFECT_FOURTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_DIMINISHED_FIFTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_PERFECT_FIFTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MINOR_SIXTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MAJOR_SIXTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MINOR_SEVENTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_MAJOR_SEVENTH
  GTK_MUSIC_MUSICAL_NOTES_DIATONIC_INTERVALS_PERFECT_OCTAVE
>;

constant GtkMusicPianoError is export := guint32;
our enum GtkMusicPianoErrorEnum is export <
  GTK_MUSIC_PIANO_ERROR_INVALID_COORDINATES
>;

constant GtkMusicPianoLabelPosition is export := guint32;
our enum GtkMusicPianoLabelPositionEnum is export <
  GTK_MUSIC_PIANO_LABEL_POSITION_UP
  GTK_MUSIC_PIANO_LABEL_POSITION_DOWN
>;