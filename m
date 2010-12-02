Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B18724C81060
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 13:40:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 11:40:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; 
	d="p7s'?scan'208";a="579980819"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 11:40:51 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 11:40:51 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 2 Dec 2010 11:40:50 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "Ke, Liping" <liping.ke@intel.com>
Date: Thu, 2 Dec 2010 11:40:49 -0800
Thread-Topic: [poky] FW:  Eclipse plugin question
Thread-Index: AcuSTnZTUdzV366+T7mT5u3J0WxVDQACWuqA
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9502086966@orsmsx504.amr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF051D3@shsmsx501.ccr.corp.intel.com>
	<4CF7E4C4.6@mlbassoc.com>
In-Reply-To: <4CF7E4C4.6@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: FW: Eclipse plugin question
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Dec 2010 19:40:52 -0000
X-Groupsio-MsgNum: 829
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0000_01CB9215.C47FF600"

------=_NextPart_000_0000_01CB9215.C47FF600
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

OK, can you try this to ensure your tcf terminal etc. is behaving...
1. Window->Open Perspective->Other->Remote system Explorer
2. In the RSE window, you should see local and below it should have the
remote host/board, there should be "Terminals", can you right click
"Terminals" and select connect, it'll prompt you to login, after you login,
in the right pane of IDE, it should open a remote TCF terminal to the board
and do some thing in the remote terminal, e.g. run your program there, etc.
3. Once you've connected, you can also select "Shells"->"Launch Shell", this
will open a remote shell tab in the IDE and do something there...

Let us know you findings and we'll debug your issue from there.

Thanks,
Jessica
 
Gary Thomas wrote:
> On 11/25/2010 07:13 PM, Ke, Liping wrote:
>> Seems I use wrong mail list and lost the mail.
>> 
>> Yes. Indeed we need to document this considering the code will
>> be finally in the TCF upstream, more users might need it.
> 
> I've tried these, but still can't run any programs.
> 
> When I'm in the RSE browser mode, I can talk to the board, view
> processes, files, etc.
> 
> However, when I try to run code, it just sits there.  I see the
> attached messages on the host console where I started eclipse.  Does
> this help? 
> I can see on my target machine that my program was downloaded (I told
> it to go to /tmp/yocto_app), but it just doesn't seem to run via the
> remote connection.
> 
> Ideas?
> 
>>> -----Original Message-----
>>> From: Ke, Liping
>>> Sent: Friday, November 26, 2010 9:35 AM
>>> To: 'Gary Thomas'; Poky
>>> Subject: RE: [poky] Eclipse plugin question
>>> 
>>> Hi, Gary
>>> 
>>> Thanks for the trying. I have seen your screenshot. Just one more
>>> question. You have set up an connection 192.168.12.177. Can you
>>> tell us which connection type you are created? If you're creating
>>> TCF connection(Please fill the properties of your connection, such
>>> as prompt char [$ or # or>, default is #, it depends on the host
>>> environment]), yes, you need to have a agent running on your
>>> target. The details are: For CDT remote debugger, it depends on
>>> shell/terminal services. If no response back, it will wait for the
>>> input ( Current tcf shell/terminal service is similar as telnet
>>> shell/terminal service, so both of them will not exist but wait for
>>> the new input stream of target, that's why you see the no-response
>>> problem.). 
>>> 
>>> One validation style is that you switch your eclipse perspective ->
>>> RSE browser, there, you will see the connection name 192.168.12.177
>>> you have created. And in that view, you can use RSE browser to view
>>> your target. If RSE viewer works fine, they your debugger
>>> connection will just be fine. 
>>> 
>>> 
>>> Paste a screenshot of tcf connection property settings in the
>>> attachment. At the same time, an agent will be run in the target.
>>> 
>>> Command.Prompt: $ (in my target machine ubuntu, for normal user, it
>>> is $. If logged in as root user in target unbuntu, I will change it
>>> to #. If you are using normal user, please run agent as normal user.
>>> Otherwise, please run it as $sudo ./agent -Llog)
>>> Login.Prompt: never change it.
>>> Login.Required: true (in normal case, we need to login)
>>> Password.Prompt: never change it.
>>> Pwd.Required: false If your target permit no password and could be
>>> directly login, leave it as "false"
>>> 
>>> Hope above information is useful to you:) Any problem, just let us
>>> know! 
>>> 
>>> Thanks a lot!
>>> criping
>>> 
>>>> -----Original Message-----
>>>> From: poky-bounces@yoctoproject.org [mailto:poky-
>>>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>>>> Sent: Friday, November 26, 2010 12:12 AM
>>>> To: Poky
>>>> Subject: [poky] Eclipse plugin question
>>>> 
>>>> I have the eclipse plugin working fairly well now - I can build an
>>>> application, etc.  I tried manually downloading the code to my
>>>> board (I have real hardware, not QEMU) and it runs fine.
>>>> 
>>>> Next, I wanted to try running/debugging from eclipse.  I set up the
>>>> run configuration and the code was downloaded to the board.  The
>>>> last indication said it was starting the debugger.
>>>> This window stayed up a long time and then nothing more.
>>>> 
>>>> Note: I did figure out that I needed tcf-agent running on my board
>>>> (this is not documented).  I also have GDB server on the board.
>>>> 
>>>> You can see my setup at http://www.mlbassoc.com/poky/eclipse_plugin
>>>> 
>>>> Thanks for any ideas/pointers
>>>> 
>>>> --
>>>> ------------------------------------------------------------
>>>> Gary Thomas                 |  Consulting for the
>>>> MLB Associates              |    Embedded world
>>>> ------------------------------------------------------------
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky

------=_NextPart_000_0000_01CB9215.C47FF600
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEwMTIwMjE5NDA0OVowIwYJKoZIhvcNAQkE
MRYEFKrcqPGZp7V4Up5MeIv1IyVpvfRLMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEApb4ocpSfFqaitO+zqnKr
cgi6cXfZhCaRD7VDpaNEv3dmJhLk5igvHR1vXe/NeFTQAEKdIJIrnVSOFT6blOSqS+krRTiA/4Fr
R7VvPX8Elo5sabBKthrFmYCGdQQWHK+E9c89rZxnUiorNxRapr2wVh7VyFVjc3BrTQJrWozB0f6+
1l3dFwU0Lh0+Q76CozBi7UpppKmTAs/PMUbCK7OVPNTNS8uMN1nmZMFAfOxSyocsr32d9vEIYOym
IX317d779IIBYRpBJ8cevSMxSXglRFzyFKM1JRaHeLdFCcNS/WjRED+LsMqczZzPhJAS0XAHvWIc
+MOtdWds7lvE3CYJdQAAAAAAAA==

------=_NextPart_000_0000_01CB9215.C47FF600--
