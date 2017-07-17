+++
date = "2017-07-15T8:30:00-08:00"
title = "Analytics Cheat Sheet"
description = "An evergreen Analytics Cheat Sheet"
tags = ["Analytics"]
+++


#### Linear vs Nonlinear

Linear if:

$$f(x + y) = f(x) + f(y)$$
$$f(\alpha x) = \alpha f(x)$$

#### Linear Algebra

##### Dot Product

<div>$$\vec{a}\cdot\vec{b} = a_{1}b_{1} + a_{2}b_{2} + ... = |\vec{a}||\vec{b}|\cos{\theta} $$</div>

##### Projection

The projection of $\vec{b}$ onto $\vec{a}$ is:

<div>$$ proj_{\vec{a}}\vec{b} = \frac{\vec{a}\cdot\vec{b}}{|\vec{a}|^2}\vec{a} $$</div>

##### Orthogonal Matrix

A matrix $Q$ is orthogonal if:

<div>$$Q^T Q = Q Q^T = I$$</div>

Therefore, a matrix $Q$ is orthogonal if:

<div>$$Q^T = Q^{-1}$$</div>

##### Jacobian

<div>$$ \mathbf J_{ij} = \frac{\partial f_{i}}{\partial x_{j}} =  \begin{bmatrix} 
\frac{\partial f_{1}}{\partial x} & \frac{\partial f_{1}}{\partial y}  \\
\frac{\partial f_{2}}{\partial x} & \frac{\partial f_{2}}{\partial y} \\
\end{bmatrix}$$</div>

###### Example

<div>$$ \mathbf f(x,y) = \begin{bmatrix} 
x^2 y \\
5x + \sin{y} \\
\end{bmatrix}$$</div>

<div>$$
\mathbf J  = \begin{bmatrix} 
2xy & x^2  \\
5 & \cos{y} \\
\end{bmatrix}
$$</div>

#### Linear Regression

Can use Least Squares with [QR Decomposition](https://en.wikipedia.org/wiki/QR_decomposition). As seen in [this project](https://github.com/sajari/regression/blob/master/regression.go#L162-L176).

#### Nonlinear Regression

Can use Ordinary Least Squares (OLS) or Weighted Least Squares when observations are not equally reliable.

#### Nonlinear Least Squares

Given a set of data points $(x\_{1},y\_{1}), (x\_{2},y\_{2}), ..., (x\_{m},y\_{m})  $ and a model function $f(x,\beta)$ that depends on $\beta = (\beta\_{1}, \beta\_{2}, ..., \beta\_{n})$ with $m \ge n$ minimize the sum of squares (minimize residuals) $S$:

<div>$$ S = \sum_{i=1}^m r_{i}^2$$</div>

where $r$ is the residual

<div>$$r_{i} = y_{i} - f(x_{i}, \beta_{j})$$</div>

by finding the minimum of $S$ (by setting the gradient equal to 0)

<div>$$ \frac{\partial S}{\partial \beta_{j}} = 2 \sum_{i} r_{i} \frac{\partial r_{i}}{\partial \beta_{j}} = 0 $$</div> 

for $j = 1, 2, ... n$. Since this does not have an analytical solution, an initial value for $\beta$ must be chosen then iteratively refined:

<div>$$ \beta_{j} \approx \beta_{j}^{k+1} = \beta_{j}^{k} + \Delta\beta_{j} $$</div>

for $k$ iterations until sufficiently refined. Continue to follow the [proof](https://en.wikipedia.org/wiki/Non-linear_least_squares) and get a forumlation in matrix notation for nonlinear least squares:

<div>$$ (\mathbf J^T \mathbf J) \mathbf\Delta \mathbf\beta = \mathbf J^T \mathbf\Delta \mathbf y $$</div>

where $\mathbf J$ is the Jacobian. This is the [Gauss-Newton algorithm](https://en.wikipedia.org/wiki/Gauss%E2%80%93Newton_algorithm). Other methods exist for calculating nonlinear least squares:

- QR Decomposition
- Singular Value Decomposition
- Gradient Descent Algorithm
- Levenberg-Marquardt Algorithm

<div></div>
#### Least Squares Considerations

The goal is to minimize the residuals by setting the gradient equal to 0 (finding the minimum of a curve along a dimension). However, for polynomials with degree 2 and higher or many other functions, multiple minima can exist. Loosely speaking, if the refinement process is wide enough to span across all minima, it is likely the global minimum will be found.

---

(Built with [MathJax](https://www.mathjax.org/) and a [helpful guide](http://csrgxtu.github.io/2015/03/20/Writing-Mathematic-Fomulars-in-Markdown/))