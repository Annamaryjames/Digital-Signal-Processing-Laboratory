## THEORY
In digital signal processing, Finite Impulse Response (FIR) filters are widely used because they provide a linear phase response, making them ideal for applications where phase distortion must be minimized. FIR filters can be implemented using various design methods, among which the windowing method is simple and effective. An FIR filter has a finite impulse response, achieved by truncating the ideal, infinite impulse response. This truncation is performed with a window function to make the filter realizable and control the ripple and decay rates in the frequency response.<br>

Window functions modify the ideal impulse response to reduce unwanted frequency components and control the sharpness of the transition between passband and stopband. The following are the equations for the commonly used windows:
1.	Rectangular Window:
	The rectangular window is defined as:
 
 w(n)=1,0≤n≤N−1
 
2.	Hamming Window:
   
  The Hamming window is defined as:
 
 w(n)=0.54−0.46cos(2πn/N−1),0≤n≤N−1

3.	Hanning Window:

 The Hanning window is defined as:
 
 w(n)=0.5(1−cos(2πn/N−1)),0≤n≤N−1

4.	Bartlett Window:

The Bartlett window, also known as the triangular window, is defined as:<br>
w(n)=2n/N−1,0≤n≤N−1/2
    =2−2n/N−1,N−1/2<n≤N−1

The FIR filters are designed by specifying different forms for the desired impulse response hd[n] and then using the window functions to obtain realizable filter coefficients h[n].
1.	Low-Pass Filter (LPF):
	The ideal impulse response for a low-pass filter is: hd(n)=sin(ωc(n−α))/π(n−α),α=N−1/2
2.	High-Pass Filter (HPF):
	The high-pass filter is derived by subtracting the low-pass response from a delta function: hd(n)=sin(π(n−α))−sin(ωc(n−α))/π(n−α)
3.	Band-Pass Filter (BPF):
	For a band-pass filter with cutoff frequencies ωc1and ωc2, the ideal impulse response is: hd(n)=sin(ωc2(n−α))−sin(ωc1(n−α))/π(n−α)
4.	Band-Stop Filter (BSF):
  The band-stop filter blocks a frequency band by combining low-pass and high-pass responses: hd(n)=sin(ωc(n−α))−sin(ωc1(n−α))+sin(π(n−α))/π(n−α) 
## OBSERVATIONS
High pass filter<br>
![2024-11-09 (3)](https://github.com/user-attachments/assets/00d6f681-a680-4a18-9dd0-73c66ad63cb7)

Low pass filter<br>
![2024-11-09 (4)](https://github.com/user-attachments/assets/ed3e6d15-e591-4032-a720-f1f1e6d5acf2)
Band pass filter<br>
![2024-11-09 (5)](https://github.com/user-attachments/assets/50435eab-ed0c-4622-a157-8c80a5c7eaab)
Band stop filter<br>
![2024-11-09 (6)](https://github.com/user-attachments/assets/5c14aea7-1bd8-4be6-81d9-62b17eafdf89)

