using System;

namespace FP.Func
{
    public static class ArithmeticFuncs
    {
        public static Func<int, int, int> Multiply()
        {
            return (x, y) => x * y;
        }

        // Not possible, since T does not have the * operand. Also the numeric types have no shared INumeric interface.
        //public static Func<T, T, T> GenericMultiply()
        //{
        //    return (T x, T y) => x*y;
        //}

        public static Func<dynamic, dynamic, dynamic> DynamicMultiply()
        {
            return (x, y) => x * y;
        }
    }
}
