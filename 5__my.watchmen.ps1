
# This test should PASS
WatchmenTest 'OVF.Example1' {
    notifies {
        logfile 'c:\temp\watchmen_demo_6.log' -when 'always'
    }
}
