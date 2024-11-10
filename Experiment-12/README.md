## THEORY
Linear convolution is one of the fundamental operations used extensively in signal and system in electrical engineering. It has applications in areas like audio processing, signal filtering, imaging, communication systems and more. 
In simple terms, linear convolution is the process of combining two signals or functions to produce a third signal or function. Formally, the linear convolution of two functions f(t) and g(t) is defined as: 

The formula for linear convolution of two discrete signals x[n] and h[n] is given by:

𝑦[𝑛] = ∑〖 x[k].h[n-k]〗

where:

 • x[n] is the input signal. 
 
• h[n] is the impulse response of the system. 

• y[n] is the output signal. 

In the context of linear convolution in DSP, this operation is applied to digital signals. DSP systems utilize algorithms to perform convolution efficiently, often leveraging Fast Convolution methods to handle large datasets and real-time processing.

 Applications of Linear Convolution : 

•Filtering: Used in digital filters to process signals.

• Image Processing: Applied for edge detection and blurring. 

• System Analysis: Helps in analyzing LTI systems in response to inputs


Procedure 

Open Code Composer Studio,

Click on File - New – CCS Project 

Select the Target – C674X Floating point DSP , TMS320C6748 , and

Connection – Texas Instruments XDS 100v2 USB Debug Probe and Verify. 

Give the project name and select Finish. 

Type the code program for generating the sine wave and choose File – Save As and then save the program with a name including ‘main.c’. 

Delete the already existing main.c program. 

Select Debug and once finished, select the Run option. 

In the Debug perspective, click Resume to run the code on DSP. 

## OBSERVATION

Xn

0x80010000 - 1

0x80010004 - 2

0x80010008 - 3

Hn

0x80011000 - 1

0x80011004 - 2

XnLength

0x80012000 - 3

HnLength

0x80012004 - 2

Output

0x80013000 - 1

0x80013004 - 4

0x80013008 - 7

0x8001300C - 6

Observe the console output to verify the convolution result.

