class TestCase
  def assert_equal(a,b)
    if a == b
      puts 'OK'
    else
      puts 'NG'
    end
  end
end


class SuccessTestCase < TestCase
  def test
    assert_equal(5, 2 + 3)
  end
end

class FailureTestCase < TestCase
  def test
    assert_equal(6, 2 + 3)
  end
end


if $0 == __FILE__
  success = SuccessTestCase.new
  success.test # -> "OK"
  failure = FailureTestCase.new
  failure.test # -> "NG
end
