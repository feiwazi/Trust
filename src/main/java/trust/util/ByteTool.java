package trust.util;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.List;

/**
 * @program: Trust
 * @description:byte工具
 * @author: xiaofei
 * @create: 2018-08-22 14:30
 **/
public class ByteTool {

    /**
     * 加密
     * @param str
     * @return
     * @throws Exception
     */
    public static byte[] getCiphertext(String str) throws Exception {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(str.getBytes());
        byte[] md5= converselyByte(md.digest());
        byte [] base64=converselyByte(Base64.getEncoder().encode(md5));
        return base64;
    }

    /**
     * 反byte
     * @param bytes
     * @return
     */
    public static byte[]  converselyByte(byte [] bytes){
        List<Byte> converselyByte=new ArrayList<>();
        for (byte b : bytes) {
            converselyByte.add(b);
        }
        Collections.reverse(converselyByte);
        byte [] conversely=new byte[converselyByte.size()];
        for (int i = 0; i < converselyByte.size(); i++) {
            conversely[i]=converselyByte.get(i);
        }
        return conversely;
    }


}
