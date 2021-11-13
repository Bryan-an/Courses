package test.javafxtest;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;

public class Controller {
    @FXML
    private Label title;
    @FXML
    private Label greeting;
    @FXML
    private Button button;

    public void printHello(ActionEvent event) {
        greeting.setText("Hello World");
    }
}