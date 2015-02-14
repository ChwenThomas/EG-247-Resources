
# Using Laplace Transforms for Circuit Analysis

Dr Chris Jobling ([c.p.jobling@swansea.ac.uk](mailto:c.p.jobling@swansea.ac.uk))

Digital Technium 123

Office Hours: 12:00-13:00 Mondays

You can view the notes for this presentation in [HTML](http://cpjobling.github.io/EG-247-Resources/week3/circuit_analysis.html
  ) and [PDF](http://cpjobling.github.io/EG-247-Resources/week3/circuit_analysis.pdf).

  The source code of this presentation is available in Markdown format from GitHub: [circuit_analysis.md](https://github.com/cpjobling/EG-247-Resources/tree/master/week3/circuit_analysis.md).

The GitHub repository [EG-247 Resources](https://github.com/cpjobling/EG-247-Resources)
also contains the source code for all the Matlab/Simulink
examples and the Laboratory Exercises.

## This Week

This week's sessions are based on Chapter 4 **Circuit Analysis with Laplace
Transforms** from Steven T. Karris [Signals and Systems: with MATLAB Computing
and Simulink Modelling (5th
Edition)](http://site.ebrary.com/lib/swansea/docDetail.action?docID=10547416)
[You need University Login to access]

## Today's Agenda

We look at applications of the Laplace Transform for

* Circuit transformation from Time to Complex Frequency
* Complex impedance
* Complex admittance


# Circuit Transformation from Time to Complex Frequency

## Resistive Network - Time Domain

![Resistive Network - Time Domain](pictures/resistive_time.png)

## Resistive Network - Complex Frequency Domain

![Resistive Network - Complex Frequency Domain](pictures/resistive_freq.png)

## Inductive Network - Time Domain

![Inductive Network - Time Domain](pictures/inductive_time.png)

## Inductive Network - Complex Frequency Domain

![Inductive Network - Complex Frequency Domain](pictures/inductive_freq.png)

## Capacitive Network - Time Domain

![Capacitive Network - Time Domain](pictures/capacitive_time.png)

## Capacitive Network - Complex Frequency Domain

![Capacitive Network - Complex Frequency Domain](pictures/capacitive_freq.png)

# Examples

## Example 1

Use the Laplace transform method and apply Kichoff's Current Law (KCL) to find
the voltage $v_c(t)$ across the capacitor for the circuit below given that
$v_c(0^-) = 6$ V.

![Circuit for Example 1](pictures/example1_2.png)

## Example 2

Use the Laplace transform method and apply Kichoff's Voltage Law (KVL) to find
the voltage $v_c(t)$ across the capacitor for the circuit below given that
$v_c(0^-) = 6$ V.

![Circuit for Example 2](pictures/example1_2.png)

## Example 3

In the circuit below, switch $S_1$ closes at $t=0$, while at the same time,
switch $S_2$ opens. Use the Laplace transform method to find
$v_{\mathrm{out}}(t)$ for $t > 0$.

![Circuit for Example 3](pictures/example3.png)

----

Show with the assistance of MATLAB (See [solution3.m](matlab/solution3.m))
that the solution is

$$V_{\mathrm{out}}=\left(1.36e^{-6.57t}+0.64e^{-0.715t}\cos 0.316t -
1.84e^{-0.715t}\sin 0.316t\right)u_0(t)$$

and plot the result.

## Plot of time response

![Plot of time response](pictures/response.png)

## Complex Impedance Z(s)

Consider the $s$-domain RLC series circuit, wehere the initial conditions are
assumed to be zero.

![Complex Impedance $Z(s)$](pictures/impedence.png)

----

For this circuit, the sum

$$R + sL + \frac{1}{sC}$$

respresents that total opposition to current flow. Then,

$$I(s) = \frac{V_s(s)}{R + sL + 1/(sC)}$$

and defining the ratio $V_s(s)/I(s)$ as $Z(s)$, we obtain

$$Z(s) = \frac{V_s(s)}{I(s)} = R + sL + \frac{1}{sC}$$

----

The $s$-domain current $I(s)$ can be found from

$$I(s) = \frac{V_s(s)}{Z(s)}$$

where

$$Z(s) = R + sL + \frac{1}{sC}.$$

Since $s = \sigma + j\omega$ is a complex number, $Z(s)$ is also complex and is
known as the *complex input impedance* of this RLC series circuit.

## Exercise

Use the previous result to give an expression for $V_c(s)$

## Example 4

For the network shown below, all the complex impedence values are given in
$\Omega$ (ohms).

![Circuit for example 4](pictures/example4.png)

----

Find $Z(s)$ using:

1. nodal analysis
2. successive combinations of series and parallel impendences

## Complex Admittance Y(s)

Consider the $s$-domain GLC parallel circuit shown below where the initial
conditions are zero.

![Complex admittance $Y(s)$](pictures/admittance.png)

----

For this circuit

$$GV(s)+ \frac{1}{sL}V(s) + sCV(s) = I_s(s)$$

$$\left(G+ \frac{1}{sL} + sC\right)V(s) = I_s(s)$$

Defining the ratio $I_s(s)/V(s)$ as $Y(s)$ we obtain

$$Y(s)=\frac{I_s(s)}{V(s)} = G+ \frac{1}{sL} + sC = \frac{1}{Z(s)}$$

----

The $s$-domain voltage $V(s)$ can be found from

$$V(s) = \frac{I_s(s)}{Y(s)}$$

where

$$Y(s) = G + \frac{1}{sL} + sC.$$

$Y(s)$ is complex and is known as the *complex input admittance* of this GLC
parallel circuit.

## Example 5 - Do It Yourself

Compute $Z(s)$ and $Y(s)$ for the circuit shown below. All impedence values are
in $\Omega$ (ohms). Verify your answers with MATLAB.

![Circuit for Example 5](pictures/example5.png)

## Answer 5

$$Z(s) = \frac{65s^4 + 490s^3 + 528s^2 + 400s + 128}{s(5s^2 + 30s + 16)}$$

$$Y(s) = \frac{1}{s} = \frac{s(5s^2 + 30s + 16)}{65s^4 + 490s^3 + 528s^2 + 400s
+ 128}$$

Matlab verification: [solution5.m](files/matlab/solution5.m)

## Next Lesson

* [Transfer Functions of Circuits](week3/transfer_functions.html) ([Notes PDF](week3/transfer_functions.pdf), [Slides PDF](week3/transfer_functions.slides.pdf))

## Homework

Do the end of the chapter exercises (Section 4.7 - questions 1 to 4) from the
textbook. Don't look at the answers until you have attempted the problems.

## Lab Work

In the lab, week on Friday, we will see the use of Matlab and Simulink in the
solution of circuit problems.
