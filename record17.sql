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

 
/* 17.028 DME "damaged or missing eye" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 410-411
*	MA = missing or artificial eye,
* 	UC = unable to capture image
*/
CREATE TYPE damagedOrMissingEye AS ENUM ('MA','UC');


/* 17.030 DMM "device monitoring mode" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 411 & 64-65
*	CONTROLLED = Operator physically controls the subject to acquire the biometric sample;
* 	ASSITED = Person available to provide assistance to subject submitting the biometric;
* 	OBSERVED = Person present to observe operation of the device but provides no assistance;
* 	UNATTENDED =  No one is present to observe or provide assistance;
* 	UNKNOWN = No information is known;
*/
CREATE TYPE deviceMonitoringMode AS ENUM ('CONTROLLED','ASSISTED','OBSERVED','UNATTENDED','UNKNOWN');


/* 17.031 IAP "subject aqcuisition profile iris" 
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 411 & 87-88
*	20 = iris diameter: >=140 pixels, eyes: >=1, exposure time: =<33 ms;
* 	30 = iris diameter: >=170 pixels, eyes: >=1, exposure time: =<15 ms;
* 	40 = iris diameter: >=210 pixels, eyes: 2, exposure time: =<10 ms;
*/
CREATE TYPE subjectAcquisitionProfileIris AS ENUM ('20','30','40');


/* 17.032 ISF "iris storage format"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 412-413
*	1 = Unconstrained image size (Recommended),
* 	2 = Raw: 640x480 (Recommended),
* 	3 = Cropped (Required),
* 	7 = Cropped & masked (Required),
*/
CREATE TYPE irisStorageFormat AS ENUM ('1','2','3','7');


/* 17.033-036 BDC "boundary definition codes"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 413-414 & 106
*	C = Circle (2 points),
* 	E = Elipse (3 points),
* 	P = Polygon (between 3 and 99 points),
*/
CREATE TYPE boundaryDefinitionCodes AS ENUM ('C','E','P');


/* 17.037 OCY "occlusion opacity"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 414 & 106
*	T = Total,
* 	I = Interference,
* 	L = Partial Light,
* 	S = Partial Shadow,
*/
CREATE TYPE occlusionOpacity AS ENUM ('T','I','L','S');


/* 17.037 OCT "occlusion type"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 414 & 106
*	L = Lashes,
* 	H = Head covering,
* 	S = Specular,
* 	C = Shadow,
* 	R = Reflection,
* 	O = Other
*/
CREATE TYPE occlusionType AS ENUM ('L','H','S','C','R','O');

AAAAAAAAAa