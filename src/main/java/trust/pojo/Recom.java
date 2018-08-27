package trust.pojo;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 推荐
 */
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="recom")
public class Recom implements BasePojo {
    /**
     * id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;
    /**
     * html代码
     */
    private String code;
    /**
     * 节点id
     */
    private String nodeId;
}
