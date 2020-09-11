Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web12.4799.1599818470222901782
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 03:01:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=TtxFRFdV;
 spf=pass (domain: gmx.li, ip: 212.227.15.15, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1599818468;
	bh=cNi2aaFAkpml3sm3sz+aB9t91IS5r7oIBzz7drroHCk=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=TtxFRFdVzczJ4sF7hxeV/kpSa+yEELgk9l5igcA6jojGhHBkE/HYqD+QkNY4gq0Kh
	 9Z6mkWwcwmFnr3FabYYAPdPNULptydi6GGjs89JqfaYWyDaifGVbQQEaaxtLEZ57aw
	 HjCpzIH8zgfTJUBQXm+dD8KfewnXNv09vxN4uCJs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.33] ([84.185.247.166]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M26vL-1kEBxd0w8n-002X0n for
 <poky@lists.yoctoproject.org>; Fri, 11 Sep 2020 12:01:08 +0200
To: poky@lists.yoctoproject.org
From: "Steve" <star@gmx.li>
Subject: add a -dev package to SDK (in sysroot)
Message-ID: <21bed7fc-b057-c97c-ae5d-3d84f45c69b4@gmx.li>
Date: Fri, 11 Sep 2020 12:01:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:/cZsunX4ElzWLNVqVh9eiXg6reZfEsMMZohpqQrJEnnIou+eb8h
 KHVb3XQv1lLcymLkqlEeUPdMUf0yyHa6ikyaWzfJuNKVj/xnVryxyxb97SDl4fnxFYjIIrj
 +9x5325SslJF9jBnHH1I8nW+V173T6SARCgO5l51erwRYWaFMIAFc9GXOQ0MuTE4OaUNAhk
 aJjBbyxlPo1mBCFA6xqqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yle9HA9sfBk=:7Abyd62qxiz0RtdH+fAUNB
 SbLW7431btMJ3r/0tQaJ3IlMZP++mzRZk491cQoEaGENPs2Mho5isWrogqutN03qtPdnxHkWe
 EK87MRnGJupdiRV+May/DmxlvQ5EKzznScAPxAkmURJMWRICuh4eW1FEZWQVuRlEmb6sUt2Km
 wNJbaJdir4k+SYvU+a6nw0f5HsfOiJxgfZRFnZ0jKKk60ipiKtKHQakwPtERWmdW0N3Va/Qmb
 OMd8PH7jLwywn3GnGxxAM9gZlT6ThkwQuwbn/Kx9UZ3yB+zGuyafcKe76vHNsxW7Ag0MrdlHr
 TI8rAaDhnUpXDNoMn/zAwY/Aj2I7j6SS7MxA2AsxTySeYXDmGTktsmMZtTAGeCiHDLCnxjG5u
 k9gZxul/0176/XBRTp+SHRmAknVVo77NYXddO9SfLQB+STbIwBWI6rh3G6KgY8J4DJxynbjrg
 CU3weWYFW1pln3Um7c7d/5w/sFAqB0bXLCpL1wlaRLjYpBzxdSfxOoNVrS7413A+JHnH2pxeW
 KCBF5sn3YL1MH9GNeZGtH1lZuYfkWWWZXlfFxFYBithX1qlrWIgCzEjLZ5Ar5gl54z08RAgDl
 RmLnGrRkRrJdCATdKOrHbSRYE3rOH2EQpGOhiSsyhASL+6NHkf27KuxcQhkoWkUoGC9bwCbs/
 5UeWgoalnXHZSOqEPBcC73nXu6A1hdKITNwcd8exMEFPSWv/SKMFm4qyHnrjzV0Q9UDVCHvow
 9v4QFkt35LIASBcGngogJf+L/n+Qv3sP4JVO6L9b3aZJdQqOPmvA5Rw+aE1rbcFH/Ge8X06lG
 EpU+bJgh0Snaetf0LnMeZtnS1y7rPdVy4LogBR+Zyn18LK/Pf6SR0er0RIz5EF+HzW8xtFl5r
 CCEZ5yfQP37kxFzrhbOT+Ae5/hjuBGhnmrMM/ItCBqESG2VxNRZZEe9LcQKoS7jGEY4GmEMu0
 d6sWUwi915RqPSJI8PHw7hVvglOtm94fYBym98bbt1CzEdFvbbQK6aoQ7oCmPHE0dAFq7T7tU
 zfwfuAYMCzjdw7qJIwSVBnIqpsHMgf88sEv3f5ixfOzrha6ROosCewZ7AcZ/urJJZ0n6rajRt
 7gEimt0NnCYfk5h0IIXPKlMY7SDngZXHBdV/v2ZEJz1mm8Xp3+jNliw4jv0MLHjnaigX3O6Ht
 k+0AJQ5lzPtRBDJ1DqNSG3rTrDOl26v5PMJK7nY1RrBpJNX7Z7a1BuJB+LaIUhmhnlWBvkiry
 GkrUO3UeD3EqOjM/u
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I try to add websocketpp-dev to my SDK, but fail.

I did a

IMAGE_INSTALL =3D "... websocketpp ..."

and to get the dev-package into SDK:

TOOLCHAIN_TARGET_TASK_append =3D websocketpp-dev"

The result is an error in

bitbake .... -c populate_sdk

Unable to install packages. ...

Problem 1: Nothing provides websocketpp =3D 0.8.1-r0 needed by
websocketpp-dev-0.8.1-r0...

Solution: so not ask to install a package providing websocketpp-dev


If I see this right this approach works for other dev-Packages like curl
and curlpp, but doesn't seem to work for websocketpp. What am I doing
wrong? Where is the bug? What is the trick?

Somewhere I have read that just creating the SDK by -c populate_sdk is
adding *-dev packages to sysroot in SDK, but this is definitely not true
for all packages.

Thanks for any help!


PS: I can see in deploy that package websocketpp-dev with all the
/usr/include/websocket/...) has been created.

