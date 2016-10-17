class User:
  def __init__(self, firstname, lastname, handle, email, password):
    self.firstname = firstname
    self.lastname = lastname
    self.handle   = handle
    self.email    = email
    self.password = password
    self.tweets   = []
    self.retweet  = []
    self.number_rt= 0
    self.number_tweets = 0


  
    
  def login(self, email, password):
    if self.email == email and self.password == password:
      return  True
    else:
      return false
  
  def tweet(self, tweet):
    self.handle = handle
    self.tweets.append(tweet,self.handle)

    self.number_tweets +=1

    return self.tweets

  def retweet(self,rt):
      self.retweet = self.retweet.append(tweet(self,rt))#Retweet is considered a tweet
      self.number_rt +=1
      self.number_tweets +=1
      return self.retweet
      


    
