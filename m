Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74185E002AC
	for <poky@yoctoproject.org>; Mon, 18 Nov 2013 02:45:47 -0800 (PST)
Received: from [216.82.241.132:12105] by server-14.bemta-8.messagelabs.com id
	6A/C2-11904-BDFE9825; Mon, 18 Nov 2013 10:45:47 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-15.tower-45.messagelabs.com!1384771546!27514681!1
X-Originating-IP: [207.250.73.121]
X-StarScan-Received: 
X-StarScan-Version: 6.9.13; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26036 invoked from network); 18 Nov 2013 10:45:46 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.121)
	by server-15.tower-45.messagelabs.com with AES128-SHA encrypted SMTP;
	18 Nov 2013 10:45:46 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805%17]) with mapi id
	14.02.0342.003; Mon, 18 Nov 2013 04:46:17 -0600
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Poky, EMGD/PVR and es2greas_x11 problem
Thread-Index: Ac7kSz4QMgj6fMB/QDm78RHFPfFAdg==
Date: Mon, 18 Nov 2013 10:46:16 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09C52DB3@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: wULSwGnf0vcyPustOADKgQ==
MIME-Version: 1.0
Subject: Poky, EMGD/PVR and es2greas_x11 problem
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
X-List-Received-Date: Mon, 18 Nov 2013 10:45:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I think this problem applies other than es2grears_x11 as well, but that's w=
hat I've used to test.

We have Atom based hw and we have made our own layer to poky that uses emen=
low as a base.

Everything seems to be working fine except when I start running the es2grea=
rs_x11 it starts okay, but the movement is really jerky. The reason can be =
found from dmesg that is flooded with this kind of messages:

[ 4343.640044] PVR_K: HWRecoveryResetSGX: From ISR
[ 4343.640063] PVR_K: HWRecoveryResetSGX: SGX Hardware Recovery triggered
[ 4343.640073] PVR_K: EUR_CR_EVENT_STATUS:     20000000
[ 4343.640080] PVR_K: EUR_CR_EVENT_STATUS2:    40
[ 4343.640088] PVR_K: EUR_CR_BIF_CTRL:         0
[ 4343.640095] PVR_K: EUR_CR_BIF_BANK0:        210ff
[ 4343.640102] PVR_K: EUR_CR_BIF_INT_STAT:     0
[ 4343.640110] PVR_K: EUR_CR_BIF_FAULT:        0
[ 4343.640117] PVR_K: EUR_CR_BIF_MEM_REQ_STAT: 0
[ 4343.640124] PVR_K: EUR_CR_CLKGATECTL:       111111
[ 4343.640132] PVR_K: EUR_CR_PDS_PC_BASE:      3e14380c
[ 4343.640138] PVR_K: SGX Host control:
[ 4343.640147] PVR_K:   0x0: 0x00000001 0x00000000 0x00000000 0x00000002
[ 4343.640156] PVR_K:   0x10: 0x00000000 0x0000000A 0x00030D40 0x00000002
[ 4343.640165] PVR_K:   0x20: 0x00000001 0x00000001 0x00000057 0x00000000
[ 4343.640173] PVR_K:   0x30: 0x000002C5 0x00000000 0x00000000 0x00000000
[ 4343.640180] PVR_K: SGX TA/3D control:
[ 4343.640189] PVR_K:   0x0: 0xFA002000 0xFA002100 0xFA001000 0xFA087000
[ 4343.640197] PVR_K:   0x10: 0x00000000 0x00000000 0x00000000 0xFA006820
[ 4343.640206] PVR_K:   0x20: 0x00000000 0x00000000 0x00000000 0x00000000
[ 4343.640214] PVR_K:   0x30: 0x00000000 0x00000000 0x00000000 0x00000000
[ 4343.640223] PVR_K:   0x40: 0x00000000 0x00000000 0x00000000 0x00000000
[ 4343.640232] PVR_K:   0x50: 0x00000000 0xFA153470 0xFA153434 0x00000001
[ 4343.640240] PVR_K:   0x60: 0xFA000000 0x3F59A000 0x00000001 0xFA0A0D00
[ 4343.640249] PVR_K:   0x70: 0xFA006850 0xFA0FFD80 0x00000000 0xFA0A90A0
[ 4343.640258] PVR_K:   0x80: 0xFA0FE420 0xFA153434 0xFA0A9220 0x00000000
[ 4343.640267] PVR_K:   0x90: 0x00000000 0x00000001 0x00000002 0x00000000
[ 4343.640275] PVR_K:   0xA0: 0x00000000 0x21160077 0x00000008 0x00000000
[ 4343.640284] PVR_K:   0xB0: 0x00000000 0x00000000 0x00000000 0x00000000
[ 4343.640292] PVR_K:   0xC0: 0x00000000 0x00000006 0x00000005 0x00000000
[ 4343.640301] PVR_K:   0xD0: 0xFA000000 0x80007000 0x80047000 0xFA003000
[ 4343.640310] PVR_K:   0xE0: 0xFA0A9060 0xFA0A9060 0x00000000 0x00000000
[ 4343.640320] PVR_K: Command Complete Data for display device 2:
[ 4343.640328] PVR_K:   SRC 0: (Not in use)

Has anyone else encountered the same problem and found out what was the pro=
blem? I found some mention this problem from google, but didn't find anythi=
ng that would solve this.

I updated system to run kernel 3.10.11 and EMGD 1.18, but that didn't make =
any change to this problem.

- Teemu Keskinarkaus

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

