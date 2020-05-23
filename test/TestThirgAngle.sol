pragma solidity >=0.4.22 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/thirdAngle.sol";

contract MyTest {
    ThirdAngle foo;

    // beforeEach works before running each test
    function beforeEach() public {
        foo = new ThirdAngle();
    }

    /// Test if initial value is set correctly
    function testInitialValueShouldBe0() public returns (bool) {
        return Assert.equal(foo.getThird(), 0, "initial value is not correct");
    }

    
    function testGetThirdFunc() public {
        foo.otherAngle(10,30);
        Assert.equal(foo.getThird(), 140, "value is not 150");
        
        foo.otherAngle(10,50);
        Assert.equal(foo.getThird(), 120, "value is not 150");
        
        foo.otherAngle(10,70);
        Assert.equal(foo.getThird(), 100, "value is not 150");
        
        foo.otherAngle(70,30);
        Assert.equal(foo.getThird(), 80, "value is not 150");
        
        foo.otherAngle(90,30);
        Assert.equal(foo.getThird(), 60, "value is not 150");
    }
}