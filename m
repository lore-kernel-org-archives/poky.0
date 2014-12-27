Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EB47E00830; Sat, 27 Dec 2014 00:33:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD64E00571
	for <poky@yoctoproject.org>; Sat, 27 Dec 2014 00:33:53 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id l2so15580457wgh.13
	for <poky@yoctoproject.org>; Sat, 27 Dec 2014 00:33:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=QPNk67kvMdG/tRlb4Ca+GI8biXFmRJae2WY4IgHrPCU=;
	b=TlQS8gqUSDFU1a1mXdo5Td83Yu34ZtKTl1iM3EzIW0QDTeV/qfD2jE53LnKWU6avDq
	MvPwkjQRNjqeKTcB7a/29CLapWookEGWokglJt0r6KORhZhhNZ8ezwXZEOPrcW58V2Q5
	KJxdjsBYKkTEeJPft8Et+mhYxrVtW8AlgdUWNDaI45o27ygxWqK4RfGoZ1SLOhcVC9qC
	fuEI0lPMuRtyVjm5cJ7xwW9khL5+EEZpyPpOwoM1eU7iHPnnfrT1Z1u7AScfs3J1RZEN
	5nIQfErXJ4LdHTAr2l3AjMOq/NoqbD2Fh/mOaTYBqd/491oiPXu0Bs6dunTi8KClFMsf
	8sAQ==
X-Gm-Message-State: ALoCoQmDQgUREEahWLcHeMVQTKYFER81D7pb+KttddOr+Lwo6lu+yuU1dC4JZjlDBMb62jvLQkOn
X-Received: by 10.180.90.176 with SMTP id bx16mr76809640wib.0.1419669232986;
	Sat, 27 Dec 2014 00:33:52 -0800 (PST)
Received: from ?IPv6:2001:610:612::54af:78b2:ae85:a1d?
	([2001:610:612:0:54af:78b2:ae85:a1d])
	by mx.google.com with ESMTPSA id
	eu8sm30968687wib.21.2014.12.27.00.33.51
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 27 Dec 2014 00:33:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <549BF90A.40109@teledigit.eu>
Date: Sat, 27 Dec 2014 09:33:50 +0100
Message-Id: <63AC47F0-C77F-41B6-A457-2477C4BBE5DB@dominion.thruhere.net>
References: <549BF90A.40109@teledigit.eu>
To: Discussion of the angstrom distribution development
	<angstrom-distro-devel@linuxtogo.org>
X-Mailer: Apple Mail (2.1993)
Cc: beagleboard@googlegroups.com, poky@yoctoproject.org
Subject: Re: [Angstrom-devel] Building kernel for Beagleboard-C4
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
X-List-Received-Date: Sat, 27 Dec 2014 08:33:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> Op 25 dec. 2014, om 12:46 heeft K=C3=B6vesdi Gy=C3=B6rgy =
<kgy@teledigit.eu> het volgende geschreven:
>=20
> Hi,
>=20
> I tried to build image for my Beagleboard-C4 using the recent version =
of Angstrom and Yoctoproject/Poky, but got the following problem:
> I compiled all kernels I found compatible with my board: 3.2, 3.3, =
3.4, 3.7, 3.8, 3.14, including mainline and ti-staging, but none of them =
running on my board. The result is the same for all:
>=20
> --------------- 8< -------------------
> ...
> Loading file "/boot/uImage" from mmc device 0:2 (xxa2)

If you're still using uImage, your u-boot is too old, please use the =
matching u-boot found in $DEPLOY_DIR=

