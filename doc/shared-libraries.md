Shared Libraries
================

## erexcoinconsensus

The purpose of this library is to make the verification functionality that is critical to ErexCoin's consensus available to other applications, e.g. to language bindings.

### API

The interface is defined in the C header `erexcoinconsensus.h` located in  `src/script/erexcoinconsensus.h`.

#### Version

`erexcoinconsensus_version` returns an `unsigned int` with the API version *(currently at an experimental `0`)*.

#### Script Validation

`erexcoinconsensus_verify_script` returns an `int` with the status of the verification. It will be `1` if the input script correctly spends the previous output `scriptPubKey`.

##### Parameters
- `const unsigned char *scriptPubKey` - The previous output script that encumbers spending.
- `unsigned int scriptPubKeyLen` - The number of bytes for the `scriptPubKey`.
- `const unsigned char *txTo` - The transaction with the input that is spending the previous output.
- `unsigned int txToLen` - The number of bytes for the `txTo`.
- `unsigned int nIn` - The index of the input in `txTo` that spends the `scriptPubKey`.
- `unsigned int flags` - The script validation flags *(see below)*.
- `erexcoinconsensus_error* err` - Will have the error/success code for the operation *(see below)*.

##### Script Flags
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_NONE`
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_P2SH` - Evaluate P2SH ([BIP16](https://github.com/erexcoin/bips/blob/master/bip-0016.mediawiki)) subscripts
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_DERSIG` - Enforce strict DER ([BIP66](https://github.com/erexcoin/bips/blob/master/bip-0066.mediawiki)) compliance
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_NULLDUMMY` - Enforce NULLDUMMY ([BIP147](https://github.com/erexcoin/bips/blob/master/bip-0147.mediawiki))
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_CHECKLOCKTIMEVERIFY` - Enable CHECKLOCKTIMEVERIFY ([BIP65](https://github.com/erexcoin/bips/blob/master/bip-0065.mediawiki))
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_CHECKSEQUENCEVERIFY` - Enable CHECKSEQUENCEVERIFY ([BIP112](https://github.com/erexcoin/bips/blob/master/bip-0112.mediawiki))
- `erexcoinconsensus_SCRIPT_FLAGS_VERIFY_WITNESS` - Enable WITNESS ([BIP141](https://github.com/erexcoin/bips/blob/master/bip-0141.mediawiki))

##### Errors
- `erexcoinconsensus_ERR_OK` - No errors with input parameters *(see the return value of `erexcoinconsensus_verify_script` for the verification status)*
- `erexcoinconsensus_ERR_TX_INDEX` - An invalid index for `txTo`
- `erexcoinconsensus_ERR_TX_SIZE_MISMATCH` - `txToLen` did not match with the size of `txTo`
- `erexcoinconsensus_ERR_DESERIALIZE` - An error deserializing `txTo`
- `erexcoinconsensus_ERR_AMOUNT_REQUIRED` - Input amount is required if WITNESS is used

### Example Implementations
- [NErexCoin](https://github.com/NicolasDorier/NErexCoin/blob/master/NErexCoin/Script.cs#L814) (.NET Bindings)
- [node-liberexcoinconsensus](https://github.com/bitpay/node-liberexcoinconsensus) (Node.js Bindings)
- [java-liberexcoinconsensus](https://github.com/dexX7/java-liberexcoinconsensus) (Java Bindings)
- [erexcoinconsensus-php](https://github.com/Bit-Wasp/erexcoinconsensus-php) (PHP Bindings)
