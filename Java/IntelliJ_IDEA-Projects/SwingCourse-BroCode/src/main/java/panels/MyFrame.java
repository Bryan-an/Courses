package panels;

import javax.swing.*;
import java.awt.*;

public class MyFrame extends JFrame {

    //Components
    //Panels
    private JPanel redPanel;
    private JPanel bluePanel;
    private JPanel greenPanel;

    //Labels
    private JLabel label;

    //Images
    private ImageIcon icon = new ImageIcon("src/main/java/images/thumbsup.png");

    public MyFrame() {
        initComponents();
        configureFrame();
        addComponents();
    }

    public void initComponents() {
        redPanel = new JPanel();
        bluePanel = new JPanel();
        greenPanel = new JPanel();
        label = new JLabel();
    }

    public void configureFrame() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(null);
        setSize(750, 700);
    }

    public void addComponents() {
        //Panels
        redPanel.setBackground(Color.RED);
        redPanel.setBounds(0, 0, 250, 250);
        redPanel.setLayout(null);
        add(redPanel);

        bluePanel.setBackground(Color.BLUE);
        bluePanel.setBounds(250, 0, 250, 250);
        bluePanel.setLayout(null);
        add(bluePanel);

        greenPanel.setBackground(Color.GREEN);
        greenPanel.setBounds(0, 250, 500, 250);
        greenPanel.setLayout(null);
        add(greenPanel);

        //Labels
        label.setText("Hi");
        label.setIcon(icon);
        //label.setVerticalAlignment(JLabel.BOTTOM);
        //label.setHorizontalAlignment(JLabel.RIGHT);
        label.setBounds(100, 100, 84, 64);
        greenPanel.add(label);
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MyFrame().setVisible(true));
    }
}
