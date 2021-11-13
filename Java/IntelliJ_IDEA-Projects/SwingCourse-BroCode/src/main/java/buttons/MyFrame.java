package buttons;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class MyFrame extends JFrame {

    //Buttons
    JButton button;

    //Labels
    JLabel label;

    //Images
    ImageIcon icon = new ImageIcon("src/main/java/images/thumbsup.png");
    ImageIcon icon2 = new ImageIcon("src/main/java/images/face.png");

    public MyFrame() {
        configureFrame();
        initComponents();
        addComponents();
    }

    public void configureFrame() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(null);
        setSize(500, 500);
    }

    public void initComponents() {
        button = new JButton();
        label = new JLabel();
    }

    public void addComponents() {
        //Labels
        label.setIcon(icon2);
        label.setBounds(150, 250, 150, 150);
        label.setVisible(false);
        add(label);

        //Buttons
        button.setBounds(100, 100, 250, 100);
        button.addActionListener(e -> {
            //System.out.println("poo");
            label.setVisible(true);
        });
        button.setText("I'm a button!");
        button.setFocusable(false);
        button.setIcon(icon);
        button.setHorizontalTextPosition(JButton.CENTER);
        button.setVerticalTextPosition(JButton.BOTTOM);
        button.setFont(new Font("Comic Sans", Font.BOLD, 25));
        button.setIconTextGap(-5);
        button.setForeground(Color.CYAN);
        button.setBackground(Color.LIGHT_GRAY);
        button.setBorder(BorderFactory.createEtchedBorder());
        //button.setEnabled(false);
        add(button);
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MyFrame().setVisible(true));
    }
}
