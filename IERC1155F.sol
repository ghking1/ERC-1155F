// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IERC1155.sol";

interface IERC1155F is IERC1155 {
    /**
     * Emitted when `doFission`
     */
    event Fission(uint256 indexed id, uint256 fission);

    /**
     * get current fission value of id
     */
    function fission(uint256 id) external view returns (uint256);
}
