class Appointment
    attr_accessor :location, :purpuse, :hour, :min
    def initialize (location, purpuse, hour, min)
        @location=location
        @purpuse=purpuse
        @hour=hour
        @min=min
    end
    
end
class OneTimeAppointment<Appointment
    attr_accessor :day, :month, :year

    def initialize (location, purpuse, hour, min, day, month, year)
        super(location, purpuse, hour, min)
        @day=day
        @month=month
        @year=year
    end
    def occurs_on?(day, month, year)
        @day==day && @month==month && @year==year
    end

    def to_s
        puts "Reunión mensual en #{location} sobre #{purpuse} el #{day}/#{month}/#{year} a la(s) #{hour}:#{min}"
    end

end


class MonthlyAppointment<Appointment
    attr_accessor :day
    def initialize (location, purpuse, hour, min, day)
        super(location, purpuse, hour, min)
        #Se debe especificar cuando no son la misma cantidad de variables, en el mismo orden de la clase padre
        @day=day
    end

    def occurs_on?(day)
        @day==day
    end

    def to_s()
        puts "Reunión mensual en #{location} sobre #{purpuse} el día #{day} a la(s) #{hour}:#{min}"
    end

end

class DailyAppointment<Appointment
    def to_s()
        puts "Reunión mensual en #{location} sobre #{purpuse} a la(s) #{hour}:#{min}"
    end
    def occurs_on?(hour,min)
        @hour==hour && @min==min
    end

end






#puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23).to_s

#puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15).to_s
#puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15).occurs_on?(8,25)


puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019).to_s