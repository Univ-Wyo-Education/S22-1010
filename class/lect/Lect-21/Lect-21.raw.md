m4_include(../../../setup.m4)

# Lecture 21 - Text Classification Example

## This Weeks Lab

Take the text classification example and use it.

## Text Classification Uses

1. Sentiment Analysis on Product Reviews
2. Classification of Email as SPAM
3. Classification of Medical Data - Prediction of Symptoms to Disease
4. Social Media Text Classification



## How CNN works - Convectional Neural Networks

### Text is split into chunks  

The input may be split into areas as in an image - but this is a text example.
So think of Paris of words, word triplets etc.

This is referedd to as "pooling" - with an image you may have averages -
with text it is just proximate grouping.

![Average-and-max-pooling-operations_W640.jpg](Average-and-max-pooling-operations_W640.jpg)

Text looks like this

![text-down-sample.png](text-down-sample.png)

### network is built out of layers that recognize chunks

![Diagram-for-Auto-encoder-The-encoder-and-decoder-transition-can-be-represented-with_W640.jpg](Diagram-for-Auto-encoder-The-encoder-and-decoder-transition-can-be-represented-with_W640.jpg)

![The-overall-architecture-of-the-Convolutional-Neural-Network-CNN-includes-an-input.png](The-overall-architecture-of-the-Convolutional-Neural-Network-CNN-includes-an-input.png)


## Text Classification Example

```
m4_include(imdb/imdb.py.nu)
```

