package labels;

import frames.Main;

import javax.swing.*;
import java.awt.*;

public class MyFrame extends JFrame {

    //JLabel = a GUI display area for a string of text, an image, or both
    public MyFrame() {
        configureFrame();
        addComponents();
    }

    public void configureFrame() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //setSize(500, 500);
        //setLayout(null);
    }

    public void addComponents() {
        JLabel label = new JLabel(); //create a label
        label.setText("Bro, do you even code?"); //set text of label
        label.setIcon(new ImageIcon("src/main/java/images/dude.png"));
        label.setHorizontalTextPosition(JLabel.CENTER); //set text LEFT, CENTER, RIGHT OF imageicon
        label.setVerticalTextPosition(JLabel.TOP); //set text TOP, CENTER, BOTTOM of imageicon
        label.setForeground(new Color(0x00FF00)); //Font color: hexadecimal green
        label.setFont(new Font("MV Boli", Font.PLAIN, 50)); //set font of text
        label.setIconTextGap(10); //set gap of text to image
        label.setBackground(Color.BLACK); //set Background color
        label.setOpaque(true); //display background color
        label.setBorder(BorderFactory.createLineBorder(Color.GREEN, 3));
        label.setVerticalAlignment(JLabel.CENTER); //set vertical position of icon+text within label
        label.setHorizontalAlignment(JLabel.CENTER); //set horizontal position of icon+text within label
        //label.setBounds(0, 0, 400, 400); //set x,y position within frame as well as dimensions
        add(label); //add label to frame
        pack();
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            new MyFrame().setVisible(true);
        });
    }
}
