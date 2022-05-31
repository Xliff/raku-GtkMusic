use v6.c;

use NativeCall;

use Gee::Raw::Definitions;
use Gee::Raw::Structs;
use GTK::Raw::Definitions;

use GLib::Roles::Pointers;

unit package GTK::Music::Raw::Definitions;

# When compile from source on Debian. Given it's lack of presense on
# Ubuntu, we might need to maintain a deb repo.
constant music is export = 'gtkmusic',v0;

class GtkMusicGuitarMarkedNoteStyle is repr<CPointer> does GLib::Roles::Pointers is export { }
class GtkMusicPianoMarkedNoteStyle  is repr<CPointer> does GLib::Roles::Pointers is export { }
class GtkMusicPianoMarkedNoteValue  is repr<CPointer> does GLib::Roles::Pointers is export { }

class GtkMusicGuitar does GLib::Roles::Pointers is repr<CStruct> is export {
        has GtkDrawingArea        $!parent_instance;
        has Pointer               $!priv           ;
        has GeeHashMap            $!marked_notes   ;
}

class GtkMusicPiano does GLib::Roles::Pointers is repr<CStruct> is export {
        has GtkDrawingArea       $!parent_instance;
        has Pointer              $!priv           ;
        has GeeHashMap           $!marked_notes   ;
}
