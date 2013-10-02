Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B1C1E01650
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 20:15:39 -0700 (PDT)
Received: from [216.82.241.132:8969] by server-10.bemta-8.messagelabs.com id
	8D/51-20977-7DF8B425; Wed, 02 Oct 2013 03:15:35 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-5.tower-45.messagelabs.com!1380683735!28704115!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 30691 invoked from network); 2 Oct 2013 03:15:35 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-5.tower-45.messagelabs.com with AES128-SHA encrypted SMTP;
	2 Oct 2013 03:15:35 -0000
Received: from AMDRSEX03.actuant.pri (10.10.32.35) by AMDTCEX11.actuant.pri
	(10.0.11.69) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 1 Oct 2013 22:15:34 -0500
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDRSEX03.actuant.pri ([fe80::784f:f5fe:1ce7:8706%17]) with mapi id
	14.02.0342.003; Tue, 1 Oct 2013 22:15:29 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [poky] Sudo binary missing suid - bit
Thread-Index: Ac6+iha8UingTYm6TAqUUCqFhvnGkAAADDhgABUlpAAAD49HwA==
Date: Wed, 2 Oct 2013 03:15:28 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09AAC744@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4@AMDTCEX12.actuant.pri>
	<83DB4EC8FADD45428E3CC4E3664761FD09AAB21E@AMDTCEX12.actuant.pri>
	<524AE02E.6060202@linux.intel.com>
In-Reply-To: <524AE02E.6060202@linux.intel.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: hFvuhpciyjUNFPb8Wq4cAg==
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
X-List-Received-Date: Wed, 02 Oct 2013 03:15:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Saul Wold [mailto:sgw@linux.intel.com]
> On 10/01/2013 02:41 AM, Keskinarkaus, Teemu wrote:
>  > Ups. I meant mode 4111.
> > Any idea how to fix that? Since the sudo is part of the poky I would th=
ought it would work without too much of a hassle.
> What version of poky are you using?  I just checked the master git and it=
 appears to be correct with master.
We are using Dylan - branch. I tried to think the reason why we are using t=
hat, but couldn't think of one. There must be some reason I remember when w=
e started. Maybe the Dylan - branch was thought to be more stable than the =
master - branch?

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

