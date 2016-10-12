WatchmenOptions {
    notifies {
        logfile 'c:\temp\watchmen_9_fails.log' -when 'onfailure'
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
        logfile 'c:\temp\watchmen_9_success.log' -when 'onsuccess'
    }
}