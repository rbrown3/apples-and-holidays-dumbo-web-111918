require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter][:christmas] << supply
    holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, _holiday_hash|
        puts "#{season.to_s.capitalize}:"
        _holiday_hash.each do |holiday, supplies|
            capitalized_holiday = holiday.to_s.split('_').each {|i| i.capitalize!}.join(' ')
            puts "  #{capitalized_holiday}: #{supplies.join(', ')}"
        end
        end
end

def all_holidays_with_bbq(holiday_hash)
    new_array = []
    holiday_hash.each do |season, holiday_stash|
        holiday_stash.each do |holiday_name, supplies_array|
            supplies_array.each do |supply|
                if supply == "BBQ"
                    new_array << holiday_name
                end
            end
        end
    end
    new_array
end







