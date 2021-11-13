package jframe;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.RoundRectangle2D;

public final class Window extends JFrame {

    //Fields
    //Panels
    private JPanel mainPanel;

    //Labels
    private JLabel lbl_title;

    //MenuBar
    private JMenuBar menuBar;

    //Menus
    private JMenu mnu_file;
    private JMenu mnu_edit;
    private JMenu mnu_view;
    private JMenu mnu_about;

    //MenuItems
    private JMenuItem itm_new;
    private JMenuItem itm_save;
    private JMenuItem itm_settings;

    //Buttons
    private JButton btn_exit;
    private JButton btn_minimize;

    //Others
    private Point initialClick;

    /**
     * Constructor of Window class.
     */
    public Window() {
        configureWindow();
        initComponents();
        configurePanels();
        configureLabels();
        configureMenus();
        configureButtons();
    }

    public void configureWindow() {
        setTitle("Window");
        setSize(800, 500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setResizable(false);
        setLocationRelativeTo(null);

        //Set window's shape
        setUndecorated(true);
        setShape(new RoundRectangle2D.Double(0, 0, getWidth(),
                getHeight(), 20, 20));
    }

    public void initComponents() {
        mainPanel = new JPanel();
        lbl_title = new JLabel();
        menuBar = new JMenuBar();
        mnu_file = new JMenu();
        mnu_edit = new JMenu();
        mnu_view = new JMenu();
        mnu_about = new JMenu();
        itm_new = new JMenuItem();
        itm_save = new JMenuItem();
        itm_settings = new JMenuItem();
        btn_exit = new JButton();
        btn_minimize = new JButton();
    }

    public void configurePanels() {
        configureMainPanel();
    }

    public void configureMainPanel() {
        mainPanel.setBackground(new Color(245, 245, 245));
        mainPanel.setLayout(new BorderLayout());
        getContentPane().add(mainPanel);
    }

    public void configureLabels() {
        configureTitleLabel();
    }

    public void configureTitleLabel() {
        lbl_title.setText("This is the title");
        lbl_title.setFont(new Font("Arial", Font.BOLD, 20));
        lbl_title.setForeground(new Color(0x23AAD2));
        lbl_title.setHorizontalAlignment(JLabel.CENTER);
        mainPanel.add(lbl_title, BorderLayout.NORTH);
    }

    public void configureMenus() {
        configureMenuBar();
        configureFileMenu();
        configureEditMenu();
        configureViewMenu();
        configureAboutMenu();
    }

    public void configureMenuBar() {
        setJMenuBar(menuBar);

        menuBar.addMouseListener(new MouseAdapter() {
            @Override
            public void mousePressed(MouseEvent e) {
                initialClick = e.getPoint();
            }

        });

        menuBar.addMouseMotionListener(new MouseMotionAdapter() {
            @Override
            public void mouseDragged(MouseEvent e) {
                // get location of Window
                int thisX = getLocation().x;
                int thisY = getLocation().y;

                // Determine how much the mouse moved since the initial click
                int xMoved = e.getX() - initialClick.x;
                int yMoved = e.getY() - initialClick.y;

                // Move window to this position
                int X = thisX + xMoved;
                int Y = thisY + yMoved;
                setLocation(X, Y);
            }
        });
    }

    public void configureFileMenu() {
        mnu_file.setText("File");
        mnu_file.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        itm_new.setText("New");
        itm_new.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        itm_save.setText("Save");
        itm_save.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        itm_settings.setText("Settings");
        itm_settings.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        mnu_file.add(itm_new);
        mnu_file.add(itm_save);
        mnu_file.add(itm_settings);
        menuBar.add(mnu_file);
    }

    public void configureEditMenu() {
        mnu_edit.setText("Edit");
        mnu_edit.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        menuBar.add(mnu_edit);
    }

    public void configureViewMenu() {
        mnu_view.setText("View");
        mnu_view.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        menuBar.add(mnu_view);
    }

    public void configureAboutMenu() {
        mnu_about.setText("About");
        mnu_about.setFont(new Font("Comic Sans MS", Font.PLAIN, 12));
        menuBar.add(mnu_about);
    }

    public void configureButtons() {
        configureMinimizeButton();
        configureExitButton();
    }

    public void configureMinimizeButton() {
        btn_minimize.setBorder(null);
        btn_minimize.setContentAreaFilled(false);
        btn_minimize.setFocusPainted(false);
        btn_minimize.setBorderPainted(false);
        btn_minimize.setIcon(new ImageIcon(
                "src/main/java/jframe/images/minimizeIcon.png"));

        btn_minimize.addActionListener(e -> setExtendedState(JFrame.ICONIFIED));
        menuBar.add(Box.createHorizontalGlue());
        menuBar.add(btn_minimize);
    }

    public void configureExitButton() {
        btn_exit.setIcon(new ImageIcon(
                "src/main/java/jframe/images/CloseIcon.png"));

        btn_exit.setRolloverIcon(new ImageIcon(
                "src/main/java/jframe/images/CloseRolloverIcon.png"));

        btn_exit.setPreferredSize(new Dimension(30, 30));
        btn_exit.setContentAreaFilled(false);
        btn_exit.setFocusPainted(false);
        btn_exit.setBorderPainted(false);
        btn_exit.addActionListener(e -> System.exit(0));

        menuBar.add(btn_exit);
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new Window().setVisible(true));
    }
}
