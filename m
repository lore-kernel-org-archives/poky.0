Return-Path: <contact@nicheconsult.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62587E00D84; Sat, 27 Jul 2019 03:15:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8575BE00BAD
	for <poky@yoctoproject.org>; Sat, 27 Jul 2019 03:15:24 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>) id 1hrJjX-000GGN-52
	for poky@yoctoproject.org; Sat, 27 Jul 2019 12:15:23 +0200
Received: from [122.172.95.138] (helo=[192.168.1.3])
	by asmtp013.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>) id 1hrJjW-000HK8-TH
	for poky@yoctoproject.org; Sat, 27 Jul 2019 12:15:23 +0200
X-Authenticated-Sender-Id: contact@nicheconsult.in
From: Niche Consulting India <contact@nicheconsult.in>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 27 Jul 2019 15:45:20 +0530
References: <542FAA2F-800D-422D-A3FD-082BE941CFDA@nicheconsult.in>
To: poky@yoctoproject.org
In-Reply-To: <542FAA2F-800D-422D-A3FD-082BE941CFDA@nicheconsult.in>
Message-Id: <2B34F1C2-0A4A-42FF-B9CD-3956C84B99C7@nicheconsult.in>
X-Mailer: Apple Mail (2.3273)
Subject: Re: unable to build qt5-image
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
X-List-Received-Date: Sat, 27 Jul 2019 10:15:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 27-Jul-2019, at 2:59 PM, Niche Consulting India =
<contact@nicheconsult.in> wrote:
>=20
> hello,
>=20
> i was able to build dpi-basic-image on ubuntu 14.04 for warrior =
branch. But i wanted Qt and so followed usual process
> #bitbake qt5-image
> gives me error that it could not find recipes in metacarpi/ for lib =
and ntp. How do i fix that?
could not find recipes in meta-rpi for libao and ntp.

> which version of ubuntu is officially supported as i get a warning =
that ubuntu 14.04 is not supported?
>=20
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


