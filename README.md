# central-limit-theorem

A MATLAB project which applies the central limit theorem (CLT) on probability density functions (PDFs) and cumulative distribution functions (CDFs) of different probability distributions such as uniform, exponential, Bernoulli, and Poisson distribution.

The central limit theorem (CLT) implies that given ![sequence](https://render.githubusercontent.com/render/math?math=X_1,X_2,\ldots,X_n), a sequence of independent and identically distributed (IID) random variables with expected value ![expected_value](https://render.githubusercontent.com/render/math?math=\mu_x) and variance ![variance](https://render.githubusercontent.com/render/math?math=\sigma_x^2), the cumulative distribution function (CDF) of ![sum](https://render.githubusercontent.com/render/math?math=Z_n=\sum_{i=1}^n\frac{X_i-n\mu_X}{\sqrt{n\sigma_X^2}}) has the property ![equation](https://render.githubusercontent.com/render/math?math=\lim_{n\to\infty}F_{Z_n}(z)=\Phi(z)). Briefly, the theorem states that as n increases, the sum of n IID random variables converges to a [normal distribution](https://en.wikipedia.org/wiki/Normal_distribution).

This homework was assigned for the Probability for Electrical Engineers (EE 313) course in the Fall 2021-22 semester.



## Run on Terminal

```sh
matlab -nodisplay -nosplash -nodesktop -r "run('main.m');exit;"
```



## Proof

### 1) E[A] and Var[A]

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Proof/Q1/q1.jpg" width="800">
</p>

```
πΈ[π΄] = πΈ[πΎ1 + πΎ2 + β― + πΎπ] =
πΈ[πΎ1] + πΈ[πΎ2] + β― + πΈ[πΎπ] =
πΈ[πΎ] + πΈ[πΎ] + β― + πΈ[πΎ] =>
πΈ[π΄] = π Β· πΈ[πΎ]

πππ[π΄] = πππ[πΎ1 + πΎ2 + β― + πΎπ] =
πππ[πΎ1] + πππ[πΎ2] + β― + πππ[πΎπ] =
πππ[πΎ] + πππ[πΎ] + β― + πππ[πΎ] =>
πππ[π΄] = π Β· πππ[πΎ]
```



## Figures

### 2) Uniform PDF

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q2/q2_1.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q2/q2_2.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q2/q2_3.jpg" width="400" height="250">
</p>


### 3) Exponential PDF

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q3/q3_1.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q3/q3_2.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q3/q3_3.jpg" width="400" height="250">
</p>


### 4) Bernoulli CDF

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q4/q4_1.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q4/q4_2.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q4/q4_3.jpg" width="400" height="250">
</p>


### 5) Poisson CDF

<p align="left">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q5/q5_1.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q5/q5_2.jpg" width="400" height="250">
  <img alt="Figure" src="https://raw.githubusercontent.com/arasgungore/central-limit-theorem/main/Figures/Q5/q5_3.jpg" width="400" height="250">
</p>



## Author

π€ **Aras GΓΌngΓΆre**

* LinkedIn: [@arasgungore](https://www.linkedin.com/in/arasgungore)
* GitHub: [@arasgungore](https://github.com/arasgungore)
