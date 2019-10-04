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
  alias_method :run, :test
end

class FailureTestCase < TestCase
  def test
    assert_equal(6, 2 + 3)
  end
  alias_method :run, :test
end


if $0 == __FILE__
  success = SuccessTestCase.new
  success.run # -> "OK"
  failure = FailureTestCase.new
  failure.run # -> "NG
end
