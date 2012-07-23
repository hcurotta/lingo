class WordsController < ApplicationController
  
  def index
  @words = Word.find(:all, :order => "vote DESC", :conditions => ['flagged = ?', false])
  
  end
  
  def flagged
    @words = Word.find(:all, :order => "vote DESC", :conditions => ['flagged = ?', true])
    
  end
  
  def delete
    w = Word.find(params[:id])
    w.destroy
    redirect_to "/words/flagged"
    
  end
  
  def new
    @word = Word.new    
  end
  
  def create
    w = Word.new
    w.term = params[:word][:term]
    w.def = params[:word][:def]
    w.vote = 0
    w.flagged = false
    w.save
    
    redirect_to "/words"
  end
  
  def vote_up
    w = Word.find(params[:id])
    w.vote += 1 
    w.save
    
    redirect_to "/words"
  end
  
  def flag
    
    w = Word.find(params[:id])
    w.flagged = true 
    w.save
    
    redirect_to "/words"
  end
  
  def unflag
    w = Word.find(params[:id])
    w.flagged = false 
    w.save
    
    redirect_to "/words/flagged"
  end
  
end