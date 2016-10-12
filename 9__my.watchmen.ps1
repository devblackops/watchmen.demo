WatchmenOptions {
    notifies {
        logfile 'c:\temp\#{computername}_fails.log' -when 'onfailure'
    }
}

WatchmenTest 'OVF.Windows.Server' {
    version 1.0.2
    testType 'Simple'
    fromSource 'PSGallery'
    parameters @{
        FreeSystemDriveThreshold = 40000
    }
    notifies {
        logfile 'c:\temp\#{computername}_success.log' -when 'onsuccess'
    }
}