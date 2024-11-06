## Theory 
#### Discrete Fourier Transform (DFT) 
The Discrete Fourier Transform (DFT) is a mathematical transformation used to analyze the    frequency 
content of discrete signals. For a sequence x[n] of length N, the DFT is defined as: <br>
X[𝑘]=
$$\sum_{𝑛=0}^{N}$$ 𝑥[𝑛]⋅𝑒xp(−𝑗2𝜋𝑛𝑘/N), 𝑘=0,1,2,...,𝑁−1<br>
• X[k] is the DFT of the sequence x[n]. <br>
• The exponential factor represents 𝑒xp(−𝑗2𝜋𝑛𝑘/N) the complex sinusoidal basis functions. 
• The DFT maps the time-domain signal into the frequency domain. 
 
### Inverse Discrete Fourier Transform (IDFT)Method: 
The Inverse Discrete Fourier Transform (IDFT) is used to convert a frequency-domain sequence X[k] 
back into its time-domain sequence x[n]. The IDFT is defined as: <br>
x[𝑛]=1/𝑁
$$\sum_{k=0}^{N}𝑋[𝑘]⋅𝑒xp(𝑗2𝜋𝑛𝑘/N)$$, 𝑛=0,1,2,...,𝑁−1 <br>
• The IDFT takes the frequency components X[k] and reconstructs the original sequence x[n]. <br>
• The exponential factor 𝑒xp(𝑗2𝜋𝑛𝑘/N) is the inverse of the DFT’s complex sinusoidal basis functions. 
## OBSERVATIONS
![Screenshot (229)](https://github.com/user-attachments/assets/0559f66a-c667-40c3-bd76-f3bb17b8317b)
![Screenshot (230)](https://github.com/user-attachments/assets/5e4f3b9c-0a90-4622-ab7c-2afeb19d0dc1)
![Screenshot (231)](https://github.com/user-attachments/assets/003cc5c3-ed07-4e34-a96e-cd00a3dfc76c)
