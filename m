Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web10.9484.1668616753644818982
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Nov 2022 08:39:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=tAsSv3Eh;
 spf=pass (domain: gmx.li, ip: 212.227.17.22, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1668616751; bh=D3YIDrR0ZTGJNGdrgRrrFYHBcP6IC8AheqWja6R1r+w=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=tAsSv3Eh6hFcV7SG0Btm2xy76fLeWLXrKAaPwxR1oJUF01HIxYTM+mzHAcBBTXpDI
	 SLeHg+rMrFjega1wFY7I6IMFCQpE6oQ6nX3PTn0ZccbL+tnVlefxH/TQmr3pX/X6eb
	 0WUIItkhbYW8sULvMEwh2q4or9jmoavXmWGVciFY2N82P/NY/QUvU10RnunDWxQVSN
	 /Yi3yFdCW+Zr50KyZC65Lq/n2N0hMwUuwpLwrYSmJriy7vGnFslY6SPISQ4QHlpm65
	 7F2lv5SfxX/wsTEvkYpBPM8gU2vXawZFe8apL0PQgAQUZSqUVF3y2w+R5bjU1uaPD5
	 muQcO9xlZl/qw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N17UQ-1p78qr3LVi-012Yl7 for
 <poky@lists.yoctoproject.org>; Wed, 16 Nov 2022 17:39:11 +0100
Message-ID: <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li>
Date: Wed, 16 Nov 2022 17:39:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: [poky] Replace a (not working) download by adding a local file as mirror?
To: poky@lists.yoctoproject.org
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
From: "Steve" <star@gmx.li>
In-Reply-To: <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
X-Provags-ID: V03:K1:72QhxjUzOpGNrx+01HOopFT15uxASLNxhsl+FS/VAv4+TBvssce
 +h44vQrbcgHF1TAFOUq7NMp4TrrRoNNgnYRhDJ+qhhbbZh0zvr0YaSD2CgYwmrINmNzuUfP
 i7W/0ebwBNr1yfdymMBdAefB1ivFV1u8bDZC2fvN7kTEIkQGHwmjZ4rSilPIVXn76kViLIo
 iAOPRAC4WPEMCjRAZiJBw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:WHWp480imso=;b9bwxOWQU4JSbyluKqkWzMZFx/C
 V91c/98p6uDQHJ2lxfMLxe8cugWTIg9+K9zWLz9vOdTYgjbDXbEt/pJtdK7cSaRcZOs5XAFyn
 SvE8K15VqUGiTWaTfQsT8+lzVZxRwK2TBF7x1WCru+UZT6Ov24sj0PYg+AKzMIFdcJeWBjaJc
 Set5qBXc8eb9SJAjrZHjwDVcj+l5IaQE0n1gz7lOhsnn77l30Okk3Y46YLXhnVbD6Xjlc/Kee
 LpErH6STXyT4UAa9MY0cKjBM80zRXMeIDebCX50aTfQR5IvqmZZea+vu/2Y/0IqqqRlXXEbG1
 LdmQgfFJQfCxX1jzqhWNBIlR+K03QxRifwBTT1IWyJk1Bv3s+ef/e+QVOKBRn1Bnpk+FMQuXx
 xN01K31fAw8aUnrTS/e/v1JkSG2W/XbaXLo3ak1WC1VyrjHbmgtw9fKydTmJaS/XvP/6nxrCh
 DFqSbG+ipRTb1hv20/uQcV85ZqAhc+76sy+oCTRWhslLJg6VoRcxN0AUwletDKh6i4p6ci78o
 afMJcgINiRYrmBJzUUVeZkcJmX504ggs6Hc9owZXBthRq0ia212sU9SbL2wwqBK5msiGzdEt7
 N1pPZCvryse77pkkti0OF89F45JZoxpjPasoDqIk/A3llC6Gmzohk2Qe8ZV/a+owsLMMrVSwI
 9UlTtcwu2HeyexN1yvDwH3QbB2X4MsZLJIvpFcE+fO2yY34KFFx25qcOkOuqWEtWQwjGZYNA1
 Aq7NLh2YtBFnng2fdQ+AX8le8IiyUW1e/UqAkrogtBclGA4tMyfzG7sAMPzBUdSdH9IQTpBrV
 cM4hbmV+GCzsRvlSSFICFwI8bMaLoAq+5sWQNKRyxik6r0zAfdW8v317Jmt8VObKbFlODLj9E
 O/Wm2NAzIuTY287osigidDnvJSkuG4YWq0qLr9H+vp/fVVC1aIyhd63rL7SiXiT9c0oQs5n/M
 0PjE1S7gZaC2Llj35iFzsSDv+lg=
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi, maybe someone can help, although my problem occurs outside poky but
in Yocto general. But I think solution might be same.
I do have a problem with a download (see below the exact failure). I am
messing around with that for quite a while and couldn't find a solution.
I am wondering if I can put this file in a recipe as a local file:

FILESEXTRAPATH:prepend :=3D "${THISDIR}/files/:"

after download that file externally in browser (that works)
Not sure will that work or do I have to add a real local mirror?


That happens while building tensorflow:
I don't find a solution to fix. No problem to download that file:
https://mirror.bazel.build/openjdk/azul-zulu11.50.19-ca-jdk11.0.12/zulu11.=
50.19-ca-jdk11.0.12-linux_x64.tar.gz
in my browser.
I found some hints to the certification error but nothing helped.
I am running a VM Ubuntu 20.04.


|     Fetching @remotejdk11_linux; fetching 13s
| INFO: Repository remotejdk11_linux instantiated at:
|   /DEFAULT.WORKSPACE.SUFFIX:41:6: in <toplevel>
|
/home/user/y/yocto40/my_visor/bazel/bazel_5ULmqVIS/out/external/bazel_tool=
s/tools/build_defs/repo/utils.bzl:233:18:
in maybe
|
/home/user/y/yocto40/my_visor/bazel/bazel_5ULmqVIS/out/external/bazel_tool=
s/tools/jdk/remote_java_repository.bzl:48:17:
in remote_java_repository
| Repository rule http_archive defined at:
|
/home/user/y/yocto40/my_visor/bazel/bazel_5ULmqVIS/out/external/bazel_tool=
s/tools/build_defs/repo/http.bzl:353:31:
in <toplevel>
| Analyzing: target //src:bazel_nojdk (367 packages loaded, 9300 targets
configu\
| red)
|     Fetching @remotejdk11_linux; fetching 13s
| WARNING: Download from
https://mirror.bazel.build/openjdk/azul-zulu11.50.19-ca-jdk11.0.12/zulu11.=
50.19-ca-jdk11.0.12-linux_x64.tar.gz
failed: class javax.net.ssl.SSLHandshakeException PKIX path building
failed: sun.security.provider.certpath.SunCertPathBuilderException:
unable to find valid certification path to requested target
| Analyzing: target //src:bazel_nojdk (367 packages loaded, 9300 targets
configu\
| red)
| ERROR: An error occurred during the fetch of repository
'remotejdk11_linux':
|    Traceback (most recent call last):
|        File
"/home/user/y/yocto40/my_visor/bazel/bazel_5ULmqVIS/out/external/bazel_too=
ls/tools/build_defs/repo/http.bzl",
line 100, column 45, in _http_archive_impl
|                download_info =3D ctx.download_and_extract(
| Error in download_and_extract: java.io.IOException: Error downloading
[https://mirror.bazel.build/openjdk/azul-zulu11.50.19-ca-jdk11.0.12/zulu11=
.50.19-ca-jdk11.0.12-linux_x64.tar.gz]
to
/home/user/y/yocto40/my_visor/bazel/bazel_5ULmqVIS/out/external/remotejdk1=
1_linux/temp2967262093456757762/zulu11.50.19-ca-jdk11.0.12-linux_x64.tar.g=
z:
PKIX path building failed:
sun.security.provider.certpath.SunCertPathBuilderException: unable to
find valid certification path to requested target
| Analyzing: target //src:bazel_nojdk (367 packages loaded, 9300 targets
configu\
| red)
