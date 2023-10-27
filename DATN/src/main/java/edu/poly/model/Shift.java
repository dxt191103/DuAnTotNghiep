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

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Shift")
public class Shift {
	@Id
	String Id;
	String begintime;
	String endtime;
	
	@OneToMany
	(mappedBy = "shift")
	List<ShiftStaff> shiftStaffs;
}
