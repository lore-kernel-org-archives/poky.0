Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDCADE00D05; Wed, 16 Aug 2017 03:20:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_05,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0245]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Aug 2017 03:20:24 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7CB7E00C9F
	for <poky@yoctoproject.org>; Wed, 16 Aug 2017 03:20:24 -0700 (PDT)
Received: from [62.225.157.196] by 3c-app-gmx-bs46.server.lan (via HTTP);
	Wed, 16 Aug 2017 12:15:19 +0200
MIME-Version: 1.0
Message-ID: <trinity-55350af2-e1e0-4cbf-9457-8483bdea80b6-1502878519517@3c-app-gmx-bs46>
From: "Arno Steffens" <star@gmx.li>
To: "pokyyoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 16 Aug 2017 12:15:19 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:skWK2aH69llrk9bsl+DJurPb53hTEsaZWG8jppSbLc6
	tw3GjVILol950pVZqpTX+17yODXYn1NRYYpL94T6SiKCh6SG58
	77eaEAN4lu4dcf7mUT/oRiZaNCxkj876VPEB46EkS4XGKZdWjX
	owLxoY0VAUmjf8zyOnoGdIPKbfmlVgpH/gm1Mdiy+ec2kqGDH7
	REmiO0fk9HTq4aN/K/88ywLMgouktvFDI4VryG8E+PcEHZOCP3
	Vv4vTVwjLf2ppq+H1jGpofKvEy3ZujkyDLhFAXKpju4beRxnPw 2ahYJQ=
X-UI-Out-Filterresults: notjunk:1;V01:K0:uJj0Fi/z6RM=:MwejTp3kqjsPERtCPK3JFg
	qo5HTHnzQx8MwV1h5rAuPzyaw3mOF78guATjl1/T3h+HL80H2QSDmvRwyokG26WcZiiDvrwb2
	orqS74WM5v80FEeis2+nR2RGQvh8GKaxhnQxI8PZTnRLvnWCHN1T9SJvHXrpWdr/8bkWmPWMH
	YR1SiE0c7kFOEP0OTDA4eX9IesAY5ImWuFtjbArHB1pExnmIQbc4y9tqMfIjCNC+2jjO1FlVn
	bguYhhVNgzGL6z/hLu9lOqSRvFMkY1WxYaCngPIvYZbhsVedMMUE+yc2LOJvJVGGSKdw+Mhaa
	NJP8g/o9bQnrdh+tSbtfo9osvGLWmxQ6iS39qxFHSzbv4xzhjfkksHcDS8MP9TZWiHwfCpx3y
	NfS0DmAld6yqwzlgk+A6WSpJmNAMtf7/Yvy+JtGz0lCotJXt/p6KXzmDAVX5Fwe4Ho0SFwmb0
	cw5baoMptTmFKnx7X5vQQ5aHYoPZmE9rJ3kfLmJIg81xYJpB4Bkb
Subject: Eclipse Plugin
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
X-List-Received-Date: Wed, 16 Aug 2017 10:20:25 -0000
Content-Type: text/plain; charset=UTF-8

I give the Eclipse Plugin a try. It works so far at a first glance - so compilation was fine.
But: The include pathes are all set to the PC (0x86) instead of ARM. This seems to be a bug.

Is there someone out there, that can solve this?

Also, oxygen is out now for quite a while, but no plugin for this version. Are there expected problems to use previous plugin (neon) for oxygen?

Thanks
Arno

