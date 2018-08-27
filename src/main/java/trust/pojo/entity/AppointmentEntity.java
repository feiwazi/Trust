package trust.pojo.entity;

import lombok.*;
import trust.pojo.Appointment;
import trust.pojo.Illness;

/**
 * @program: Trust
 * @description: 预约数据
 * @author: xiaofei
 * @create: 2018-08-18 16:18
 **/
@Setter
@Getter
@ToString
@NoArgsConstructor
@EqualsAndHashCode
public class AppointmentEntity extends Appointment {
    /**
     * 病
     */
    private Illness illness;

    public AppointmentEntity(Appointment appointment) {
        this.setId(appointment.getId());
        this.setName(appointment.getName());
        this.setPhone(appointment.getPhone());
        this.setTime(appointment.getTime());
        this.setMessage(appointment.getMessage());
    }
}
