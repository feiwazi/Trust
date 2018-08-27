package trust.util;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: Trust
 * @description: 图片处理
 * @author: xiaofei
 * @create: 2018-08-23 14:10
 **/
public class ImageTool {


    /**
     * 生成加密图片
     * @param key
     * @param password
     * @return
     */
    public static BufferedImage genImage(byte [] key,byte [] password){
        BufferedImage bi=new BufferedImage(8, 2, BufferedImage.TYPE_INT_RGB);
        Graphics g=bi.getGraphics();
        try {
            drow(0,key,bi);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            drow(1,password,bi);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bi;
    }

    /**
     * 绘画一行
     * @param row
     * @param bytes
     * @param bi
     */
    private static void drow(int row,byte[] bytes,BufferedImage bi){
        Graphics g=bi.getGraphics();
        for (int i = 0; i < bi.getWidth(); i++) {
            int red,green,blue;
            red=bytes[i*3];    // 0 3 6
            green=bytes[i*3+1];// 1 4 7
            blue=bytes[i*3+2];// 2 5 8
            Color color=new Color(red,green,blue);
            g.setColor(color);
            g.fillRect(i,row,1,1);
        }
    }

    /**
     * 解码
     * @param row
     * @param bi
     * @return
     */
    public static byte[] decom(int row,BufferedImage bi){
        List<Byte> byteList=new ArrayList<>();
        for (int i = 0; i < bi.getWidth(); i++) {
            Color color=getColor(bi,i,row);
            byteList.add(new Byte((byte) color.getRed()));
            byteList.add(new Byte((byte) color.getGreen()));
            byteList.add(new Byte((byte) color.getBlue()));
        }
        byte [] bytes=new byte[byteList.size()];
        for (int i = 0; i < byteList.size(); i++) {
            bytes[i]=byteList.get(i);
        }
        return bytes;
    }

    /**
     * 获取颜色
     * @param bi
     * @param x
     * @param y
     * @return
     */
    public static Color getColor(BufferedImage bi, int x, int y){
        int p = bi.getRGB(x, y);
        int r = 0xff & (p >> 16);
        int g = 0xff & (p >> 8);
        int b = 0xff & p;
        return new Color(r, g, b);
    }
}
