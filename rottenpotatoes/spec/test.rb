require 'rails_helper'

describe Movie do
    
    describe '#similar_movies' do
        
        it 'should find movies by the same director' do
            movie1 = Movie.create! :director => "Paul Newman"
            movie2 = Movie.create! :director =>  "Paul Newman"
            puts movie1.movies_with_same_director;
            puts movie2.director;
            expect(movie1.movies_with_same_director).to include(movie2.title)
        end 
        
        it 'should find movies by different director' do
            movie1 = Movie.create! :director => "Paul Newman"
            movie2 = Movie.create! :director => "James Cameron"
            expect(movie1.movies_with_same_director).not_to include(movie2.title)
        end 
        
    end
end