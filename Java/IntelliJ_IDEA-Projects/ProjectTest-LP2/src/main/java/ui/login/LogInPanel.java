package ui.login;

import ui.components.Icons;

import javax.swing.*;
import java.awt.*;

public class LogInPanel extends JPanel {

    private JLabel logInTitle;

    public LogInPanel() {
        initComponents();
        configurePanel();
        configureComponents();
        addComponents();
    }

    public void initComponents() {
        logInTitle = new JLabel();
    }

    public void configurePanel() {
        setLayout(new GridLayout(8, 1, 10, 10));
    }

    public void configureComponents() {
        logInTitle.setText("INICIAR SESIÓN");
        logInTitle.setHorizontalAlignment(JLabel.CENTER);
    }

    public void addComponents() {
        add(logInTitle);
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        g.drawImage(Icons.LOG_IN_BACKGROUND.getImage(), 0, 0, this);
    }
}
