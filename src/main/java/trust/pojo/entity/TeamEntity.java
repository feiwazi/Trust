package trust.pojo.entity;

import lombok.*;
import trust.pojo.Article;
import trust.pojo.Team;

/**
 * 团传数据类
 */
@Setter
@Getter
@ToString
@NoArgsConstructor
@EqualsAndHashCode
public class TeamEntity extends Team {

    private Article article;

    public TeamEntity(Team team) {
        super(team.getId(), team.getName(), team.getPosition(), team.getIntroduce(), team.getImage());
    }
}
