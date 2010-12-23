Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 258FB4C810F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 07:52:21 -0600 (CST)
Received: by wwb31 with SMTP id 31so7515633wwb.11
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 05:52:21 -0800 (PST)
Received: by 10.216.48.6 with SMTP id u6mr8874199web.77.1293112340992;
	Thu, 23 Dec 2010 05:52:20 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id r38sm3754505weq.47.2010.12.23.05.52.20
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 23 Dec 2010 05:52:20 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293050270.3578.172.camel@rex>
Date: Thu, 23 Dec 2010 14:52:19 +0100
Message-Id: <70699086-5BB2-4DFD-87AF-CC8937CE4010@dominion.thruhere.net>
References: <70D74F2C-4429-4294-9668-2D17B8A31943@dominion.thruhere.net>
	<1293029368.25087.7644.camel@rex>
	<ED7C4989-D54D-4C12-AD6A-2135EB1258AE@dominion.thruhere.net>
	<1293050270.3578.172.camel@rex>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: RDEPENDS = "foo" in core layer
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Dec 2010 13:52:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 22 dec 2010, om 21:37 heeft Richard Purdie het volgende geschreven:

> On Wed, 2010-12-22 at 16:04 +0100, Koen Kooi wrote:
>> Op 22 dec 2010, om 15:49 heeft Richard Purdie het volgende =
geschreven:
>>=20
>>> On Wed, 2010-12-22 at 14:49 +0100, Koen Kooi wrote:
>>>> The core layer has tons of RDEPENDS =3D "foo", which should =
actually be
>>>> RDEPENDS_${PN}. What's the policy on those?
>>>=20
>>> They should be fixed. Patches very welcome...
>>=20
>> A quick sed gives me:
>>=20
>> 76 files changed, 77 insertions(+), 77 deletions(-)
>>=20
>> Do you want that as a single patch and if not, how do you want to =
have
>> it split and are PR bumps needed?
>=20
> One patch is fine. One tricky part is that this is a change in =
behaviour
> as an RDEPENDS is applied to every RDEPENDS_XXX, not just XXX=3D${PN} =
and
> that means we really should bump PR :/.

Patch is on the way!

> Is there also a similar problem with RRECOMMENDS?

Yes.

I did a build after bumping PR and the changes look safe for =
console-image: =
http://gitorious.org/angstrom/angstrom-testlab/commit/c4fc7f829cbaa3e16417=
007b3c1c4f6f05c26d60

regards,

Koen=

