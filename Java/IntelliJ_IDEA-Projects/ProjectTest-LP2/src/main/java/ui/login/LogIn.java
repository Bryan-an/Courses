package ui.login;

import javax.swing.*;
import java.awt.*;

public class LogIn extends JFrame {

    private JPanel mainPanel;

    public LogIn() {
        initComponents();
        configureFrame();
        addComponents();
    }

    public void initComponents() {
        mainPanel = new LogInPanel();
    }

    public void configureFrame() {
        setSize(333, 500);
        setResizable(false);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
    }

    public void addComponents() {
        add(mainPanel);
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new LogIn().setVisible(true));
    }
}
