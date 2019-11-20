package commons.util;

import org.junit.Test;

import java.util.UUID;

/**
 * @Copyright LiChen
 * 用户：biyang
 * 创建时间：2019/11/20
 * 16:29
 */

public class Uuid {
    @Test
    public void fun1(){
        UUID uuid=UUID.randomUUID();
        String s=uuid.toString();
        s=s.replace("-","");
        s=s.toUpperCase();
        System.out.println(s);
    }

}
