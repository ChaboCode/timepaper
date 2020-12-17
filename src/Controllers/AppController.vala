using App.Windows;

namespace App.Controllers {
    public class AppController {
        private Gtk.ApplicationWindow window;
        private Gtk.Application application;
        private Gtk.Box box_stack;
        private App.Widgets.HeaderBar header_bar;

        private Gtk.Button __;

        public AppController (Gtk.Application application) {
            this.application = application;

            window = new Window (this.application);

            // Header bar
            header_bar = new App.Widgets.HeaderBar ();
            window.set_titlebar (this.header_bar);

            box_stack = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);

            __ = new Gtk.Button.with_label ("XD");
            box_stack.add (__);

            window.add (box_stack);
        }

        public void activate () {
            window.show_all ();
        }

        public void quit () {
            window.destroy ();
        }
    }
}
