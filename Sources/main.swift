
import Foundation
import Glibc
import SwiftSockets

func main(args:[String:Any]) -> [String:Any] {
    print("ok0 ")
    var result:[String:Any]?
    let socket = ActiveSocket<sockaddr_in>()! .onRead { 
    	sock, _ in
    	let (count, block, errno) = sock.read() 
    	guard count > 0 else {
      		print("EOF, or great error handling \(errno).")
      		return
    	}
    	print("Answer to ring,ring is: \(count) bytes: \(block)")
  	}
  	.connect("127.0.0.1:80") { 
  		socket in socket.write("Ring, ring!\r\n")
  	}
  	result = "ok"
    print("ok1 ")
    return result!
}
