# neuralnetworksanddeeplearning.com
Scratchpad and exercises from the free "ebook" [Neural Networks and Deep Learning](http://neuralnetworksanddeeplearning.com/)

## Spoilers

### Chap1

#### Sigmoid neurons simulating perceptrons, part II

> Given the perceptron network for the NAND operator, when converted to a sigmoid neural net, and its weights and biases are multiplied by a positive constant, as that constant approaches infinity, the behavior of the sigmoid neural net is identical to that of the perceptron network.
> How can this fail when weight dot input + bias = 0 for one of the perceptrons?

_after the sigmoid neurons are multiplied by an increasing constant, when that constant is not an integer, one of the sigmoid neurons will receive a non-integer weight *w* and bias *b* (and possibly also input *x*) such that `w dot x + b` is no longer an integer and therefore could not equal zero. Its corresponding, former perceptron would never have this issue._

```
P = w dot x + b = 0
S = (w * 0.7) dot x + (b * 0.7) = 0 for c = 0.7

P = 2 dot 2 + -4 = 0 for w = 2, x = 2, b = -4
S = (2 * 0.7) dot 2 + (-4 * 0.7) != 0 for w = 2, x = 2, b = -4, c = 0.7
S = (1.44) dot 2 + (-1.44 * 4)
S = 2.88 + -5.76
S = -2.88
```
