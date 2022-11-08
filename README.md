# notebook

  The model has been developed  by combining sentiment analysis with historical stock data of the company as well as real time news data by web scraping to provide traders with forecasts for buying and selling equity stocks with estimated Target and Stoploss. 
  
To increase rewards and reduce losses, Reinforcement learning has been used. After data is preprocessed, it is fed into the learning phase which comprises the environment and the training agent.

The Environment has been designed by including factors such as stock price,volume and technical indicators while the Actor Critic(A2C) algorithm acts as training agent.

To make predictions based on the previous state in the given environment, Actor critic algorithm has been used. By rewarding the actor positively for each correct prediction and negatively for a wrong prediction, the model has been trained  to predict whether the trader should buy or sell the stock.
