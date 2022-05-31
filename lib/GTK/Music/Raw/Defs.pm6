use v6.c;

use NativeCall;

use GLib::Raw::Definitions;
use GLib::Raw::Enums;
use GLib::Raw::Structs;
use Gee::Raw::Definitions;
use Gee::Raw::Enums;
use Gee::Raw::Structs;
use GTK::Music::Raw::Definitions;
use GTK::Music::Raw::Enums;

use GDK::RGBA;

unit package GTK::Music::Raw::Defs;

### /usr/src/libgtkmusic/build/gtkmusic.h
sub gtk_music_guitar_marked_note_style_get_type ()
  returns GType
  is native(music)
  is export
{ * }

sub gtk_music_guitar_marked_note_style_ref (
  GtkMusicGuitarMarkedNoteStyle $instance
)
  returns GtkMusicGuitarMarkedNoteStyle
  is native(music)
  is export
{ * }

sub gtk_music_guitar_marked_note_style_unref (
  GtkMusicGuitarMarkedNoteStyle $instance
)
  is native(music)
  is export
{ * }

sub gtk_music_guitar_param_spec_marked_note_style (
  Str         $name,
  Str         $nick,
  Str         $blurb,
  GType       $object_type,
  GParamFlags $flags
)
  returns GParamSpec
  is native(music)
  is export
{ * }

sub gtk_music_guitar_string_get_type ()
  returns GType
  is native(music)
  is export
{ * }

sub gtk_music_guitar_string_ref (gpointer $instance)
  returns Pointer
  is native(music)
  is export
{ * }

sub gtk_music_guitar_string_unref (gpointer $instance)
  is native(music)
  is export
{ * }

sub gtk_music_guitar_value_get_marked_note_style (GValue $value)
  returns Pointer
  is native(music)
  is export
{ * }

sub gtk_music_guitar_value_set_marked_note_style (
  GValue   $value,
  gpointer $v_object
)
  is native(music)
  is export
{ * }

sub gtk_music_guitar_value_take_marked_note_style (
  GValue   $value,
  gpointer $v_object
)
  is native(music)
  is export
{ * }

sub gtk_music_param_spec_guitar_string (
  Str         $name,
  Str         $nick,
  Str         $blurb,
  GType       $object_type,
  GParamFlags $flags
)
  returns GParamSpec
  is native(music)
  is export
{ * }

sub gtk_music_piano_construct (GType $object_type)
  returns GtkMusicPiano
  is native(music)
  is export
{ * }

sub gtk_music_piano_find_positions (GtkMusicPiano $self, Str $note)
  returns GeeHashSet
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_accident_key_color (
  GtkMusicPiano $self,
  GdkRGBA       $result
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_auto_update (GtkMusicPiano $self)
  returns uint32
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_detailed_labels (GtkMusicPiano $self)
  returns uint32
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_first_note (GtkMusicPiano $self)
  returns gushort
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_key_count (GtkMusicPiano $self)
  returns gushort
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_labels_position (GtkMusicPiano $self)
  returns GtkMusicPianoLabelPosition
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_nat_key_color (GtkMusicPiano $self, GdkRGBA $result)
  is native(music)
  is export
{ * }

sub gtk_music_piano_get_show_labels (GtkMusicPiano $self)
  returns uint32
  is native(music)
  is export
{ * }

sub gtk_music_piano_label_position_get_type ()
  returns GType
  is native(music)
  is export
{ * }

sub gtk_music_piano_mark_midi (
  GtkMusicPiano $self,
  gushort       $midi_note,
  GdkRGBA       $color
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_mark_note (GtkMusicPiano $self, Str $note, GdkRGBA $color)
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_construct (GType $object_type)
  returns GtkMusicPianoMarkedNoteStyle
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_construct_with_color (
  GType   $object_type,
  GdkRGBA $color
)
  returns GtkMusicPianoMarkedNoteStyle
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_get_color (
  GtkMusicPianoMarkedNoteStyle $self,
  GdkRGBA                      $result
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_get_type ()
  returns GType
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_new ()
  returns GtkMusicPianoMarkedNoteStyle
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_new_with_color (GdkRGBA $color)
  returns GtkMusicPianoMarkedNoteStyle
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_ref (
  GtkMusicPianoMarkedNoteStyle $instance
)
  returns GtkMusicPianoMarkedNoteStyle
  is native(music)
  is export
{ * }

sub gtk_music_piano_marked_note_style_unref (
  GtkMusicPianoMarkedNoteStyle $instance
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_midi_to_x (GtkMusicPiano $self, gushort $midi_code)
  returns gdouble
  is native(music)
  is export
{ * }

sub gtk_music_piano_new ()
  returns GtkMusicPiano
  is native(music)
  is export
{ * }

sub gtk_music_piano_param_spec_marked_note_style (
  Str         $name,
  Str         $nick,
  Str         $blurb,
  GType       $object_type,
  GParamFlags $flags
)
  returns GParamSpec
  is native(music)
  is export
{ * }

sub gtk_music_piano_point_to_midi (
  GtkMusicPiano           $self,
  gdouble                 $x,
  gdouble                 $y,
  CArray[Pointer[GError]] $error
)
  returns gushort
  is native(music)
  is export
{ * }

sub gtk_music_piano_redraw (GtkMusicPiano $self)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_accident_key_color (
  GtkMusicPiano $self,
  GdkRGBA       $value
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_auto_update (GtkMusicPiano $self, gboolean $value)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_detailed_labels (GtkMusicPiano $self, gboolean $value)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_first_note (GtkMusicPiano $self, gushort $value)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_key_count (GtkMusicPiano $self, gushort $value)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_labels_position (
  GtkMusicPiano              $self,
  GtkMusicPianoLabelPosition $value
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_nat_key_color (GtkMusicPiano $self, GdkRGBA $value)
  is native(music)
  is export
{ * }

sub gtk_music_piano_set_show_labels (GtkMusicPiano $self, gboolean $value)
  is native(music)
  is export
{ * }

sub gtk_music_piano_unmark_all (GtkMusicPiano $self)
  is native(music)
  is export
{ * }

sub gtk_music_piano_unmark_midi (GtkMusicPiano $self, gushort $midi_note)
  is native(music)
  is export
{ * }

sub gtk_music_piano_unmark_note (GtkMusicPiano $self, Str $note)
  is native(music)
  is export
{ * }

sub gtk_music_piano_value_get_marked_note_style (GValue $value)
  returns Pointer
  is native(music)
  is export
{ * }

sub gtk_music_piano_value_set_marked_note_style (
  GValue   $value,
  gpointer $v_object
)
  is native(music)
  is export
{ * }

sub gtk_music_piano_value_take_marked_note_style (
  GValue   $value,
  gpointer $v_object
)
  is native(music)
  is export
{ * }

sub gtk_music_value_get_guitar_string (GValue $value)
  returns Pointer
  is native(music)
  is export
{ * }

sub gtk_music_value_set_guitar_string (GValue $value, gpointer $v_object)
  is native(music)
  is export
{ * }

sub gtk_music_value_take_guitar_string (GValue $value, gpointer $v_object)
  is native(music)
  is export
{ * }
