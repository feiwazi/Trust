package trust.pojo;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 团队
 */
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name="team")
public class Team implements BasePojo{
    /**
     * id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;
    /**
     * 姓名
     */
    private String name;
    /**
     * 职位
     */
    private String position;
    /**
     * 介绍
     */
    private String introduce;
    /**
     * 图片地址
     */
    private String image;
}
