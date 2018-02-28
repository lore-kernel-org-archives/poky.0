Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1A5EE00DF2; Wed, 28 Feb 2018 05:18:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3538E00843
	for <poky@yoctoproject.org>; Wed, 28 Feb 2018 05:18:45 -0800 (PST)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs52.server.lan (via HTTP); Wed, 28 Feb 2018 14:18:44 +0100
MIME-Version: 1.0
Message-ID: <trinity-e1387e79-f91d-497b-aa8b-898a2b01be36-1519823924420@3c-app-gmx-bs52>
From: star@gmx.li
To: poky@yoctoproject.org
Date: Wed, 28 Feb 2018 14:18:44 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:g5hZcGeiGemh15Warzs4PwYoUWHoVrK+Qhf48AHHUVH
	nWPW1Std+awK6Qx5a7IhhhUs8HDf18M6z/sE6Vgbj2FlDv0FAZ
	8NekhGvMZih3GbyENQEdRA0FxXslKFDQznItRqFxqDchuJZelz
	qUnzUBgEcFRpldm52XFzN5lpxv2NaEPwIUJH5pWE2ZEOUnlVSw
	s1yvZk5J4HvP/xNbSsYIfr/wQbN/PF41+1D7jFuaJWSSKu8oBj
	dz9GNvc5AuG+ie6F1CpEZ3gm+koQ56XC7AFPDRkxHYNtpMMjOy AWXmQE=
X-UI-Out-Filterresults: notjunk:1;V01:K0:dwJtrK1SfSA=:lyb5I7dJ7IKvsKlKVt4M1W
	SbRyWsXx4OLCVVbH3D+mbzezoGBKmfv+8GYyvaqlH01T4HwRTpVeeWlyzt+qajrOXWFTzzYR6
	auC7CkYuENVkGRtxHBI31TUIQ/oSk+vbuaQQ/um84s0dEeKkTb5Dm9h5/DRCQ4kke+P0sO7qE
	KI02HlYBU8vhYtPkCw4DkCa6CFS6j+CPEmv/lT3Sc13Q8+Jvj9R49AU6O/Kq5OPY0c8JwWmRQ
	eWGMOUEcm43u6L2f9TkqMCY7HG6zJ0hLtFa1frOC2UkTWzUbkJ3gvWr//gOxjAcvZALANf1AE
	IPAWkktDHw/dP4Csx9YMiGYwe9bt/vOx5Lyy0a4S5K5cdciSSTX7dVtwJ1q6btRsvKGiPHk2d
	Mozf0TYb6L6J6hRKYj81xpUrdcbZod5/8DTauRxFfjfm+T+RmmZxpsT1lqC/gaH7D+z43e902
	ru+fkkfHrOz1pLFRfG5aMNhCjDp5liSRPjR20wVGTJVqFE2qKAdu
Subject: adduser / passwd
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
X-List-Received-Date: Wed, 28 Feb 2018 13:18:46 -0000
Content-Type: text/plain; charset=UTF-8

I have added two users to my image. I can login as user, but can't change my user-password.
It request the old password first (which isn't the case if I change password as root!).
As the comparison with old password fails, I assume it can't read it.
In fact - /etc/shadow is read only for root.
How can I solve this? 
Giving user read permission seems dangerous to me, as you might read the hashes for root ...
Regards,
Arno

