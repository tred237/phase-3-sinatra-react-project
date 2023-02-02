class Client < ActiveRecord::Base
    has_many :routines

    def summary_stats
        summary_stats = {}
        routines = self.routines
        summary_stats['total_sets'] = sum_stats(routines, 'sets')
        summary_stats['total_reps'] = sum_stats(routines, 'reps')
        summary_stats['total_miles'] = sum_stats(routines, 'distance_miles')
        summary_stats['total_length'] = sum_stats(routines, 'length_of_time_minutes')
        summary_stats['unique_exercises'] = total_categories(routines, 'exercise')
        summary_stats['days_worked_out'] = total_categories(routines, 'day')
        summary_stats
    end

    def total_exercises(r)
        r.length
    end

    def sum_stats(r, stat)
        r.map{|i| i[stat].class.superclass == Numeric ? i[stat] : 0}.sum
    end

    def total_categories(r, categeory)
        r.map{|i| i[categeory]}.uniq.length
    end
end