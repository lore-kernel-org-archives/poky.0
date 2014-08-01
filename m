Return-Path: <Bart.Jansseune@prodatamobility.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D989BE006EE; Fri,  1 Aug 2014 05:01:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Aug 2014 05:01:47 PDT
Received: from mail.fortiscorp.eu (mail.fortiscorp.eu [213.246.247.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B399E005BB
	for <poky@yoctoproject.org>; Fri,  1 Aug 2014 05:01:47 -0700 (PDT)
Received: from mail.prodatamobility.eu [172.16.2.55] by mail.fortiscorp.eu -
	Websense Email Security (7.3.0); Fri, 01 Aug 2014 13:46:40 +0200
Received: from PSBEMAIL.psbe.site ([172.16.2.55]) by PSBEMAIL.psbe.site
	([172.16.2.55]) with mapi; Fri, 1 Aug 2014 13:46:40 +0200
From: Bart Jansseune <Bart.Jansseune@prodatamobility.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 1 Aug 2014 13:46:40 +0200
Thread-Topic: examine SSTATE_MIRRORS differences
Thread-Index: Ac+tfkHkPbv+O4jPSaqFPR7Qvi0rlw==
Message-ID: <A5CAA1824448514280B127CC52AD68A103073E4635BE@PSBEMAIL.psbe.site>
Accept-Language: en-US, fr-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, fr-BE
MIME-Version: 1.0
X-SEF-Processed: 7_3_0_01192__2014_08_01_13_46_40
Subject: examine SSTATE_MIRRORS differences
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
X-List-Received-Date: Fri, 01 Aug 2014 12:01:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to setup a SSTATE_MIRROR using a fast build server so that a slo=
w virtual machine doesn't have to rebuild everything.
Both are Ubuntu 14.04 64 bit machines and use the same poky release (daisy)=
.
What I notice is that for some components the cache is used eg perl-native =
but not for others.
I understand that once there is a delta between both machines, all dependen=
t packages also mismatch and need to be rebuilt.

How do you figure out where things start diverging?

Are there requirements on the tools of the build to ensure that SSTATE_MIRR=
OR can be used effectively? E.g. the gcc version on both machines might nee=
d to be the same.

Regards,=20
Bart

Bart Jansseune


