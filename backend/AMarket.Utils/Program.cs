namespace AMarket.Utils
{
    class Program
    {
        static void Main(string[] args)
        {
            var parser = new CategoriesParser(@"F:\Desktop\categories.txt");
            parser.Parse();
        }
    }
}
