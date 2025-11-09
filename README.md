# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary

In this lab, we went beyond the D-latch from last week and got into D-Flip Flops and then even deeper into JK and T Flip flops. Specifically they are edge sensitive.
## Lab Questions

### What is different between edge and level sensitive circuits?
Essentially, they differ in how inputs change when the Enable is 1. Level Sensitve circuits will allow the D value to change as long as the Enable is 1. However Edge Sensitive circuits will only allow the D value to change
one time per Enable is 1.
### Why is it important to declare initial state?
It's important to do so because the programmed circuit will not know what it's initial state is, leading to an unpredictable instance which can result in crashes and such. Using an initial state can allow for
predictable behavior and ensure the circuit is working properly.
### What do edge sensitive circuits let us build?
Since Edge Sensitive circuits are designed to allow only one change per Enable, they can create things that allow for precise operations that can track an input at any exact time. Hence why these circuits are often called
clocks. 
