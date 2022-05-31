use v6.c;

use GLib::Raw::Exports;
use ATK::Raw::Exports;
use Pango::Raw::Exports;
use GIO::Raw::Exports;
use GDK::Raw::Exports;
use GTK::Raw::Exports:ver<3.0.1146>;
use GTK::Music::Raw::Exports;

my constant forced = 0;

unit package GTK::Music::Raw::Types;

need Cairo;
need GLib::Raw::Definitions;
need GLib::Raw::Enums;
need GLib::Raw::Exceptions;
need GLib::Raw::Object;
need GLib::Raw::Structs;
need GLib::Raw::Struct_Subs;
need GLib::Raw::Subs;
need GLib::Roles::Pointers;
need ATK::Raw::Definitions;
need ATK::Raw::Enums;
need ATK::Raw::Structs;
need Pango::Raw::Definitions;
need Pango::Raw::Enums;
need Pango::Raw::Structs;
need Pango::Raw::Subs;
need GIO::DBus::Raw::Types;
need GIO::Raw::Definitions;
need GIO::Raw::Enums;
need GIO::Raw::Quarks;
need GIO::Raw::Structs;
need GIO::Raw::Subs;
need GDK::Raw::Definitions;
need GDK::Raw::Enums;
need GDK::Raw::Structs;
need GDK::Raw::Subs;
need GTK::Raw::Definitions:ver<3>;
need GTK::Raw::Enums:ver<3>;
need GTK::Raw::Structs:ver<3>;
need GTK::Raw::Subs:ver<3>;
need GTK::Raw::Requisition:ver<3>;
need GTK::Music::Raw::Definitions;
need GTK::Music::Raw::Enums;

BEGIN {
  glib-re-export($_) for |@glib-exports,
                         |@atk-exports,
                         |@pango-exports,
                         |@gio-exports,
                         |@gdk-exports,
                         |@gtk-exports,
                         |@gtk-music-exports;
}
