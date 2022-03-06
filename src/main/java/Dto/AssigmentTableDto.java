package Dto;

import Entity.Driver;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AssigmentTableDto {
    private Driver driver;

    private Double totalDistance;
}
