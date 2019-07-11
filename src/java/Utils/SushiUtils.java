package Utils;

import java.util.*;
import java.time.*;

public class SushiUtils {

	public static String formatSQLDate(Date d) {
		LocalDate ld = d.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		int year = ld.getYear();
		int month = ld.getMonthValue();
		int date = ld.getDayOfMonth();
		int hours = d.getHours();
		int minutes = d.getMinutes();
		int sec = d.getSeconds();
		String retval = String.format("%04d%02d%02d %02d:%02d:%02d", year, month, date, hours, minutes, sec);
		return retval;
	}
}
