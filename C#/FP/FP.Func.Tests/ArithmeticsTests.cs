using Microsoft.CSharp.RuntimeBinder;
using Xunit;

namespace FP.Func.Tests
{
    public class ArithmeticsTests
    {
        [Fact]
        public void Two_times_three_is_four_when_a_predicate_is_used()
        {
            var multiply = ArithmeticFuncs.Multiply();
            Assert.Equal(multiply(2, 3), 6);
        }

        [Fact]
        public void Two_times_three_is_four_when_integer_extension_method_is_used()
        {
            Assert.Equal(2.Multiply(3), 6);
        }

        [Fact]
        public void Two_point_five_times_two_is_five_when_dynamic_multiplier_is_used()
        {
            var multiply = ArithmeticFuncs.DynamicMultiply();
            Assert.Equal(multiply(2.5, 2), 5);
        }
        
        [Fact]
        public void Two_point_five_times_the_string_two_throws_exception_when_dynamic_multiplier_is_used()
        {
            var multiply = ArithmeticFuncs.DynamicMultiply();
            Assert.Throws<RuntimeBinderException>(() => multiply(2.5, "2"));
        }
    }
}
