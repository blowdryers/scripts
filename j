$tcp = New-Object System.Net.Sockets.TcpClient
1..10000 | % {
    try {
        $tcp.Connect("127.0.0.1", $_)
        "Port $_ is open"
        $tcp.Close()
        $tcp = New-Object System.Net.Sockets.TcpClient
    } catch {}
}