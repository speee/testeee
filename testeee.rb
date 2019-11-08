# Copyright (C) 2019  Teppei Komata

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class TestCase
  def assert_equal(a,b)
    if a == b
      puts 'OK'
    else
      puts 'NG'
    end
  end

  def run
    class_methods = self.class.instance_methods(false)
    for i in class_methods do
      eval i.to_s
    end
    #puts c.kind_of?(Array)
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

class CalcTestCase < TestCase
  def test_add
    assert_equal(5,2 + 3)
  end

  def test_subtract
    assert_equal(-1,2 - 3)
  end
end


if $0 == __FILE__
  success = SuccessTestCase.new
  success.run # -> "OK"
  failure = FailureTestCase.new
  failure.run # -> "NG

  calc = CalcTestCase.new
  calc.run

end
