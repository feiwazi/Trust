package trust.pojo;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 节点
 */
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="illness")
public class Illness implements BasePojo{
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
     * 父类
     */
    private Integer parentId;
    /**
     * 图片地址
     */
    private String image;

}
