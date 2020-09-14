class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title =~ (/Won't Believe|Secret|Top \d+|Guess/)
            record.errors[:title] << "Please add a clickbait title to reel in dem readers."
        end
    end
end