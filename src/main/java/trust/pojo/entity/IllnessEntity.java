package trust.pojo.entity;

import lombok.*;
import trust.pojo.Article;
import trust.pojo.Illness;

import java.util.List;

/**
 * 传数据使用的病种类
 */
@Setter
@Getter
@ToString
@NoArgsConstructor
@EqualsAndHashCode
public class IllnessEntity extends Illness {

    List<? extends Illness> illnesses;

    List<? extends Article> articles;

    public IllnessEntity(Illness illness) {
        super(illness.getId(), illness.getName(), illness.getParentId(), illness.getImage());
    }
}
