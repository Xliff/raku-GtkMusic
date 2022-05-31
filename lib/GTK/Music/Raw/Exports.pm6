use v6.c;

unit package GTK::Music::Raw::Exports;

our @gtk-music-exports is export;

BEGIN {
  @gtk-music-exports = <
    GTK::Music::Raw::Definitions
    GTK::Music::Raw::Enums
  >;
}
