const DigitalPicture = artifacts.require('DigitalPicture');

contract("DigitalPicture", async function(accounts) {
    const [owner] = accounts;
    // beforeEach 는 각각의 테스트케이스를 실행시키기 전에 무조건 한번 실행시키는 부분
    beforeEach(async function() {
        this.token = await DigitalPicture.new(); //여기서 컨트랙트 하나가 만들어지는 시점.
    });

    it("publish item", async function() {
        const tokenId = await this.token.publishItem(owner, "https://www.dev.sample.com/a/b/abc");

        console.log(tokenId);
    });
});