## THEORY
Circular convolution is a mathematical operation that is like linear convolution but is performed in a 
periodic or circular manner. This is particularly useful in discrete-time signal processing where signals 
are often represented as periodic sequences. <br>
Mathematical Definition:  <br>
Given two periodic sequences x[n] and h[n], their circular convolution is defined as:  <br>
            y[n] = (x[n] ⊛ h[n]) = ∑_{k=0} ^{N-1} x[k]h[(n-k) mod N]   <br>
Applications:  <br>
• Discrete-Time Filtering: Circular convolution is used for filtering discrete-time signals.  <br>
• Digital Signal Processing: It's a fundamental operation in many digital signal processing 
algorithms.  <br>
• Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, circular convolution 
is used to simplify the implementation of linear convolution.

## OBSERVATIONS
![2024-11-05 (6)](https://github.com/user-attachments/assets/88c208b8-a33e-4316-8539-005c1a9d0961)<br>
![2024-11-05 (7)](https://github.com/user-attachments/assets/ade7f26a-15f6-4f52-838b-1f87e3058b4a)
