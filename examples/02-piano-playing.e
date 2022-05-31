use v6.c;

use GTK::Music::Raw::Types;

use GDK::RGBA;
use GTK::Music::Piano;
use Dazzle::Application;

use FluidSynth::Raw::Definitions;

use FluidSynth::Audio;
use FluidSynth::Sequencer;
use FluidSynth::Settings;
use FluidSynth::Synth;

my $a = Dazzle::Application.new('org.genex.gtk.music.piano');

die 'Failed to create the settings!'
  unless (my $settings = FluidSynth::Settings.new);

die 'Failed to create the synth!'
  unless ( my $synth = FluidSynth::Synth.new($settings) );

my $sfont = 'example.sf2';
$sfont = "examples/{ $sfont }" unless $sfont.IO.e;
#my $sfont = '/usr/share/sounds/sf2/FluidR3_GM.sf2';
die "Loading the SoundFont '{ $sfont }', failed!"
  if ( my $sfid = $synth.sfload($sfont, 1) ) == FLUID_FAILED;

die 'Failed to create the audio driver!'
  unless ( my $adriver  = FluidSynth::Audio.new($settings, $synth) );

$a.activate.tap( -> *@a {
  my $p = GTK::Music::Piano.new;

  $p.add-events(GDK_BUTTON_PRESS_MASK +| GDK_BUTTON_RELEASE_MASK);

  $p.set-key-count($p.get-key-count * 2);

  $p.note-pressed.tap( -> *@a {
    CATCH { default { .message.say; .backtrace.concise.say } }

    my ($event, $key) = @a[1, 2];

    say "You pressed key { $key }";

    $synth.noteon(0, $key, 80);

    $p.mark-midi($key) if $event.button == 1;

  });

  $p.note-released.tap( -> *@a {
    CATCH { default { .message.say; .backtrace.concise.say } }

    my ($event, $key) = @a[1, 2];

    say "You released key { $key }";

    $p.unmark-midi($key) if $event.button == 1;

    $synth.noteoff(0, $key);
  });

  $a.window.add($p);
  $a.window.show-all;
});

$a.run;
