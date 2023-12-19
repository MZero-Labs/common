// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.23;

/// @title Stateful Extension for EIP-712 typed structured data hashing and signing with nonces.
interface IStatefulERC712 {
    /**
     * @notice Revert message when a signing account's nonce is reused by a signature.
     * @param  nonce         The nonce used in the signature.
     * @param  expectedNonce The expected nonce to be used in a signature by the signing account.
     */
    error ReusedNonce(uint256 nonce, uint256 expectedNonce);

    /**
     * @notice Returns the next nonce to be used in a signature by `account`.
     * @param  account The address of some account.
     * @return nonce   The next nonce to be used in a signature by `account`.
     */
    function nonces(address account) external view returns (uint256 nonce);
}
