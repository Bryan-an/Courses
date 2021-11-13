package jlayeredpane;

import javax.swing.*;
import java.awt.*;

public class MyLayered extends JFrame {

    //Panes
    JLayeredPane layeredPane;

    //Labels
    JLabel label1;
    JLabel label2;
    JLabel label3;

    public MyLayered() {
        initComponents();
        configureFrame();
        configureComponents();
        addComponents();
    }

    public void initComponents() {
        layeredPane = new JLayeredPane();
        label1 = new JLabel();
        label2 = new JLabel();
        label3 = new JLabel();
    }

    public void configureFrame() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(new Dimension(500, 500));
        setLayout(null);
    }

    public void configureComponents() {
        layeredPane.setBounds(0, 0, 500, 500);

        label1.setOpaque(true);
        label1.setBackground(Color.RED);
        label1.setBounds(50, 50, 200, 200);

        label2.setOpaque(true);
        label2.setBackground(Color.GREEN);
        label2.setBounds(100, 100, 200, 200);

        label3.setOpaque(true);
        label3.setBackground(Color.BLUE);
        label3.setBounds(150, 150, 200, 200);
    }

    public void addComponents() {
        add(layeredPane);

        layeredPane.add(label1, Integer.valueOf(0));
        layeredPane.add(label2, Integer.valueOf(2));
        layeredPane.add(label3, Integer.valueOf(1));
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MyLayered().setVisible(true));
    }
}
