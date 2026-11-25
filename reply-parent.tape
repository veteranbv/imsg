# imsg #408: regression test on upstream main vs the fix branch
Output reply-parent.gif

Set Shell "bash"
Set FontSize 14
Set Width 1240
Set Height 620
Set Padding 18
Set TypingSpeed 22ms
Set Theme "GitHub Dark"

Hide
Type `cd /tmp/imsg-408-demo && export PS1='$ ' && set -o pipefail && (cd fix && make test-helper >/dev/null 2>&1) && clear`
Enter
Sleep 25s
Show

Type "# base = upstream main 475945e plus only the new test file"
Enter
Type "cd base && cp ../fix/Tests/IMsgHelperTests/ReplyParentTests.m Tests/IMsgHelperTests/"
Enter
Type `../build-test.sh && .build/ReplyParentTests 2>&1 | sed -E 's/^[0-9-]+ [0-9:.]+ //'; echo "exit $?"`
Enter
Sleep 7s

Type "clear"
Enter
Type "# fix = branch fix/thread-identifier-non-part-parent, same test"
Enter
Type `cd ../fix && ../build-test.sh && .build/ReplyParentTests 2>&1 | sed -E 's/^[0-9-]+ [0-9:.]+ //'; echo "exit $?"`
Enter
Sleep 6s

Type "clear"
Enter
Type "# every helper suite on the branch (binaries from make test-helper)"
Enter
Type `for t in .build/helper-tests/*Tests; do "$t" 2>&1 | tail -1; done`
Enter
Sleep 14s
