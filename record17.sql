/* ANSI/NIST-ITL 1-2011 Update: 2013 
* http://biometrics.nist.gov/cs_links/standard/ansi_2012/Update-Final_Approved_Version.pdf
*/

/* ============= ENUMERACIONES ============= */

/* 17.003 ELR "eye label" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 405
*	0 = undefined, 
*	1 = right eye, 
*	2 = left eye 
*/
CREATE  TYPE eyeLabel AS ENUM ('0','1','2');

/* 17.011 CGA "compression algorithm" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 406 & 98-99 
*	NONE = uncompressed,
*	PNG = PNG ISO/IEC 15948,
*	JP2 = JPEG2000 lossy ISO 15444-1:2004,
*	JP2L = JPEG2000 lossless ISO 15444-1:2004 
*/
CREATE  TYPE compressionAlgorithm AS ENUM ('NONE','PNG','JP2', 'JP2l');

/* 17.013 CSP "color space" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 406 & 101 
*	UNK = undefined,
*	GRAY = grayscale,
*	RGB = undetermined color space for an RGB image,
*	SRGB = sRGB IEC 61966-2-1,
*	YCC = YCbCr (legacy),
*	SYCC = YCbCr (JPEG 2000 compressed) 
*/
CREATE  TYPE colorSpace AS ENUM ('UNK','GRAY','RGB', 'SRGB', 'YCC', 'SYCC');

/* 17.020 SEC "subject eye color" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag 408 & 102
*	BLK = black,
*	BLU = blue,
*	BRO = brown,
*	GRY = gray,
*	GRN = green,
*	HAZ = hazel,
*	MAR = maroon,
*	MUL = multicolored,
*	PNK = pink,
*	XXX = unknown 
*/
CREATE  TYPE eyeColor AS ENUM ('BLK', 'BLU', 'BRO', 'GRY', 'GRN', 'HAZ', 'MAR', 'MUL', 'PNK', 'XXX');


/* 17.025 EAS "effective acquisition spectrum codes" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 409-410
*	NIR = near-infrared adquisition spectrum,
*	DEFINED = defined adquisition spectrum --> 17.027 VIS,
*	VIS = visible full-spectrum adquisition,
*	RED = red portion of visible full-spectrum adquisition,
*	UNDEFINED = unknown or unavailable spectrum 
*/
CREATE  TYPE efectiveAcquisitionSpectrum AS ENUM ('NIR','DEFINED','VIS','RED','UNDEFINED');
