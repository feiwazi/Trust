package trust.pojo;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 字典
 */
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="dictionary")
public class Dictionary implements BasePojo {
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
     * key
     */
    private String key;
    /**
     * value
     */
    private String value;
}
