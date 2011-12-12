module RatingsHelper
    def score(website)
    x=0
    n=0
    @rating = Rating.all
    @rating.each do |i|
      if (website.id.to_i == i.website_id.to_i)
        x=x+(i.rating.to_i)
        n=n+1
      end
    end
    if(n==0)
    n
    else
    x
    end
  end
end
