package gui;

import java.awt.Container;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;
public class Background extends JFrame {
    private Container c;
    private JPanel imagePanel;

    public Background() {
        initialize();
    }

    private void initialize() {
        //setDefaultCloseOperation(EXIT_ON_CLOSE);
        c = getContentPane();
        imagePanel = new JPanel() {
            public void paint(Graphics g) {
                try {
                    BufferedImage image = ImageIO.read(new File("back1.jpg"));
                    g.drawImage(image, 1000, 2000, null);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        };
        imagePanel.setPreferredSize(new Dimension(640, 480));
        c.add(imagePanel);
    }
    
    public static void main(String[] args) {
    	try {
		new Background();
    	}catch(Exception  exception){
    		exception.printStackTrace();
    	}
    }
}
