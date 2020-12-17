public class Main {
    public static int main (string[] args) {
        Gtk.init(ref args);
        var app = new App.Application ();
        return app.run (args);
    }
}
