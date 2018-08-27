package trust.pojo.entity;

import lombok.*;

import java.util.List;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Page<T> {
    /**
     * 当前页
     */
    private Integer currentPage;
    /**
     * 总条数
     */
    private Integer count;
    /**
     * 页条数
     */
    private Integer pageSize;
    /**
     * 页数
     */
    private Integer pageCount;
    /**
     * 实例
     */
    private List<? extends T> pojos;

}
