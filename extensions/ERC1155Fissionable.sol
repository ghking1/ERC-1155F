// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../ERC1155.sol";

/**
 * @dev Extension of {ERC1155} that allows fission
 *
 */
abstract contract ERC1155Fissionable is ERC1155 {
    function doFission(uint256 id) public {
        /**
         * here you can restrict who can doFission, like following:
         * require(msg.sender == _proxy, "ERC1155: only proxy can do it" );
         */
        _doFission(id);
    }
}
