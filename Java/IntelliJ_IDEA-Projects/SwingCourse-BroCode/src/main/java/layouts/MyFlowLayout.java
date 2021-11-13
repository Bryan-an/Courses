package layouts;

import javax.swing.*;
import java.awt.*;

public class MyFlowLayout extends JFrame {

    //Panels
    JPanel panel;

    public MyFlowLayout() {
        initComponents();
        configureFrame();
        configureComponents();
        addComponents();
    }

    public void initComponents() {
        panel = new JPanel();
    }

    public void configureFrame() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500, 500);
        setLayout(new FlowLayout(FlowLayout.CENTER, 10, 10));
    }

    public void configureComponents() {
        panel.setPreferredSize(new Dimension(100, 250));
        panel.setBackground(Color.LIGHT_GRAY);
        panel.setLayout(new FlowLayout());
    }

    public void addComponents() {
        panel.add(new JButton("1"));
        panel.add(new JButton("2"));
        panel.add(new JButton("3"));
        panel.add(new JButton("4"));
        panel.add(new JButton("5"));
        panel.add(new JButton("6"));
        panel.add(new JButton("7"));
        panel.add(new JButton("8"));
        panel.add(new JButton("9"));

        add(panel);
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MyFlowLayout().setVisible(true));
    }
}
