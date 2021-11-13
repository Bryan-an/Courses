package layouts;

import javax.swing.*;
import java.awt.*;

public class MyGridLayout extends JFrame {

    public MyGridLayout() {
        initComponents();
        configureFrame();
        addComponents();
    }

    public void initComponents() {

    }

    public void configureFrame() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500, 500);
        setLayout(new GridLayout(3, 3, 10, 10));
    }

    public void addComponents() {
        add(new JButton("1"));
        add(new JButton("2"));
        add(new JButton("3"));
        add(new JButton("4"));
        add(new JButton("5"));
        add(new JButton("6"));
        add(new JButton("7"));
        add(new JButton("8"));
        add(new JButton("9"));
        add(new JButton("10"));
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MyGridLayout().setVisible(true));
    }
}
