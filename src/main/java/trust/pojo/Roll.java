package trust.pojo;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 滚动图片
 */
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="roll")
public class Roll implements BasePojo {
    /**
     * id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;
    /**
     * 图片路径
     */
    private String image;
    /**
     * url
     */
    private String url;
    /**
     * 文字
     */
    private String text;
}
