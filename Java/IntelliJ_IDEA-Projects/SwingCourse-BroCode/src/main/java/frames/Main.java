package frames;

import javax.swing.*;
import java.awt.*;

public class Main extends JFrame {

    public Main() {
        configureFrame();
    }

    public void configureFrame() {
        setSize(420, 420); //sets the x-dimension, and y-dimension of frame
        setTitle("JFrame title goes here"); //sets title of frame
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //exit out of application
        setResizable(false); //prevent frame from being resized

        getContentPane().setBackground(Color.GREEN); //Change color of frame background
        getContentPane().setBackground(new Color(123, 50, 250));
        getContentPane().setBackground(new Color(0x123456)); //hexadecimal

        setIconImage(new ImageIcon("src/main/java/images/icon.jpg")
                .getImage()); //change icon of frame
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            new Main().setVisible(true); //make frame visible
        });
    }
}
