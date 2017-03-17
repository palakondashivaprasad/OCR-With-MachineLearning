# ***OCR with Machine Learning in Matlab:***

----------
### *Aim*:

----------


To recognize hand written text written on form with the Red sketch and convert it into typed text using matlab interface. If the coneverted text is not correct, the training is done form the errors and training set is updated.

-------------
### *Softwares Used*:

-------------
Matlab


-------------
### *Language Written*:

-------------
Matlab


-------------
### *Introduction*:

-------------
Optical Character Recognition(OCR) is the mechanical  or electrical conversion of images of typewritten or printed text into machine-encoded text. It is widely used as a form of data entry from printed paper data records, whether passport documents, invoices, bank statements, computerized receipts, business cards, mail, printouts of static-data, or any suitable documentation. It is a common method of digitizing printed texts so that it can be electronically edited, searched, stored more compactly, displayed on-line, and used in machine processes such as machine translation, text-to-speech, key data and text mining. OCR is a field of research in pattern recognition, artificial intelligence and computer vision.



-------------
### *Algorithm*:

-------------
Charcaters and Numbers are trained against handwritten sets of characters, numbers. The filled form with red sketch is thresholded so that only red pixels are passed. Then the image is converted to gray scale image. Then it is devided into lines by making use of the space between the lines. After the line is made it is labelled to find the connected componenets. Then each character is tested using multisvm function with training set and get the output. If the output is not coorect the user can update the training set from the errors. 

-------------
### *Usage*:

-------------
Run removeBlackColor.m file to load capture an image of the form with the webcam and recognise the text in it.


This code is edited using Matlab
