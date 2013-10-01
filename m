Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6FBCE01626
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 02:41:52 -0700 (PDT)
Received: from [216.82.241.132:10105] by server-1.bemta-8.messagelabs.com id
	F5/D4-29395-FD89A425; Tue, 01 Oct 2013 09:41:51 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-9.tower-45.messagelabs.com!1380620511!33525465!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22098 invoked from network); 1 Oct 2013 09:41:51 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-9.tower-45.messagelabs.com with AES128-SHA encrypted SMTP;
	1 Oct 2013 09:41:51 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92%21]) with mapi id
	14.02.0342.003; Tue, 1 Oct 2013 04:41:48 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Sudo binary missing suid - bit
Thread-Index: Ac6+iha8UingTYm6TAqUUCqFhvnGkAAADDhg
Date: Tue, 1 Oct 2013 09:41:48 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09AAB21E@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4@AMDTCEX12.actuant.pri>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: TP235YSBv4/1JOB6AHKAkg==
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 01 Oct 2013 09:41:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ups. I meant mode 4111.

-TK

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Keskinarkaus, Teemu
Sent: 1. lokakuuta 2013 12:39
To: poky@yoctoproject.org
Subject: [poky] Sudo binary missing suid - bit

Hi,

I'm trying to get sudo - binary working in Yocto/Poky - based project. The =
binary is already on image, but for some reason it lacks the suid - bit and=
 thus does not work. If I add the suid - bit with root user the sudo starts=
 working as expected.

There is in sudo - recipe this line:  chmod 411 ${D}${bindir}/sudo

And the sudo - binary in sudo/1.8.6p7-r2/image/usr/bin has the right modes =
for binary, but when it gets installed to actual image the suid - bit is lo=
st.

Any idea how to fix that? Since the sudo is part of the poky I would though=
t it would work without too much of a hassle.

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

