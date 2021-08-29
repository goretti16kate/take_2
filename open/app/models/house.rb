class House < ApplicationRecord
    has_many :reviews
    #creates a uniq slug based off of the house name when new house is created
    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end

    #method that calculates the average overall rating
    def avg_score
        return 0 unless reviews.size.positive?

        reviews.average(:score).to_f.round(2)
    end
end
