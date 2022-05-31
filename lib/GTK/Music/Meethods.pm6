method guitar_marked_note_style_get_type {
  gtk_music_guitar_marked_note_style_get_type();
}

method guitar_marked_note_style_ref (gpointer $instance) {
  gtk_music_guitar_marked_note_style_ref($instance);
}

method guitar_marked_note_style_unref (gpointer $instance) {
  gtk_music_guitar_marked_note_style_unref($instance);
}

method guitar_param_spec_marked_note_style (Str $name, Str $nick, Str $blurb, GType $object_type, GParamFlags $flags) {
  gtk_music_guitar_param_spec_marked_note_style($name, $nick, $blurb, $object_type, $flags);
}

method guitar_string_get_type {
  gtk_music_guitar_string_get_type();
}

method guitar_string_ref (gpointer $instance) {
  gtk_music_guitar_string_ref($instance);
}

method guitar_string_unref (gpointer $instance) {
  gtk_music_guitar_string_unref($instance);
}

method guitar_value_get_marked_note_style (GValue $value) {
  gtk_music_guitar_value_get_marked_note_style($value);
}

method guitar_value_set_marked_note_style (GValue $value, gpointer $v_object) {
  gtk_music_guitar_value_set_marked_note_style($value, $v_object);
}

method guitar_value_take_marked_note_style (GValue $value, gpointer $v_object) {
  gtk_music_guitar_value_take_marked_note_style($value, $v_object);
}

method param_spec_guitar_string (Str $name, Str $nick, Str $blurb, GType $object_type, GParamFlags $flags) {
  gtk_music_param_spec_guitar_string($name, $nick, $blurb, $object_type, $flags);
}

method value_get_guitar_string (GValue $value) {
  gtk_music_value_get_guitar_string($value);
}

method value_set_guitar_string (GValue $value, gpointer $v_object) {
  gtk_music_value_set_guitar_string($value, $v_object);
}

method value_take_guitar_string (GValue $value, gpointer $v_object) {
  gtk_music_value_take_guitar_string($value, $v_object);
}
