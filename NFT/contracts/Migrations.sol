// SPDX-License-Identifier: MIT
// 현재파일 삭제금지
// Migrations.json 파일과 1:1매칭이다.
pragma solidity >=0.4.22 <0.9.0;  // 솔리디티 버전정의필요

contract Migrations {
  address public owner = msg.sender;
  uint public last_completed_migration;

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
