namespace App.Widgets {
    public class HeaderBar : Gtk.HeaderBar {
        private Gtk.Button about;

        public HeaderBar () {
            Object(
                title: "Timepaper",
                subtitle: "NOW WITH A TIMER!!!",  // TODO: Add stupid messages randomly generated
                show_close_button: true
            );

            about = build_header_button ("insert-image-symbolic");
            pack_start (about);
        }

        private Gtk.Button build_header_button (string icon_name, string description) {
            var button = new Gtk.Button () {
                can_focus = false,
                var image = Gtk.Image.from_icon_name (icon_name, Gtk.IconSIze.BUTTON),
                image.margin = 3,
                set_tooltip_markup (description),
                add (image),
            };

            return button;
        }
    }
}
