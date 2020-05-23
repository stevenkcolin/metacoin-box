pragma solidity >=0.4.25 <0.7.0;

contract ThirdAngle {
  int third;
  function otherAngle(int angle1, int angle2) public {
    // TODO your code here
    int a1 = angle1;
    int a2 = angle2;
    third = 180 - a1 - a2;
  }
  function getThird() public view returns (int) {
      return third;
  }
}