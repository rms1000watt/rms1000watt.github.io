+++
date = "2017-07-15T8:30:00-08:00"
title = "Analytics Cheat Sheet"
description = "An evergreen Analytics Cheat Sheet"
tags = ["Analytics"]
+++


#### Linear vs Non-Linear

Linear if:

$$f(x + y) = f(x) + f(y)$$
$$f(ax) = a f(x)$$


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

#### Linear Least Squares

Use [QR Decomposition](https://en.wikipedia.org/wiki/QR_decomposition).
