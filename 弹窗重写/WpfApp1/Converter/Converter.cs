using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace WpfApp1.Converter
{

    [ValueConversion(typeof(Thickness), typeof(Thickness))]
    public class WindowBaseBorderThicknessConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            Thickness t = (Thickness)value;
            return new Thickness(t.Left, 0, t.Right, t.Bottom);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    [ValueConversion(typeof(int), typeof(Thickness))]
    public class WindowBaseCloseMarginRightConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int v = (int)value;
            return new Thickness(0, 0, v, 0);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    [ValueConversion(typeof(int), typeof(CornerRadius))]
    public class WindowBaseCornerRadiusConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int v = (int)value;
            string p = parameter.ToString().Trim().ToLower();
            if (p == "header")
                return new CornerRadius(v, v, 0, 0);
            else if (p == "btnclose")
                return new CornerRadius(0, v, 0, 0);
            else if (p == "around")
                return new CornerRadius(v,v,v,v);
            else
                return new CornerRadius(0, 0, v, v);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
