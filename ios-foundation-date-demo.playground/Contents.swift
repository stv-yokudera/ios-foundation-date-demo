//: Playground - noun: a place where people can play

import UIKit

/// 検証用のDate変数
private var date = Date()

// MARK: - Methods
// 現在日付を取得する
private func setupInit() {
    date = Date()
}

// 現在日付に時間を追加する
private func renderAddTimeInterval() {
    date.addTimeInterval(60 * 60 * 24)
    print(date)
}

// 現在日付に時間を追加し、追加した時間を戻す
private func renderAddingTimeInterval() {
    print(date.addingTimeInterval(60 * 60 * 24 * 2))
}

// 引数で渡した日付が過去か未来かを列挙型で取得する
private func renderCompare() {
    var otherDate = Date()
    otherDate.addTimeInterval(60 * 60 * 24)

    print(date.compare(otherDate).rawValue)
}

// 引数で渡した日付との差分を秒で取得する
private func renderTimeIntervalSince() {
    var otherDate = Date()
    otherDate.addTimeInterval(60 * 60 * 24)
    print(date.timeIntervalSince(otherDate))
}

// MARK: - 動かしてみる
setupInit()
print(date)
renderTimeIntervalSince()

var testDate = Date()

testDate.addingTimeInterval(60 * 60 * 24 * 2)
testDate.timeIntervalSince(date)
testDate.timeIntervalSinceNow
testDate.timeIntervalSince(Date())
testDate.timeIntervalSince1970

// MARK: - 比較
date == testDate
date > testDate
date < testDate

// + - も使える
let plusDate = testDate + TimeInterval(60 * 60 * 24 * 2)
let minusDate = testDate - TimeInterval(60 * 60 * 24 * 10)
