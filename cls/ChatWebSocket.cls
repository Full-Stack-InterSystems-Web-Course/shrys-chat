Class Chat.ChatWebSocket Extends %CSP.WebSocket
{

Method OnPreServer() As %Status
{
		if ($get(^ChatWebSocket("messages"))=""){
			set ^ChatWebSocket("messages") = 0
		}
		return $$$OK
}

Method Server() As %Status
{
		do ..Write("Welcome!")
		set data = ..Read()
		do ..Write("Got a message: "_data)
		return $$$OK
}

}
 