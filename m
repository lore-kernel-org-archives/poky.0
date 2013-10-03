Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53616E0169D
	for <poky@yoctoproject.org>; Thu,  3 Oct 2013 02:48:25 -0700 (PDT)
Received: from [216.82.254.195:61538] by server-5.bemta-7.messagelabs.com id
	B3/90-13563-66D3D425; Thu, 03 Oct 2013 09:48:22 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-12.tower-200.messagelabs.com!1380793701!13481534!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 6992 invoked from network); 3 Oct 2013 09:48:21 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-12.tower-200.messagelabs.com with AES128-SHA encrypted SMTP;
	3 Oct 2013 09:48:21 -0000
Received: from AMDRSEX03.actuant.pri (10.10.32.35) by AMDTCEX11.actuant.pri
	(10.0.11.69) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 3 Oct 2013 04:48:20 -0500
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDRSEX03.actuant.pri ([fe80::784f:f5fe:1ce7:8706%17]) with mapi id
	14.02.0342.003; Thu, 3 Oct 2013 04:48:18 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [poky] Sudo binary missing suid - bit
Thread-Index: Ac6+iha8UingTYm6TAqUUCqFhvnGkAAADDhgABUlpAAAD49HwAA//g7g
Date: Thu, 3 Oct 2013 09:48:18 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09AAD02C@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4@AMDTCEX12.actuant.pri>
	<83DB4EC8FADD45428E3CC4E3664761FD09AAB21E@AMDTCEX12.actuant.pri>
	<524AE02E.6060202@linux.intel.com>
	<83DB4EC8FADD45428E3CC4E3664761FD09AAC744@AMDTCEX12.actuant.pri>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD09AAC744@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: Cvv+KT8janARvkX+JCevww==
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Sudo binary missing suid - bit
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Oct 2013 09:48:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]=
 On Behalf Of Keskinarkaus, Teemu
>> From: Saul Wold [mailto:sgw@linux.intel.com] On 10/01/2013 02:41 AM,
>> Keskinarkaus, Teemu wrote:
>>  > Ups. I meant mode 4111.
>> > Any idea how to fix that? Since the sudo is part of the poky I would t=
hought it would work without too much of a hassle.
>> What version of poky are you using?  I just checked the master git and i=
t appears to be correct with master.
>We are using Dylan - branch. I tried to think the reason why we are using =
that, but couldn't think of one. There must be some reason I remember when =
we started. Maybe the Dylan - branch was thought to be more stable than the=
 master - >branch?

I tested with master - branch and still same result. If I create new user a=
nd try to use all I get is this:

~$ sudo ls
sudo: effective uid is not 0, is sudo installed setuid root?

That user is in /etc/sudoers - file and will work if I'll fix the suid-bit =
from /usr/bin/sudo.

Here is what /usr/bin/sudo is now:
-rwxr-xr-x 1 root root 123224 Oct  3 07:07 /usr/bin/sudo

Here what it supposed to be or how it is tried to be set in recipe:
---s--x--x 1 root root 123224 Oct  3 07:07 /usr/bin/sudo

So using master-branch wasn't solving anything in my case. Of course sudo '=
works' if you test it with root user, but you don't need sudo with root any=
way.

Teemu Keskinarkaus

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

