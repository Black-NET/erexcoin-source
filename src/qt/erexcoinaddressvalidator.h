// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef EREXCOIN_QT_EREXCOINADDRESSVALIDATOR_H
#define EREXCOIN_QT_EREXCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class ErexCoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit ErexCoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** ErexCoin address widget validator, checks for a valid erexcoin address.
 */
class ErexCoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit ErexCoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // EREXCOIN_QT_EREXCOINADDRESSVALIDATOR_H
