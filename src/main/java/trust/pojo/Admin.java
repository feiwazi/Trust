package trust.pojo;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @program: Trust
 * @description: 管理员
 * @author: xiaofei
 * @create: 2018-08-22 18:09
 **/
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="admin")
public class Admin implements BasePojo {
    /**
     * id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;
    /**
     * key
     */
    @Column(name="`key`")
    private  String key;
    /**
     * password
     */
    @Column(name="`password`")
    private  String password;
}
