using Fabric;

namespace Fabric.Toys.Hello {
	class MainLayout : UI.ScrollingPage {
		construct {
			header.label = "Hello";
			var label = new Gtk.Label("Hello, World!") {
				hexpand = true,
				vexpand = true,
			};
			this.append(label);
		}
	}

	class Application : UI.Application {
		construct {
			application_id = "fabric.toys.hello";
		}

		protected override void activate() {
			UI.PagesContainer.instance.push(new MainLayout());
			new UI.PagedWindow() {
				title = "Hello",
				application = this,
			}.present();
		}
	}

	public static int main(string[] args) {
		return (new Application()).run(args);
	}
}
