package trust.pojo;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * @program: Trust
 * @description:预约挂号
 * @author: xiaofei
 * @create: 2018-08-18 16:11
 **/
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="appointment")
public class Appointment implements BasePojo {
    /**
     * id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;
    /**
     * name
     */
    private String name;
    /**
     * 电话
     */
    private String phone;
    /**
     * 病id
     */
    private Integer illnessId;
    /**
     * 预约时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date time;
    /**
     * 信息
     */
    private String message;
}
