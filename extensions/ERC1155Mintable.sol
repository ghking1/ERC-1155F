// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../ERC1155.sol";

/**
 * @dev Extension of {ERC1155} that allows mint tokens
 *
 */
abstract contract ERC1155Mintable is ERC1155 {
    function mint(
        address account,
        uint256 id,
        uint256 value
    ) public virtual {
        /**
         * here you can restrict who can mint, like following:
         * require(msg.sender == _proxy, "ERC1155: only proxy can do it" );
         */
        if(fission(id)==0) {
            _initFission(id, 32);
        }
        _mint(account, id, value<<fission(id), "");
    }
}
