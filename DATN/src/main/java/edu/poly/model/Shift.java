package edu.poly.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.sql.Time;
import java.util.List;
import javax.persistence.Id;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Shift")
public class Shift {
	@Id
	@Size(min=1)
	String Id;
	@Size(min=1)
	String begintime;
	@Size(min=1)
	String endtime;
	
	@OneToMany
	(mappedBy = "shift")
	List<ShiftStaff> shiftStaffs;
}
