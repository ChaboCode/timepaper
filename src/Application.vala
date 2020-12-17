using App.Controllers;

namespace App {
    public class Application : Granite.Application {

    public AppController controller;

        public Application () {
            Object (
                application_id: "com.github.ChaboCode.Timepaper",
                flags: ApplicationFlags.FLAGS_NONE
            );

            var quit_action = new SimpleAction ("quit", null);
            quit_action.activate.connect (() => {
                if (controller != null) {
                    controller.quit ();
                }
            });
        }

        protected override void activate () {
            if (controller == null) {
                controller = new AppController(this);
            }

            controller.activate ();
        }
    }
}
