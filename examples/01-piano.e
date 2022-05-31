use v6.c;

use GTK::Music::Raw::Types;

use GDK::RGBA;
use GTK::Music::Piano;
use Dazzle::Application;

my $a = Dazzle::Application.new('org.genex.gtk.music.piano');

$a.activate.tap( -> *@a {
  my $p = GTK::Music::Piano.new;

  $p.add-events(GDK_BUTTON_PRESS_MASK +| GDK_BUTTON_RELEASE_MASK);

  $p.set-key-count($p.get-key-count * 2);

  $p.note-pressed.tap( -> *@a {
    CATCH { default { .message.say; .backtrace.concise.say } }

    my ($event, $key) = @a[1, 2];

    say "You clicked key { $key }";

    $event.button == 1 ?? $p.mark-midi($key)
                       !! $p.unmark-midi($key);
  });

  $p.mark-midi(50);
  $p.mark-midi( 51, GDK::RGBA.new(0.4, 0, 0, 1) );
  $p.mark-midi(36);
  $p.mark-midi(59);

  $a.window.add($p);
  $a.window.show-all;
});

$a.run;
