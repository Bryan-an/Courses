package menus;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

public final class MenuExample2 extends JFrame {

    //Fields
    //Menu bar
    private JMenuBar menuBar;

    //Menus
    private JMenu mnu_operation;
    private JMenu mnu_exit;

    //Menu items
    private JMenuItem itm_sum;
    private JMenuItem itm_subtraction;
    private JMenuItem itm_multiplication;
    private JMenuItem itm_division;
    private JMenuItem itm_close;

    //Panel
    private JPanel mainPanel;

    //Labels
    private JLabel lbl_num1;
    private JLabel lbl_num2;
    private JLabel lbl_result;

    //Text fields
    private JTextField txt_num1;
    private JTextField txt_num2;
    private JTextField txt_result;

    //Constructor
    public MenuExample2() {
        initComponents();
        configureWindow();
        addComponents();
    }

    //Main method
    public static void main(String[] args) {
        EventQueue.invokeLater(() -> new MenuExample2().setVisible(true));
    }

    //Methods
    public void configureWindow() {
        setTitle("Menus");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setJMenuBar(menuBar);
    }

    public void initComponents() {
        menuBar = new JMenuBar();
        mnu_operation = new JMenu();
        mnu_exit = new JMenu();
        mainPanel = new JPanel();
        itm_sum = new JMenuItem();
        itm_subtraction = new JMenuItem();
        itm_multiplication = new JMenuItem();
        itm_division = new JMenuItem();
        itm_close = new JMenuItem();
        lbl_num1 = new JLabel();
        lbl_num2 = new JLabel();
        lbl_result = new JLabel();
        txt_num1 = new JTextField();
        txt_num2 = new JTextField();
        txt_result = new JTextField();
    }

    public void addComponents() {
        configureMenuBar();
        configureActionListeners();
        configureMainPanel();
        pack();
    }

    public void configureMenuBar() {
        itm_sum.setText("Suma");
        itm_sum.setMnemonic('S');
        mnu_operation.add(itm_sum);

        itm_subtraction.setText("Resta");
        itm_subtraction.setMnemonic('R');
        mnu_operation.add(itm_subtraction);

        itm_multiplication.setText("Multiplicación");
        itm_multiplication.setMnemonic('M');
        mnu_operation.add(itm_multiplication);

        itm_division.setText("División");
        itm_division.setMnemonic('D');
        mnu_operation.add(itm_division);

        mnu_operation.setText("Operación");
        mnu_operation.setMnemonic('O');
        menuBar.add(mnu_operation);

        itm_close.setText("Cerrar");
        itm_close.setMnemonic('C');
        mnu_exit.add(itm_close);

        mnu_exit.setText("Salir");
        menuBar.add(mnu_exit);
    }

    public void configureActionListeners() {
        ActionListener operationActionListener = e -> {
            double num1 = Double.parseDouble(txt_num1.getText());
            double num2 = Double.parseDouble(txt_num2.getText());

            if (e.getSource().equals(itm_sum)) {
                txt_result.setText(num1 + num2 + "");
            } else if (e.getSource().equals(itm_subtraction)) {
                txt_result.setText(num1 - num2 + "");
            } else if (e.getSource().equals(itm_multiplication)) {
                txt_result.setText(num1 * num2 + "");
            } else if (e.getSource().equals(itm_division)) {
                txt_result.setText(num1 / num2 + "");
            }
        };

        itm_sum.addActionListener(operationActionListener);
        itm_subtraction.addActionListener(operationActionListener);
        itm_multiplication.addActionListener(operationActionListener);
        itm_division.addActionListener(operationActionListener);

        itm_close.addActionListener(e -> {
            System.exit(0);
        });
    }

    public void configureMainPanel() {
        lbl_num1.setText("Número 1");
        mainPanel.add(lbl_num1);

        txt_num1.setPreferredSize(new Dimension(50, 20));
        mainPanel.add(txt_num1);

        lbl_num2.setText("Número 2");
        mainPanel.add(lbl_num2);

        txt_num2.setPreferredSize(new Dimension(50, 20));
        mainPanel.add(txt_num2);

        lbl_result.setText("Resultado");
        mainPanel.add(lbl_result);

        txt_result.setPreferredSize(new Dimension(75, 20));
        txt_result.setEditable(false);
        mainPanel.add(txt_result);

        add(mainPanel);
    }


}
