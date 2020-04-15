Dim message, sapi
message = InputBox("A Best text to Audio Converter"+vbcrlf+ "By Karthik","Text to Audio Converter")
Set sapi=CreateObject("sapi.spvoice")
sapi.Speak message