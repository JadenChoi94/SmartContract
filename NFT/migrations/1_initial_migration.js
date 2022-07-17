// 개발한 스마트컨트랙트를 배포하기 위한 용도

const Migrations = artifacts.require("Migrations");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
