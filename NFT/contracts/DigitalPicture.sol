// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0; // 솔리디티 버전정의필요

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract DigitalPicture is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("DigitalPicture", "NDP") {}

    // web3.js
    function publishItem(address creator, string memory tokenURI) public returns (uint256){
        _tokenIds.increment(); //제일 처음에는 1로 바뀔거다

        uint256 newTokenId = _tokenIds.current();
        _mint(creator, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        return newTokenId; //IPFS 파일분산저장
    }
}
