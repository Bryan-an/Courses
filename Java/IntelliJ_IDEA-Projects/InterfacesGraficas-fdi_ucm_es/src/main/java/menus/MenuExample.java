package menus;

import javax.swing.*;
import java.awt.*;

public final class MenuExample extends JFrame {

    //Fields
    //Menu bar
    private JMenuBar menuBar;

    //Menus
    private JMenu mnu_options;
    private JMenu mnu_submenu;

    //Menu items
    private JMenuItem itm_listStudents;
    private JMenuItem itm_submenuOption;

    //Panels
    private JPanel mainPanel;

    //Text fields
    private JTextField text;

    //Constructor
    public MenuExample() {
        configureWindow();
        initComponents();
        addComponents();
    }

    //Main method
    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MenuExample().setVisible(true));
    }

    //Methods
    public void configureWindow() {
        setSize(600, 500);
        setTitle("Menus");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
    }

    public void initComponents() {
        menuBar = new JMenuBar();
        mnu_options = new JMenu();
        mnu_submenu = new JMenu();
        itm_listStudents = new JMenuItem();
        itm_submenuOption = new JMenuItem();
        mainPanel = new JPanel();
        text = new JTextField();
    }

    public void addComponents() {
        configureMenuBar();
        configurePanel();
        configureTextField();
    }

    public void configureMenuBar() {
        setJMenuBar(menuBar);
        addMenus();
        addEventListeners();
    }

    public void addMenus() {
        mnu_options.setText("Options Menu");
        menuBar.add(mnu_options);

        itm_listStudents.setText("List the students");
        mnu_options.add(itm_listStudents);

        mnu_submenu.setText("Submenu");
        mnu_options.add(mnu_submenu);

        itm_submenuOption.setText("Submenu Option");
        mnu_submenu.add(itm_submenuOption);
    }

    public void addEventListeners() {
        itm_listStudents.addActionListener(e -> text.setText("List Students"));
        itm_submenuOption.addActionListener(e -> text.setText("Submenu option"));
    }

    public void configurePanel() {
        getContentPane().add(mainPanel);
    }

    public void configureTextField() {
        text.setPreferredSize(new Dimension(300, 30));
        mainPanel.add(text);
    }
}
