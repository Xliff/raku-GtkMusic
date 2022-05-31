use v6.c;

use Method::Also;

use NativeCall;

use GTK::Music::Raw::Types;
use GTK::Music::Raw::Defs;

use GDK::RGBA;

use GLib::Value;
use Gee::HashSet;
use GTK::DrawingArea;

use GTK::Music::Roles::Signals::Piano;

our subset GtkMusicPianoAncestry is export of Mu
  where GtkMusicPiano | GtkDrawingAreaAncestry;

class GTK::Music::Piano is GTK::DrawingArea {
  also does GTK::Music::Roles::Signals::Piano;

  has GtkMusicPiano $!gmp is implementor;

  submethod BUILD ( :$gtk-music-piano ) {
    self.setGtkMusicPiano($gtk-music-piano) if $gtk-music-piano;
  }

  method setGtkMusicPiano (GtkMusicPianoAncestry $_) {
    my $to-parent;

    $!gmp = do {
      when GtkMusicPiano {
        $to-parent = cast(GtkDrawingArea, $_);
        $_;
      }

      default {
        $to-parent = $_;
        cast(GtkMusicPiano, $_);
      }
    }
    self.setGtkDrawingArea($to-parent);
  }

  method GTK::Music::Raw::Definitions::GtkMusicPiano
    is also<GtkMusicPiano>
  { $!gmp }

  multi method new (GtkMusicPianoAncestry $gtk-music-piano, :$ref = True) {
    return Nil unless $gtk-music-piano;

    my $o = self.bless( :$gtk-music-piano );
    $o.ref if $ref;
    $o;
  }
  multi method new {
    my $gtk-music-piano = gtk_music_piano_new();

    $gtk-music-piano ?? self.bless( :$gtk-music-piano ) !! Nil;
  }

  method note-pressed is also<note_pressed> {
    self.connect-note($!gmp, 'note-pressed');
  }

  method note-released is also<note_released> {
    self.connect-note($!gmp, 'note-released');
  }

  method construct (Int() $object_type) {
    my GType $o = $object_type;

    my $gtk-music-piano = gtk_music_piano_construct($o);

    $gtk-music-piano ?? self.bless( :$gtk-music-piano ) !! Nil;
  }

  method find_positions (Str() $note, :$raw = False) is also<find-positions> {
    propReturnObject(
      gtk_music_piano_find_positions($!gmp, $note),
      $raw,
      |Gee::HashSet.getTypePair
    );
  }

  method get_accident_key_color (GdkRGBA() $result)
    is also<get-accident-key-color>
  {
    gtk_music_piano_get_accident_key_color($!gmp, $result);
  }

  method get_auto_update is also<get-auto-update> {
    so gtk_music_piano_get_auto_update($!gmp);
  }

  method get_detailed_labels is also<get-detailed-labels> {
    gtk_music_piano_get_detailed_labels($!gmp);
  }

  method get_first_note is also<get-first-note> {
    gtk_music_piano_get_first_note($!gmp);
  }

  method get_key_count is also<get-key-count> {
    gtk_music_piano_get_key_count($!gmp);
  }

  method get_labels_position is also<get-labels-position> {
    gtk_music_piano_get_labels_position($!gmp);
  }

  method get_nat_key_color (GdkRGBA() $result) is also<get-nat-key-color> {
    gtk_music_piano_get_nat_key_color($!gmp, $result);
  }

  method get_show_labels is also<get-show-labels> {
    so gtk_music_piano_get_show_labels($!gmp);
  }

  method label_position_get_type is also<label-position-get-type> {
    gtk_music_piano_label_position_get_type();
  }

  proto method mark_midi (|)
    is also<mark-midi>
  { * }

  multi method mark_midi (Int() $midi_note) {
    samewith( $midi_note, GDK::RGBA(1, 1, 1, 1) );
  }
  multi method mark_midi (Int() $midi_note, GdkRGBA() $color)  {
    my gushort $m = $midi_note;

    gtk_music_piano_mark_midi($!gmp, $m, $color);
  }

  method mark_note (Str() $note, GdkRGBA $color) is also<mark-note> {
    gtk_music_piano_mark_note($!gmp, $note, $color);
  }

  method midi_to_x (Int() $midi_code) is also<midi-to-x> {
    my gushort $m = $midi_code;

    gtk_music_piano_midi_to_x($!gmp, $m);
  }

  method point_to_midi (
    Num()                   $x,
    Num()                   $y,
    CArray[Pointer[GError]] $error = gerror
  ) {
    my gdouble ($xx, $yy) = ($x, $y);

    clear_error;
    my $rv = gtk_music_piano_point_to_midi($!gmp, $x, $y, $error);
    set_error($error);
    $rv;
  }

  method redraw {
    gtk_music_piano_redraw($!gmp);
  }

  method set_accident_key_color (GdkRGBA() $value)
    is also<set-accident-key-color>
  {
    gtk_music_piano_set_accident_key_color($!gmp, $value);
  }

  method set_auto_update (Int() $value) is also<set-auto-update> {
    my gboolean $v = $value;

    gtk_music_piano_set_auto_update($!gmp, $v);
  }

  method set_detailed_labels (Int() $value) is also<set-detailed-labels> {
    my gboolean $v = $value;

    gtk_music_piano_set_detailed_labels($!gmp, $v);
  }

  method set_first_note (Int() $value) is also<set-first-note> {
    my gushort $v = $value;

    gtk_music_piano_set_first_note($!gmp, $v);
  }

  method set_key_count (Int() $value) is also<set-key-count> {
    my gushort $v = $value;

    gtk_music_piano_set_key_count($!gmp, $v);
  }

  method set_labels_position (Int() $value) is also<set-labels-position> {
    my GtkMusicPianoLabelPosition $v = $value;

    gtk_music_piano_set_labels_position($!gmp, $v);
  }

  method set_nat_key_color (GdkRGBA() $value) is also<set-nat-key-color> {
    gtk_music_piano_set_nat_key_color($!gmp, $value);
  }

  method set_show_labels (Int() $value) is also<set-show-labels> {
    my gboolean $v = $value;

    gtk_music_piano_set_show_labels($!gmp, $v);
  }

  method unmark_all is also<unmark-all> {
    gtk_music_piano_unmark_all($!gmp);
  }

  method unmark_midi (gushort $midi_note) is also<unmark-midi> {
    my gushort $m = $midi_note;

    gtk_music_piano_unmark_midi($!gmp, $m);
  }

  method unmark_note (Str() $note) is also<unmark-note> {
    gtk_music_piano_unmark_note($!gmp, $note);
  }

}


class GTK::Music::Piano::MarkedNote::Style {
  has GtkMusicPianoMarkedNoteStyle $!gmpmns is implementor;

  method new {
    gtk_music_piano_marked_note_style_new();
  }

  method construct (GType $object_type) {
    gtk_music_piano_marked_note_style_construct($object_type);
  }

  method construct_with_color (
    GType $object_type,
    GdkRGBA $color
  ) {
    gtk_music_piano_marked_note_style_construct_with_color(
      $object_type,
      $color
    );
  }

  method get_color (
    GdkRGBA $result
  ) {
    gtk_music_piano_marked_note_style_get_color($!gmpmns, $result);
  }

  method get_type is also<get-type> {
    gtk_music_piano_marked_note_style_get_type();
  }

  method new_with_color (GdkRGBA $color) is also<new-with-color> {
    gtk_music_piano_marked_note_style_new_with_color($color);
  }

  method ref {
    gtk_music_piano_marked_note_style_ref($!gmpmns);
    self;
  }

  method unref {
    gtk_music_piano_marked_note_style_unref($!gmpmns);
  }
}

class GTK::Music::Piano::MarkedNote::Value is GLib::Value {
  has GtkMusicPianoMarkedNoteValue $!gmpmnv is implementor;

  method get_marked_note_style  is also<get-marked-note-style> {
    gtk_music_piano_value_get_marked_note_style(self.GValue);
  }

  method set_marked_note_style (gpointer $v_object)
    is also<set-marked-note-style>
  {
    gtk_music_piano_value_set_marked_note_style(self.GValue, $v_object);
  }

  method take_marked_note_style (gpointer $v_object)
    is also<take-marked-note-style>
  {
    gtk_music_piano_value_take_marked_note_style(self.GValue, $v_object);
  }

}


# method param_spec_marked_note_style (
#   Str         $name,
#   Str         $nick,
#   Str         $blurb,
#   GType       $object_type,
#   GParamFlags $flags
# ) {
#   gtk_music_piano_param_spec_marked_note_style($name, $nick, $blurb, $object_type, $flags);
# }
