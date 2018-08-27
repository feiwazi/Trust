package trust.pojo;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 动态
 */
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="dynamic")
public class Dynamic implements BasePojo {
    /**
     * id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;
    /**
     * 图片
     */
    private String image;
    /**
     * 种类
     */
    private String type;

}
