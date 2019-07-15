package Utils;

import java.util.*;
import java.time.*;

public class SushiUtils {

	public static List<Integer> generateCounterItems(int visitorCount, int minDigits) {
		List<Integer> retval = new ArrayList<>();
		String str = Integer.toString(visitorCount);
		if (str.length() < minDigits) {
			int remainder = visitorCount;
			for (int i = 0; i < minDigits; i++) {
				retval.add(0, remainder % 10);
				remainder /= 10;
			}
		} else {
			int remainder = visitorCount;
			while (remainder > 0) {
				retval.add(0, remainder % 10);
				remainder /= 10;
			}

		}
		return retval;
	}

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
