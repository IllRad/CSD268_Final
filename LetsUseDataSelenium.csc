



[TestClass]
public partial class LetsUseDataSuccess(){

   private static IWebDriver driver = new ChromeDriver();

  [TestMethod]
  public void testSuccess(){

    driver.Navigate().GoToUrl("https://letsusedata.com/index.html");
    driver.FindElement(By.Name("txtUser")).Click();
    driver.FindElement(By.Name("txtUser")).Clear();
    driver.FindElement(By.Name("txtUser")).SendKeys("test1");

    driver.FindElement(By.Name("txtPassword")).Click();
    driver.FindElement(By.Name("txtPassword")).SendKeys("Test123456");

    driver.FindElement(By.Name("txtPassword")).SendKeys(${KEY_ENTER});

    //nothing will be said, the site will just log you in

  }
}


[TestClass]
public partial class LetsUseDataNOTsuccess(){

    private static IWebDriver driver = new ChromeDriver();

    [TestMethod]
    public void testNOTSuccess(){

      driver.Navigate().GoToUrl("https://letsusedata.com/index.html");
      driver.FindElement(By.Name("txtUser")).Click();
      driver.FindElement(By.Name("txtUser")).Clear();
      driver.FindElement(By.Name("txtUser")).SendKeys("test1");

      driver.FindElement(By.Name("txtPassword")).Click();
      driver.FindElement(By.Name("txtPassword")).SendKeys("test1234");


      driver.FindElement(By.Name("txtPassword")).SendKeys(${KEY_ENTER});

      Assert.AreEqual("Password was incorrect", driver.FindElement(By.Name("IblMessage")).GetAttribute("txtPasword"));

    }

}
