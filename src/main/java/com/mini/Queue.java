/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mini;

/**
 *
 * @author kalam
 */

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Queue extends JFrame implements ActionListener {
    int front = -1, rear = -1;
    int countsq = 10;

    //for queues
    JTextField countq = new JTextField("10");
    JTextField[] jtfq = new JTextField[25];
    JTextField[] jtfrq = new JTextField[2];
    JTextField queue = new JTextField("         \t        QUEUE");
    JTextField qop = new JTextField("\tQUEUE OPERATIONS");
    JLabel statusq = new JLabel("QUEUE Status:");
    JLabel alertq = new JLabel("\t\tElement is  accepted");
    JLabel enqel = new JLabel("Enter element to enq:");
    JLabel deqb = new JLabel("click to DeQ an Element");
    JLabel deqel = new JLabel("Dequed Element:");
    JLabel rearloc = new JLabel("rear is currently at  index   :-1 ");
    JLabel frontloc = new JLabel("front is currently at  index :-1 ");
    JLabel clq = new JLabel("No.of Queue Fields(Max-24):");
    JButton valdq = new JButton("Validate");
    JButton jbiq = new JButton("EnQ");
    JButton jbrq = new JButton("DeQ");
    JButton resetq = new JButton("Reset");
    JPanel leftq = new JPanel();
    JPanel rightq = new JPanel();
    JPanel qupanel = new JPanel();


    JLabel jtp = new JLabel();

//initially only 10 elements stack/queue will be applied

    public Queue() throws Exception {

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(1000, 750);
        setLayout(null);
        //setSize(width,height);


        //initializing
        jtfrq[0] = new JTextField("");
        jtfrq[1] = new JTextField("");

        //panel adding
        qupanel.add(leftq);
        qupanel.add(rightq);
        jtp.add("QUEUE", qupanel);
        jtp.setBackground(Color.darkGray);
        qupanel.setBackground(Color.darkGray);
        leftq.setBackground(Color.darkGray);
        rightq.setBackground(Color.darkGray);
        jtp.setOpaque(true);
        leftq.setOpaque(true);
        rightq.setOpaque(true);
        qupanel.setOpaque(true);
        queue.setBackground(Color.darkGray);
        qop.setBackground(Color.darkGray);
        setBackground(Color.darkGray);
        statusq.setForeground(Color.white);
        alertq.setForeground(Color.white);
        enqel.setForeground(Color.white);
        deqb.setForeground(Color.white);
        deqel.setForeground(Color.white);
        rearloc.setForeground(Color.white);
        frontloc.setForeground(Color.white);
        clq.setForeground(Color.white);
        queue.setForeground(Color.white);
        qop.setForeground(Color.white);


        //setting the layout for panels individually
        rightq.setLayout(null);
        leftq.setLayout(new GridLayout(10, 1));
        qupanel.setLayout(new GridLayout(1, 2));

        //setting bounds for panels
        leftq.setBounds(30, 20, 370, 480);
        rightq.setBounds(385, 10, 400, 580);
        qupanel.setBounds(5, 5, 760, 500);
        jtp.setBounds(100, 50, 900, 600);

        //adding components/elements to the panel and JFrame
        add(jtp);
        //adding components/elements to the left panel
        for (int i = 0; i < 10; i++) {
            jtfq[i] = new JTextField("");
            leftq.add(jtfq[i]);
            jtfq[i].setEditable(false);
        }
        setLocationRelativeTo(null);
        setBackground(Color.darkGray);

        queue.setEditable(false);
        qop.setEditable(false);
        //adding components/elements to the right panel   order: stack panel -queue panel
        rightq.add(clq);
        rightq.add(countq);
        rightq.add(valdq);
        rightq.add(queue);
        rightq.add(qop);
        rightq.add(enqel);
        rightq.add(jtfrq[0]);
        rightq.add(jbiq);
        rightq.add(deqb);
        rightq.add(jbrq);
        rightq.add(deqel);
        rightq.add(jtfrq[1]);
        rightq.add(statusq);
        rightq.add(alertq);
        rightq.add(rearloc);
        rightq.add(frontloc);
        rightq.add(resetq);


        //adding bounds to  components/elements in the right panel   order: stack panel -queue panel
        queue.setBounds(35, 30, 300, 60);
        clq.setBounds(35, 120, 160, 40);

        countq.setBounds(200, 120, 60, 40);
        valdq.setBounds(270, 120, 100, 40);
        qop.setBounds(35, 170, 300, 40);
        enqel.setBounds(50, 225, 150, 25);
        jtfrq[0].setBounds(50, 260, 100, 25);
        jbiq.setBounds(200, 260, 100, 25);
        deqb.setBounds(50, 300, 140, 25);
        jbrq.setBounds(200, 300, 100, 25);
        deqel.setBounds(50, 340, 100, 25);
        jtfrq[1].setBounds(200, 340, 100, 25);
        statusq.setBounds(135, 470, 100, 50);
        alertq.setBounds(120, 500, 150, 45);
        rearloc.setBounds(50, 375, 250, 25);
        frontloc.setBounds(50, 405, 250, 25);
        resetq.setBounds(310, 475, 70, 20);


        //adding action listener

        jbiq.addActionListener(this);
        jbrq.addActionListener(this);

        valdq.addActionListener(this);
        resetq.addActionListener(this);
        setVisible(true);


    }

    public static void main(String[] args) {
        try {
            //object of tabn class
            Queue window = new Queue();
            window.getContentPane().setBackground(Color.darkGray);

        } catch (Exception a) {
            a.printStackTrace();
        }
    }

    public boolean isFull(int rear, int front, int countsq){

        if( (rear+1) == front){

            return true;

        }

        return false;

    }



    public boolean isEmpty(int rear, int front){

        if( (rear==-1 && front == -1)){

            return true;

        }

        return false;

    }

    public void actionPerformed(ActionEvent ae) {
        countsq = Integer.parseInt(countq.getText());


        if (ae.getSource() == jbiq)  //for queue  insert-enque
        {

            if(isEmpty(rear,front)){
                rear++;
                jtfq[rear].setText(jtfrq[0].getText());
                rearloc.setText("rear is currently at  index   :" + rear);
                front++;
                frontloc.setText("rear is currently at  index   :" + rear);
                jtfrq[1].setText("");
            }
            else if(isFull(rear,front,countsq)){
                alertq.setText("Queue is Full");
                alertq.setForeground(Color.RED);
                jtfrq[1].setText("");
            }
//            else if(front == -1 && rear == -1){
//                rear++;
//                jtfq[rear].setText(jtfrq[0].getText());
//                rearloc.setText("rear is currently at  index   :" + rear);
//                front++;
//                frontloc.setText("rear is currently at  index   :" + rear);
//            }
            else{
                rear = (rear+1);
                jtfq[rear].setText(jtfrq[0].getText());
                //jtfrq[0].setText("");
                rearloc.setText("rear is currently at  index   :" + rear);
                frontloc.setText("front is currently at  index :" + front);
                alertq.setText("Element Accepted");
                jtfrq[1].setText("");

            }
        } else if (ae.getSource() == jbrq)  //for queue delete -deque
        {   if(isEmpty(rear,front)){
            front = -1;
            rear = -1;
            jtfrq[1].setText("");
            rearloc.setText("rear is currently at  index   :" + rear);
            frontloc.setText("front is currently at  index :" + front);
        }
//            if(isFull(rear,front,countsq)){
//                alertq.setText("Queue is Full");
//                alertq.setForeground(Color.RED);
//            }
            else{
            jtfrq[1].setText(jtfq[front].getText());
            jtfq[front].setText("");
            frontloc.setText("front is currently at index:" + front);
            front = (front+1);
            alertq.setText("Element Deleted");
//            jtfq[rear].setText(jtfrq[0].getText());
//            rear = (rear +1)%(countsq+1);
                //jtfrq[0].setText("");
//                rearloc.setText("rear is currently at  index   :" + rear);
//                frontloc.setText("front is currently at  index :" + front);
//                alertq.setText("Element Accepted");

            }
//            rear = 0;
//        }
//            if (front == rear) {
//                alertq.setText("Queue is Empty");
//                alertq.setForeground(Color.RED);
//            } else {
//                if (front != 0 && rear == front) {
//                    front = 0;
//                    rear = 0;
//                }
//
//                jtfrq[1].setText(jtfq[front].getText());
//                jtfq[front].setText("");
//                front++;
//                frontloc.setText("front is currently at index:" + front);
//            }
        } else if (ae.getSource() == valdq)//validate no of max-elements queue
        {
            leftq.removeAll();
            leftq.revalidate();
            countsq = Integer.parseInt(countq.getText());
            leftq.setLayout(new GridLayout(countsq, 1));
            for (int x = 0; x < countsq; x++) {
                try {
                    jtfq[x] = new JTextField("");
                    jtfq[x].setEditable(false);
                    leftq.add(jtfq[x]);
                } catch (Exception aa) {
                    aa.printStackTrace();

                }
            }
        } else if (ae.getSource() == resetq)//validate no of max-elements queue
        {
            try {
                for (int i = 0; i < 10; i++) {
                    jtfq[i].setText("");
                    rearloc.setText("rear is currently at  index   :-1 ");
                    frontloc.setText("front is currently at  index :-1 ");
                    jtfrq[0].setText("");
                    jtfrq[1].setText("");
                }
                front = -1;
                rear = -1;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}