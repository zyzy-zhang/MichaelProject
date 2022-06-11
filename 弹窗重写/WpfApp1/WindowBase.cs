using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    public class WindowBase : Window
    {
        /// <summary>
        /// 这里都是控件属性的公布
        /// </summary>
        private static DependencyProperty HeaderHeightProperty;
        public int HeaderHeight
        {
            get => (int)GetValue(HeaderHeightProperty);
            set => SetValue(HeaderHeightProperty, value);
        }

        private static int maxCornerRadius = 20;
        public static DependencyProperty CornerRadiusProperty;
        public int CornerRadius
        {
            get => (int)GetValue(CornerRadiusProperty);
            set => SetValue(CornerRadiusProperty, value);
        }

        //创建标题栏背景颜色
        public static DependencyProperty HeaderBackgroundProperty;
        public Brush HeaderBackground
        {
            get => (Brush)GetValue(HeaderBackgroundProperty);
            set => SetValue(HeaderBackgroundProperty, value);
        }


        /// <summary>
        /// 这里都是控件命令的公布
        /// </summary>
        public static DependencyProperty command;
        public ICommand Command
        {
            get => (ICommand)GetValue(command);
            set => SetValue(command, value);
        }

        static WindowBase()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(WindowBase), new FrameworkPropertyMetadata(typeof(WindowBase)));

            FrameworkPropertyMetadata metadata = new FrameworkPropertyMetadata();
            metadata.Inherits = true;
            metadata.DefaultValue = 2;
            metadata.AffectsMeasure = true;
            metadata.PropertyChangedCallback += (d, e) => { };//属性更改回叫，会在依赖属性的有效值发生更改的时候通知我，来运行属性值更改时发生的具体逻辑
            //注意这里的属性值验证回叫就只有一个入参
            //这里注册的属性就是属性的有效属性，PropertyMetadata表示的就是属性的元数据，属性的值验证回叫
            //属性系统将在值发生更改时调用其进行验证值会叫，并将新的值传递进来，如果值对属性有效，就返回true，无效就返回false
            CornerRadiusProperty = DependencyProperty.Register("CornerRadius",
                typeof(int), typeof(WindowBase), metadata,
                o => {//这里的o就表示新传递进来的属性值，然后在这里进行条件判断
                    int radius = (int)o;
                    if (radius >= 0 && radius <= maxCornerRadius) return true;//这里表示假如设定的值大于等于0并且该值小于最大的弯角值，该值就是有效的，可以使用
                    return false;
                });

            metadata = new FrameworkPropertyMetadata();
            metadata.Inherits = true;
            metadata.DefaultValue = 40;
            metadata.AffectsMeasure = true;
            metadata.PropertyChangedCallback += (d, e) => { };
            HeaderHeightProperty = DependencyProperty.Register("HeaderHeight",
                typeof(int), typeof(WindowBase), metadata,
                o => {
                    int radius = (int)o;
                    if (radius >= 0 && radius <= 1000) return true;
                    return false;
                });

            //注册标题栏颜色属性
            metadata = new FrameworkPropertyMetadata();
            metadata.Inherits = true;
            metadata.AffectsMeasure = true;
            metadata.DefaultValue =null;
            metadata.PropertyChangedCallback += (d, e) => { };//依赖属性值改变时调用这个方法
            HeaderBackgroundProperty = DependencyProperty.Register("HeaderBackground", typeof(Brush), typeof(WindowBase), metadata,
                o => {
                    Brush brush = (Brush)o;
                    //if (brush != null)
                    //    return true;
                    //else
                    //    return false;
                    return true;
                });


            //注册命令属性
            FrameworkPropertyMetadata frameworkPropertyMetadata = new FrameworkPropertyMetadata();
            frameworkPropertyMetadata.DefaultValue = null;
            command = DependencyProperty.Register("Command",typeof(ICommand),typeof(WindowBase), frameworkPropertyMetadata);
        }

        

        public WindowBase() : base()
        {
            SystemParameters.StaticPropertyChanged -= SystemParameters_StaticPropertyChanged;
            SystemParameters.StaticPropertyChanged += SystemParameters_StaticPropertyChanged;
        }

        private void SystemParameters_StaticPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == "WorkArea")
            {
                if (this.WindowState == WindowState.Maximized)
                {
                    double top = SystemParameters.WorkArea.Top;
                    double left = SystemParameters.WorkArea.Left;
                    double right = SystemParameters.PrimaryScreenWidth - SystemParameters.WorkArea.Right;
                    double bottom = SystemParameters.PrimaryScreenHeight - SystemParameters.WorkArea.Bottom;
                    root.Margin = new Thickness(left, top, right, bottom);
                }
            }
        }



        private Grid root;
        private Button closeBtn;
        private Border header;

        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();

            
            root = (Grid)Template.FindName("root", this);
            

            closeBtn = (Button)Template.FindName("btnClose", this);
            closeBtn.Click += (o, e) => Close();
            closeBtn.Content = "\xf00d";
            header = (Border)Template.FindName("around", this);
            header.MouseMove += (o, e) =>
            {
                if (e.LeftButton == MouseButtonState.Pressed)
                {
                    this.DragMove();
                }
            };
        }
    }
}