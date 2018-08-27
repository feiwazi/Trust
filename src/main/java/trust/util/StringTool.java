package trust.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringTool {


    public static Integer toInteger(String str){

        if(!isInt(str)){
            return null;
        }
        return Integer.parseInt(str);
    }

    public static boolean isInt(String str){
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        return isNum.matches();
    }
}
