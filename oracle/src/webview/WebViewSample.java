package webview;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.concurrent.Worker.State;
import javafx.scene.Scene;
import javafx.scene.image.ImageView;
import javafx.scene.layout.Region;
import javafx.scene.paint.Color;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;
import netscape.javascript.JSObject;

public class WebViewSample extends Application {

	private Scene scene;

	@Override
	public void start(Stage stage) {
		// create scene
		stage.setTitle("Web View - " + System.getProperty("java.version"));
		scene = new Scene(new Browser(), 750, 500, Color.web("#666970"));
		stage.setScene(scene);
		// show stage
		stage.show();
	}

	public static void main(String[] args) {
		launch(args);
	}
}

class Browser extends Region {
	final ImageView selectedImage = new ImageView();
	final WebView browser = new WebView();
	final WebEngine webEngine = browser.getEngine();

	public Browser() {
		// apply the styles
		getStyleClass().add("browser");

		// process page loading
		webEngine.getLoadWorker().stateProperty().addListener(new ChangeListener<State>() {
			@Override
			public void changed(ObservableValue<? extends State> ov, State oldState, State newState) {
				if (newState == State.SUCCEEDED) {
					JSObject win = (JSObject) webEngine.executeScript("window");
					win.setMember("app", new JavaApp());
					System.out.print(System.getProperty("java.version") + " - ");
				}
			}
		});

		// load the home page
		webEngine.load("http://localhost:8000/index.html");

		// add components
		getChildren().add(browser);
	}

	// JavaScript interface object
	public class JavaApp {
		public void exit() {
			Platform.exit();
		}

		public void log(String s) {
			System.out.println(s);
		}
	}
	
	@Override
	protected double computePrefWidth(double height) {
		return 750;
	}

	@Override
	protected double computePrefHeight(double width) {
		return 600;
	}
}