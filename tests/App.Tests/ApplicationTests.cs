using App;

namespace App.Tests;

public class ApplicationTests
{
    [Fact]
    public void Greets()
    {
        Assert.Equal("Hello, World!", Application.Greet("World"));
    }
}
