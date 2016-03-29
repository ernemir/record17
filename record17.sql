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
*	NIR = near-infrared acquisition spectrum,
*	DEFINED = defined acquisition spectrum --> 17.027 VIS,
*	VIS = visible full-spectrum acquisition,
*	RED = red portion of visible full-spectrum acquisition,
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

/* 17.016 IHO - IVO "horizontal / vertical orientation code"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 407
* 	0 = Undefined
*	1 = Base
*	2 = Flipped
*/
CREATE TYPE orientationCode AS ENUM ('0','1','2');

/* 17.016 IST "specific scan type"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 407
* 	0 = Undefined
*	1 = Progressive
*/
CREATE TYPE specificScanType AS ENUM ('0','1');

/* 17.998 GDC "geodetic datum code"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 70
*	AIRY  = Airy,
*	AUST  = Australian National,
*	BES   = Bessel 1841,
*	BESN  = Bessel 1841 (Namibia),
*	CLK66 = Clarke 1866,
*	CLK80 = Clarke 1880,
*	EVER  = Everest,
*	FIS60 = Fischer 1960 (Mercury),
*	FIS68 = Fischer 1968,
*	GRS67 = GRS 1967,
*	HELM  = Helmert 1906,
*	HOUG  = Hough,
*	INT   = International,
*	KRAS  = Krassovsky,
*	AIRYM = Modified Airy,
*	EVERM = Modified Everest,
*	FIS60M= Modified Fischer 1960,
*	SA69  = South American 1969,
*	WGS60 = WGS-60,
*	WGS66 = WGS-66,
*	WGS72 = WGS-72,
*	WGS84 = WGS-84 / NAD-83,
*	OTHER = Other
*/
CREATE TYPE geodeticDatumCode AS ENUM ( 'AIRY','AUST','BES','BESN','CLK66','CLK80','EVER',
										'FIS60','FIS68','GRS67','HELM','HOUG','INT','KRAS',
										'AIRYM','EVERM','FIS60M','SA69','WGS60','WGS66',
										'WGS72','WGS84','OTHER');

/* ============= TIPOS COMPUESTOS ============= */

/* 17.016 IPC "image property code"
*	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 407 
*/
CREATE  TYPE imagePropertyCode AS (
	horizontalOrientationCode orientationCode, -- coment in english
	verticalOrientationCode orientationCode,  -- coment in english
	specificScanType specificScanType -- coment in english
	-- #TODO: revisar si se puede dar el mismo nombre al campo y al tipo
);

/* 17.019 MMS "make model serial number" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 64 
*/
CREATE  TYPE captureDeviceInfo AS (
	make VARCHAR(50), -- coment in english
	model VARCHAR(50), -- coment in english
	serialNumber VARCHAR(50) -- coment in english
);

/* 17.033 - 17.036 SUPER TYPE" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 413-414
*/
CREATE  DOMAIN numberOfPointsBoundaries AS integer CHECK (value between 2 AND 99); -- RESTRICTION value between 2 and 99
--#TODO: ver que dejar si el DOMAIN CHECK o el CHECK en la declaración del campo
CREATE  TYPE boundaries AS (
	boundaryCode boundaryDefinitionCodes, -- coment in english
	numberOfPoints numberOfPointsBoundaries, -- coment in english
	horizontalPointOffset integer[], -- #TODO: limitar nro de elementos del array al valor de numberOfPoints
	verticalPointOffset integer[] -- #TODO: limitar nro de elementos del array al valor de numberOfPoints
);

/* 17.033 IPB "iris pupil boundary" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 413 
*/
CREATE  TYPE irisPupilBoundary AS (
	super boundaries -- coment in english
	-- visto en http://stackoverflow.com/questions/28294739/derived-type-in-postgresql 3)
);

/* 17.034 ISB "iris sclera boundary" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 413 
*/
CREATE  TYPE irisScleraBoundary AS (
	super boundaries -- coment in english
	-- visto en http://stackoverflow.com/questions/28294739/derived-type-in-postgresql 3)
);

/* 17.035 UEB "upper eyelid boundary" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 413 
*/
CREATE  TYPE upperEyelidBoundary AS (
	super boundaries -- coment in english
	-- visto en http://stackoverflow.com/questions/28294739/derived-type-in-postgresql 3)
);

/* 17.035 LEB "lower eyelid boundary" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 414 
*/
CREATE  TYPE lowerEyelidBoundary AS (
	super boundaries -- coment in english
	-- visto en http://stackoverflow.com/questions/28294739/derived-type-in-postgresql 3)
);

/* 17.03 NEO "non eyelid occlusions" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 414 
*/
-- CREAMOS UN DOMAIN PORQUE ES UNA RESTRICCION EN UN TIPO. SI FUERA EN UNA TABLA PODRIAMOS USAR UN CONSTRAINT
CREATE  DOMAIN numberOfPointsOcclusions AS integer CHECK (value between 3 AND 99); -- RESTRICTION value between 3 and 99
CREATE  TYPE nonEyelidOcclusions AS (
	occlusionOpacity occlusionOpacity, -- coment in english
	occlusionType occlusionType,
	numberOfPoints numberOfPointsOcclusions, -- coment in english
	horizontalPointOffset integer[], -- #TODO: limitar nro de elementos del array al valor de numberOfPoints
	verticalPointOffset integer[] -- #TODO: limitar nro de elementos del array al valor de numberOfPoints
);

/* 17.24 IQS "image quality score" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 399, 408  
*/
CREATE DOMAIN qualityValue AS integer CHECK((value between 0 AND 100) OR (value between 254 AND 255));
CREATE DOMAIN hexadecimalValues AS bytea CHECK (value between decode('0000','hex') AND decode('FFFF','hex')); 

CREATE DOMAIN algorithmProductIdentificator AS integer CHECK (value between 1 AND 65535);

CREATE TYPE imageQualityScore AS (
	qualityValue qualityValue,
	algorithmVendorIdentificator hexadecimalValues,
	algorithmProductIdentificator algorithmProductIdentificator
);

/* 17.27 SSV "specified spectrum values" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 400, 409
*/
CREATE DOMAIN spectrumLowerBound AS integer CHECK ((value between 1 AND 500) AND (mod(value,10)=0));
CREATE DOMAIN spectrumUpperBound AS integer CHECK ((value between 1 AND 510) AND (mod(value,10)=0));
CREATE TYPE specificSpectrumValues AS (
	spectrumLowerBound spectrumLowerBound, --#TODO: revisar si cumple lo del mod
	spectrumUpperBound spectrumUpperBound
);

/* 17.902 ANN "annotation information" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 402, 415, 59
*	#TODO: (Corregido)
*/
CREATE TYPE annotationInformation AS(
	greewichMeanTime timestamp,
	processingAlgorithmName VARCHAR(255),
	algorithmOwner VARCHAR(64),
	processDescription VARCHAR(255)
);

/* 17.995 ASC "associated context" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 403, 415, 58
*	#TODO: son registros repetitivos en el registro principal
*/
CREATE DOMAIN associatedContextNumber AS integer CHECK (value>=1 and value<=255);
CREATE DOMAIN associatedSegmentPosition AS integer CHECK (value>=1 and value<=99);
CREATE TYPE associatedContext AS(
	associatedContextNumber associatedContextNumber,
	associatedSegmentPosition associatedSegmentPosition
);


/* 17.997 SOR "source representation" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 403, 415, 57
*	#TODO: son registros repetitivos en el registro principal
*/
CREATE DOMAIN sourceRepresentationNumber AS integer CHECK (value>=1 and value<=255);
CREATE DOMAIN referenceSegmentPosition AS integer CHECK (value>=1 and value<=99);
CREATE TYPE sourceRepresentation AS(
	sourceRepresentationNumber sourceRepresentationNumber,
	referenceSegmentPosition referenceSegmentPosition
);

/* 17.998 GEO "geographic sample acquisition location" 
*  	ANSI/NIST-ITL 1-2011 Update: 2013 pag. 403, 415, 66
* 	#TODO: falta nro de campo en diagrama UML(Corregido)
* 	#TODO: ver si se puede usar postgis
*/
CREATE DOMAIN latitudeDegree AS integer CHECK (value>=-90 and value<=90);
CREATE DOMAIN longitudeDegree AS integer CHECK (value>=-180 and value<=180);
CREATE DOMAIN minuteSecond AS integer CHECK (value>=0 and value<60);
CREATE DOMAIN elevation AS float CHECK (value>=-422 and value<=8848);
CREATE TYPE geographicSampleAcquisitionLocation AS (
	universalTimeEntry timestamp,
	latitudeDegreeValue latitudeDegree,
	latitudeMinuteValue minuteSecond,
	latitudeSecondValue minuteSecond,
	longitudeDegreeValue longitudeDegree,
	longitudeMinuteValue minuteSecond,
	longitudeSecondValue minuteSecond,
	elevation elevation,
	geodeticDatumCode geodeticDatumCode,
	geographicCoordinateUniversalTransverseMercatorZone VARCHAR(3),
	geographicCoordinateUniversalTransverseMercatorEasting integer,
	geographicCoordinateUniversalTransverseMercatorNorthing integer,
	geographicReferenceText VARCHAR(150),
	geographicCoordinateOtherSystemIdentifier VARCHAR(10),
	geographicCoordinateOtherSystemValue VARCHAR(126)	
);	




CREATE DOMAIN idc AS integer CHECK(value>=0 and value<=99);
CREATE DOMAIN hll AS integer CHECK(value>=10 and value<=99999);
CREATE DOMAIN vll AS integer CHECK(value>=10 and value<=99999);
CREATE DOMAIN slc AS integer CHECK(value>=0 and value<=2);
CREATE DOMAIN positiveInteger AS integer CHECK(value>0);
CREATE DOMAIN bpx AS integer CHECK(value>=8 and value<=99);
CREATE DOMAIN udi_len AS VARCHAR CHECK(length(value)=13 or length(value)=16);
CREATE DOMAIN ird AS integer CHECK(value>=10 and value<=99999);
CREATE DOMAIN gaz AS integer CHECK(value>=0 and value<=90);

CREATE TYPE irisImageRecord AS(
	informationDesignationCharacter idc, -- 17.002 IDC
	eyeLabel eyeLabel, -- 17.003 ELR
	sourceAgency VARCHAR(255), -- 17.004 SRC
	irisCaptureDate timestamp, -- 17.005 ICD
	horizontalLineLength hll, -- 17.006 HLL
	verticalLineLength vll, -- 17.007 VLL
	scaleUnits slc, -- 17.008 SLC
	transmittedHorizontalPixelScale positiveInteger, -- 17.009 THPS
	transmittedVerticalPixelScale positiveInteger, -- 17.010 TVPS
	compressionAlgorithm compressionAlgorithm, -- 17.011 CGA
	bitsPerPixel bpx, -- 17.012 BPX
	colorSpace colorSpace, -- 17.013 CSP
	rotationAngleOfEye hexadecimalValues, -- 17.014 RAE
	rotationUncertainty hexadecimalValues, -- 17.015 RAU
	imagePropertyCode imagePropertyCode, -- 17.016 IPC
	deviceUniqueIdentifier udi_len, -- 17.017 UDI #TODO: ver primer caracter y mac [0-9] [A-F]
	captureDeviceInfo captureDeviceInfo, -- 17.019 MMS
	eyeColor eyeColor, -- 17.020 ECL
	comment VARCHAR(126), -- 17.021 COM 
	scannedHorizontalPixelScale positiveInteger, -- 17.022 SHPS
	scannedVerticalPixelScale positiveInteger, -- 17.023 SVPS
	imageQualityScore imageQualityScore[9], -- 17.024 IQS
	efectiveAcquisitionSpectrum efectiveAcquisitionSpectrum, -- 17.025 EAS
	irisDiameter ird, -- 17.026 IRD
	specificSpectrumValues specificSpectrumValues, -- 17.027 SSV
	damagedOrMissingEye damagedOrMissingEye, -- 17.028 DME
	deviceMonitoringMode deviceMonitoringMode, -- 17.030 DMM
	subjectAcquisitionProfileIris subjectAcquisitionProfileIris, -- 17.031 IAP
	irisStorageFormat irisStorageFormat, -- 17.032 ISF
	irisPupilBoundary irisPupilBoundary, -- 17.033 IPB
	irisScleraBoundary irisScleraBoundary, -- 17.034 ISB
	upperEyelidBoundary upperEyelidBoundary, -- 17.035 UEB
	lowerEyelidBoundary lowerEyelidBoundary, -- 17.036 LEB
	nonEyelidOcclusions nonEyelidOcclusions, -- 17.037 NEO
	range positiveInteger, -- 17.040 RAN
	frontalGaze gaz, -- 17.041 GAZ
	annotationInformation annotationInformation, -- 17.092 ANN
	sourceAgencyName VARCHAR(125), -- 17.993 SAN
	associatedContext associatedContext, -- 17.995 ASC
	hash VARCHAR(64), -- 17.996 HAS #TODO: funcion que calcule el hash del 17.999 VER
	sourceRepresentation sourceRepresentation, -- 17.997 SOR
	geographicSampleAcquisitionLocation geographicSampleAcquisitionLocation, -- 17.998 GEO
	data bytea -- 17.999 DATA	-- lo = blob?
);


CREATE LANGUAGE plpython3u; --posible adaptacion para lenguaje
CREATE EXTENSION plpython3u; 
CREATE OR REPLACE FUNCTION checkDeviceUniqueIdentifier(udi text) RETURNS bool -- #TODO: 17.017 UDI funcion que retorna la ip mac o ip del procesador y le agrega una P o M dependiendo que tipo de IP sea.
LANGUAGE plpython3u
AS $$
import re
macOrId = re.compile("M[0-9A-Fa-f]{12}$|^P[0-9]{0,15}$")
if macOrId.match(udi):
	return 1
else:
	return 0
$$;

CREATE OR REPLACE FUNCTION getImageHash(image bytea) RETURNS text -- #TODO 
-- esta función debería tomar la info del campo data 17.999 o la imagen en crudo cuando se sube y generar un hash sha-256 para esa información y almacenarla en el campo 17.996 o usarla para el contructor 
-- OTRA POSIBILIDAD es que se genere el hash al exportar los datos, por ejemplo en la salida de un xml
LANGUAGE plpython3u 
AS $$

import hashlib
if (image not null):
	hash_object = hashlib.sha256(image)
	return hash_object.hexdigest()
else:
	hash_object = hashlib.sha256(b'') 
	return hash_object.hexdigest()
	# si no hay imagen cargada retorna el hash de un string vacío
$$;

--CREATE FUNCTION irisImageRecordFromJPG2000 (in processed Image:imgJPG200): irisImageRecord
--CREATE FUNCTION irisImageRecordFromPNG (in processed Image:imgPNG): irisImageRecord

INSERT (,1,getImageHash(archivo.png), ... archivo.png) INTO record17

CREATE OR REPLACE FUNCTION createIrisImageRecord (INT ELR(1), varchar(20))
returns setof irisImageRecord as $$
select $1, $2;
$$ LANGUAGE SQL;

informationDesignationCharacter idc, -- 17.002 IDC
	eyeLabel eyeLabel, -- 17.003 ELR
	sourceAgency VARCHAR(255), -- 17.004 SRC
	irisCaptureDate timestamp, -- 17.005 ICD
	horizontalLineLength hll, -- 17.006 HLL
	verticalLineLength vll, -- 17.007 VLL
	scaleUnits slc, -- 17.008 SLC
	transmittedHorizontalPixelScale positiveInteger, -- 17.009 THPS
	transmittedVerticalPixelScale positiveInteger, -- 17.010 TVPS
	compressionAlgorithm compressionAlgorithm, -- 17.011 CGA
	bitsPerPixel bpx, -- 17.012 BPX
	colorSpace colorSpace, -- 17.013 CSP
	rotationAngleOfEye hexadecimalValues, -- 17.014 RAE
	rotationUncertainty hexadecimalValues, -- 17.015 RAU
	imagePropertyCode imagePropertyCode, -- 17.016 IPC
	deviceUniqueIdentifier udi_len, -- 17.017 UDI #TODO: ver primer caracter y mac [0-9] [A-F]
	captureDeviceInfo captureDeviceInfo, -- 17.019 MMS
	eyeColor eyeColor, -- 17.020 ECL
	comment VARCHAR(126), -- 17.021 COM 
	scannedHorizontalPixelScale positiveInteger, -- 17.022 SHPS
	scannedVerticalPixelScale positiveInteger, -- 17.023 SVPS
	imageQualityScore imageQualityScore[9], -- 17.024 IQS
	efectiveAcquisitionSpectrum efectiveAcquisitionSpectrum, -- 17.025 EAS
	irisDiameter ird, -- 17.026 IRD
	specificSpectrumValues specificSpectrumValues, -- 17.027 SSV
	damagedOrMissingEye damagedOrMissingEye, -- 17.028 DME
	deviceMonitoringMode deviceMonitoringMode, -- 17.030 DMM
	subjectAcquisitionProfileIris subjectAcquisitionProfileIris, -- 17.031 IAP
	irisStorageFormat irisStorageFormat, -- 17.032 ISF
	irisPupilBoundary irisPupilBoundary, -- 17.033 IPB
	irisScleraBoundary irisScleraBoundary, -- 17.034 ISB
	upperEyelidBoundary upperEyelidBoundary, -- 17.035 UEB
	lowerEyelidBoundary lowerEyelidBoundary, -- 17.036 LEB
	nonEyelidOcclusions nonEyelidOcclusions, -- 17.037 NEO
	range positiveInteger, -- 17.040 RAN
	frontalGaze gaz, -- 17.041 GAZ
	annotationInformation annotationInformation, -- 17.092 ANN
	sourceAgencyName VARCHAR(125), -- 17.993 SAN
	associatedContext associatedContext, -- 17.995 ASC
	hash VARCHAR(64), -- 17.996 HAS #TODO: funcion que calcule el hash del 17.999 VER
	sourceRepresentation sourceRepresentation, -- 17.997 SOR
	geographicSampleAcquisitionLocation geographicSampleAcquisitionLocation, -- 17.998 GEO
	data bytea -- 17.999 DATA	-- lo = blob?

