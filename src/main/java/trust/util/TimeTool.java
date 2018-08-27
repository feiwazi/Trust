package trust.util;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;

public class TimeTool {
    /**
     * 北京时间
     */
    public static final String BJTIME="http://www.bjtime.cn";
    /**
     * 国家授时网站
     */
    public static final String NTSC="http://www.ntsc.ac.cn";
    /**
     * 世界-北京时间
     */
    public static final String BEIJING="http://www.beijing-time.org";
    /**
     * 获取网络时间
     * @return
     */
    public static Date getWebDate(String webUrl){
        Date date= null;
        try {
            date = getWebsiteDatetime(webUrl);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 获取网站时间
     * @param webUrl
     * @return
     * @throws IOException
     */
    private static Date getWebsiteDatetime(String webUrl) throws IOException {
        URL url = new URL(webUrl);// 取得资源对象
        URLConnection uc = url.openConnection();// 生成连接对象
        uc.connect();// 发出连接
        long ld = uc.getDate();// 读取网站日期时间
        Date date = new Date(ld);// 转换为标准时间对象
        return date;
    }
}
