function fill= fill_factor(od,di)
% fill_factor(do,di)
% do = outter diameter
% di = inner diameter
%
%
% Returns the fill factor
    fill = (od-di)/(od+di);   
end
