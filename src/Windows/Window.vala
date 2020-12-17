namespace App.Windows {
    public class Window : Gtk.ApplicationWindow {
        public Window (Gtk.Application app) {
            Object (
                application: app,
                resizable: false
            );

            set_size_request (550, 700);
        }
    }
}
