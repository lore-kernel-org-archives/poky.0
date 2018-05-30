Return-Path: <stefan.bigler@sui.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B22AE00C9C; Wed, 30 May 2018 12:44:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.74.142.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
X-Greylist: delayed 588 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 May 2018 12:44:53 PDT
Received: from olympius.sui-inter.net (olympius.sui-inter.net [80.74.142.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0D58E00A0C
	for <poky@yoctoproject.org>; Wed, 30 May 2018 12:44:53 -0700 (PDT)
Received: from DESKTOPA1KQUSM (59-119-219-83.dyn.cable.fcom.ch [83.219.119.59])
	by olympius.sui-inter.net (Postfix) with ESMTPSA id 8DC8911602D6
	for <poky@yoctoproject.org>; Wed, 30 May 2018 21:35:03 +0200 (CEST)
From: <stefan.bigler@sui.ch>
To: <poky@yoctoproject.org>
Date: Wed, 30 May 2018 21:35:00 +0200
Message-ID: <000901d3f84d$4ce6ca00$e6b45e00$@sui.ch>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdP4S/Mm020tOSWsSzCM89NH5cHiEQ==
Subject: Yocto 2.5 missing source tarballs yocto sources mirror
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: stefan.bigler@sui.ch
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 May 2018 19:44:55 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: de-ch

Hi, I have the same problem with getting pseudo-native-1.9.0 behind a
company firewall as described in the "Yocto 2.5 and problem with
pseudo-native-1.9.0" thread.
I can fetch and build Poky 2.5 without any problem when the GIT-Port is
enabled. If the port is blocked, then bitbake tries to download the pseudo
1.9.0 from the mirrors.
It tries go get  pseudo-1.9.0.tar.bz2 form 
http://downloads.yoctoproject.org/mirror/sources/
but this version is missing. The latest available version is
pseudo-1.8.2.tar.bz2
I expect updating the mirror would solve the problem.
The same applies for prelink-cross, ptest-runner2 and eventually others
Regards



