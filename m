Return-Path: <contact@nicheconsult.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1DE9E00CB9; Thu,  1 Aug 2019 09:31:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.26.49.177 listed in list.dnswl.org]
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
	[217.26.49.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DB9E00C87
	for <poky@yoctoproject.org>; Thu,  1 Aug 2019 09:31:39 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>)
	id 1htDzN-0002ft-Rw; Thu, 01 Aug 2019 18:31:37 +0200
Received: from [223.186.3.40] (helo=[192.168.43.175])
	by asmtp012.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>)
	id 1htDzN-0009W5-F6; Thu, 01 Aug 2019 18:31:37 +0200
X-Authenticated-Sender-Id: contact@nicheconsult.in
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Niche Consulting India <contact@nicheconsult.in>
In-Reply-To: <e8d274bf7005058bf9e3df0cd3a0a6506b1bf598.camel@linuxfoundation.org>
Date: Thu, 1 Aug 2019 22:01:32 +0530
Message-Id: <0C83CE07-1811-4DBB-9DE5-00AD5E582A82@nicheconsult.in>
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
	<5DDDFCF3-C543-4699-91C4-AF5D54C98D8A@nicheconsult.in>
	<CAMKF1sqFNbLYMvtSxmyiS3K5naJqx7X7bOf9N0y4fNzpkCQOfQ@mail.gmail.com>
	<AB061DE5-38D5-471B-849A-EF16694940D3@nicheconsult.in>
	<e8d274bf7005058bf9e3df0cd3a0a6506b1bf598.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3273)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: error in building qt5-image
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
X-List-Received-Date: Thu, 01 Aug 2019 16:31:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

there is a bitbake.conf file which i had to locate as i am new to this =
ecosystem.
i was ale to build qt5 image but the tar.xz file which was generated, =
when i flashed it onto usb stick using dd, it is not booting up. can =
someone tell me what file to collect from tmp/deploy and what to do with =
it on mac os/xz to get the image to boot?

> On 01-Aug-2019, at 3:55 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Wed, 2019-07-31 at 22:53 +0530, Niche Consulting India wrote:
>> there is no option to enforce single build process. Given below is
>> usage of bit bake.
>=20
> PARALLEL_MAKE =3D ""
>=20
> or
>=20
> PARALLEL_MAKE_pn-omxplayer =3D ""
>=20
> will do that either globally or for that specific recipe.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
>=20
>=20
>=20


