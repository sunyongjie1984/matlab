month=input('month=');
switch month
    case{3,4,5}
        season='spring'
    case{6,7,8}
        season='summer'
    case{9,10,11}
        season='autumn'
    otherwise
        season='winter'
end
