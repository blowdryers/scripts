1..10000 | % {
    if (Test-NetConnection -ComputerName localhost -Port $_ -WarningAction SilentlyContinue -InformationLevel Quiet) {
        "Port $_ is open"
    }
}