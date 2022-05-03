
m4_include(../../../setup.m4)

# Final, 1010

Due by Midnight on May 13.  Upload answers.

Turn in by uploading your answer.


Question 1. 200pts. Hand trace the following code showing the line number being executed and
the values that the variable has.  Show the output.   You can create the answer with an Excel
spreadsheet or on a mac with Numbers.   Also a scanned image of a by-hand trace will work.
An "empty" cell is an un-assigned value.

```
m4_include(q1.py.nu)
```






<div class="pagebreak"></div>

## Question 2

200pts.  A significant problem with Machine Learning (ML) is systemic bias.
Amazon used a system for filtering job applicant resumes that was shown to to have
a gender bias.   A crime predation system was shown to have be racist.  A system
for rec omening if inmates receive parole has been shown to be racist.

Write a 2 to 3 page paper on why systemic bias occurs in ML and what you can do 
to prevent it.

Turn in a .pdf of your paper.

### References

1. What is Bias in ML systems: [https://towardsdatascience.com/understanding-and-reducing-bias-in-machine-learning-6565e23900ac](https://towardsdatascience.com/understanding-and-reducing-bias-in-machine-learning-6565e23900ac)
1. Biased Parole System: [https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing)
2. Biased again women: [https://www.reuters.com/article/us-amazon-com-jobs-automation-insight/amazon-scraps-secret-ai-recruiting-tool-that-showed-bias-against-women-idUSKCN1MK08G](https://www.reuters.com/article/us-amazon-com-jobs-automation-insight/amazon-scraps-secret-ai-recruiting-tool-that-showed-bias-against-women-idUSKCN1MK08G)
3. Predictive Police ML biased [https://www.mic.com/articles/156286/crime-prediction-tool-pred-pol-only-amplifies-racially-biased-policing-study-shows](https://www.mic.com/articles/156286/crime-prediction-tool-pred-pol-only-amplifies-racially-biased-policing-study-shows)
4. Longevity Biotech is promoting/using ML.  [https://psblab.org/?p=697](https://psblab.org/?p=697)






<div class="pagebreak"></div>

## Question 3

200pts.  Write a 2 to 3 paper page on how you would go about generating Deep Fake voice
content and how it can be used as a successful business.  Explain why this will be a legal business.
Some sample references are below.  Add your own.

Turn in a .pdf of your paper.

### References

1. Voice Deep Fake: [https://www.reuters.com/technology/that-radio-dj-you-hear-might-already-be-robot-2021-12-02/](https://www.reuters.com/technology/that-radio-dj-you-hear-might-already-be-robot-2021-12-02/)
2. Video Deep Fake: [https://www.theguardian.com/technology/2020/jan/13/what-are-deepfakes-and-how-can-you-spot-them](https://www.theguardian.com/technology/2020/jan/13/what-are-deepfakes-and-how-can-you-spot-them)
3. 14 Deep Fakes:  [https://www.creativebloq.com/features/deepfake-examples](https://www.creativebloq.com/features/deepfake-examples)
4. A threat to Business Security: [https://securityintelligence.com/articles/why-deepfake-audio-technology-is-a-real-threat-to-enterprise-security/](https://securityintelligence.com/articles/why-deepfake-audio-technology-is-a-real-threat-to-enterprise-security/)
5. Deep fake can be a boon too: [https://timreview.ca/article/1282](https://timreview.ca/article/1282)




<div class="pagebreak"></div>

## Question Extra.

If you think that you need extra credit or you want to skip one of the questions above...
An extra Problem (worth the same a s a lab, or 1/3 of final)

200pts.  Implement [Ackermann Function](https://en.wikipedia.org/wiki/Ackermann_function) in Python with a test case.
Test for m = 1, n = 2.  This should have an return value of 4, based on the Wikipedia article.  Include your test case in the code.  Turn in the working code.

Ackermann function is defined as:

```
A(m,n) = { n + 1             if m = 0 and n > 0
         { A(m-1, 1)         if m > 0 and n = 0
         { A(m-1,A(m,n-1))   if m > 0 and n > 0
```

