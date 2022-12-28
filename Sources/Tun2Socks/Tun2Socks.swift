import Foundation

@_silgen_name("run") private func rust_run(_ config: UnsafePointer<CChar>!)

@frozen public enum Tun2Socks {
        
    public static func run(tunFd: Int32, port: Int) {
        let config: String = """
        {
            "log": {
                "level": "warn"
            },
            "inbounds": [
                {
                    "protocol": "tun",
                    "settings": {
                        "fd": \(tunFd)
                    },
                    "tag": "tun"
                }
            ],
            "outbounds": [
                {
                    "protocol": "socks",
                    "settings": {
                        "address": "127.0.0.1",
                        "port": \(port)
                    },
                    "tag": "clash"
                }
            ]
        }
        """
        rust_run(config.cString(using: .utf8))
    }
}
