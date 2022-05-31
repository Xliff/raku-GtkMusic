use v6.c;

use NativeCall;

use GLib::Raw::ReturnedValue;

use GTK::Music::Raw::Types;

role GTK::Music::Roles::Signals::Piano {
  has %!signals-gmp;

  # GtkMusicPiano, GdkEventButton, ushort
  method connect-note (
    $obj,
    $signal,
    &handler?
  ) {
    my $hid;
    %!signals-gmp{$signal} //= do {
      my \𝒮 = Supplier.new;
      $hid = g-connect-note($obj.p, $signal,
        -> $, $eb, $n {
          CATCH {
            default { 𝒮.note($_) }
          }

          𝒮.emit( [self, $eb, $n] );
        },
        Pointer, 0
      );
      [ 𝒮.Supply, $obj, $hid ];
    };
    %!signals-gmp{$signal}[0].tap(&handler) with &handler;
    %!signals-gmp{$signal}[0];
  }

}

# GtkMusicPiano, GdkEventButton, gushort
sub g-connect-note (
  Pointer $app,
  Str     $name,
          &handler (Pointer, GdkEventButton, uint32),
  Pointer $data,
  uint32  $flags
)
  returns uint64
  is native(gobject)
  is symbol('g_signal_connect_object')
{ * }
