// Code file for CanDrive() function using C#:


namespace ConsoleApp1;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
[TestClass]
public class Class1
{
    [TestMethod]
    public bool CanDrive(int age) {

        const int drivingAge = 16; return age >= drivingAge;

    }

    //Test Cases:

    [TestMethod]
    [ExpectedException(typeof(System.ArgumentOutOfRangeException))]
    public void TestMin(){
        CanDrive(int.MinValue);
    }

    [TestMethod]
    [ExpectedException(typeof(System.ArgumentOutOfRangeException))]
    public void TestMinPlus(){
        CanDrive(int.MinValue+1);
    }

    [TestMethod]
    public void TestFalse(){
        Assert.Equals(false,CanDrive(15));
    }
    [TestMethod]
    public void TestTrue(){
        Assert.Equals(true,CanDrive(16));
    }
    [TestMethod]
    public void TestTrue(){
        Assert.Equals(true,CanDrive(17));
    }

    [TestMethod]
    [ExpectedException(typeof(System.ArgumentOutOfRangeException))]
    public void TestMaxMinus(){
        CanDrive(int.MaxValue-1);
    }
    [TestMethod]
    [ExpectedException(typeof(System.ArgumentOutOfRangeException))]
    public void TestMax(){
        CanDrive(int.MaxValue);
    }

}

