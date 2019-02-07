#====================== Dates & Time ================
#1 Dates:
#You can use the as.Date() function to convert a character string to a Date object, which will allow it to contain more time information. The string will need to be in a standard time format. 

#We can ask for today's date by asking the system (Sys.) for the Date:
Sys.Date()

# Set as a variable
today <- Sys.Date()
today

#You can also convert character strings in R to a Date object using as.Date(). 
#You'll need to make sure its in the correct format, or use % symbols that correlate with your given format:

#Code		Value
#%d		Day of the month (decimal number)
#%m		Month (decimal number)
#%b		Month (abbreviated)
#%B		Month (full name)
#%y		Year (2 digit)
#%Y		Year (4 digit)

#Let's show some examples of how to use as.Date and the format argument for this:

# YYYY-MM-DD
as.Date('1990-11-03')

# Using Format
as.Date("Nov-03-90",format="%b-%d-%y")

# Using Format
as.Date("November-03-1990",format="%B-%d-%Y")

#Now we see how we can use as.Date() in combination with the format argument to basically convert any string representation of dates to an actual Date object, which is useful for time series analysis.

#2 Time
#Just like with Dates, we can also convert strings and work with them for time information. R uses a POSIXct object type to store time information. It's a bit outside the scope of this course, but POSIX represents a portable operating system interface, primarily for UNIX systems, but available on other operating systems as well. As far as what we need to know now, we can just use as.POSIXct() for converting string to a POSIXct object type for time series analysis, the format symbols are best seen through the help documentation for the strptime() function:
help(strptime)

#Examples
## locale-specific version of date()
format(Sys.time(), "%a %b %d %X %Y %Z")

## time to sub-second accuracy (if supported by the OS)
format(Sys.time(), "%H:%M:%OS3")

## read in date info in format 'ddmmmyyyy'
## This will give NA(s) in some locales; setting the C locale
## as in the commented lines will overcome this on most systems.
## lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")
x <- c("1jan1960", "2jan1960", "31mar1960", "30jul1960")
z <- strptime(x, "%d%b%Y")
## Sys.setlocale("LC_TIME", lct)
z

## read in date/time info in format 'm/d/y h:m:s'
dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
strptime(x, "%m/%d/%y %H:%M:%S")

## time with fractional seconds
z <- strptime("20/2/06 11:16:16.683", "%d/%m/%y %H:%M:%OS")
z # prints without fractional seconds
op <- options(digits.secs = 3)
z
options(op)

## time zones name are not portable, but 'EST5EDT' comes pretty close.
(x <- strptime(c("2006-01-08 10:07:52", "2006-08-07 19:33:02"),
               "%Y-%m-%d %H:%M:%S", tz = "EST5EDT"))
attr(x, "tzone")

## An RFC 822 header (Eastern Canada, during DST)
strptime("Tue, 23 Mar 2010 14:36:38 -0400",  "%a, %d %b %Y %H:%M:%S %z")

## Make sure you know what the abbreviated names are for you if you wish
## to use them for input (they are matched case-insensitively):
format(seq.Date(as.Date('1978-01-01'), by = 'day', len = 7), "%a")
format(seq.Date(as.Date('2000-01-01'), by = 'month', len = 12), "%b")