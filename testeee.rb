def assert_equal(a,b)
    if a == b
        puts 'OK'
    else
        puts 'NG'
    end
end



if $0 == __FILE__
    assert_equal(5,2+3);
end
