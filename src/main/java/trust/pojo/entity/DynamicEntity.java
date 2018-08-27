package trust.pojo.entity;

import lombok.*;
import trust.pojo.Article;
import trust.pojo.Dynamic;

/**
 * 动态实体类
 */
@Setter
@Getter
@ToString
@NoArgsConstructor
@EqualsAndHashCode
public class DynamicEntity extends Dynamic {
    /**
     * 文章
     */
    private Article article;

    public DynamicEntity(Dynamic dynamic) {
        super(dynamic.getId(), dynamic.getImage(), dynamic.getType());
    }
}
