Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78A494C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 15:19:28 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so6391235iwn.35
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 13:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=D70CzEMedr17AMlN08iXqOUv251czgtlz0pCmIqmxXo=;
	b=VrP8Krb8houLEOS3vVC2iRMlkDDqX5PVJR9Zqa0CLuSkbrbo5+SzZnWdi3TRKFW3kt
	9RnzsCYWdP49bGu8bKPGIfkMPemcjgr0QoreWIg0dqxGeNX4Is6EBV65w9eiqXoDqMsJ
	JpJmI/qvK/q7YRVKkzD3pHESVrvmEnwKAW/L0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	b=h7k5oLfMvisThvKun4wOXtRKU8AaJ47058RxLVkeN1XXQ3ufrjQeIhyY6pUy08PTpc
	8B8/5iPdUGzo3nqQlnmT8n+eDpsUGgmUnyWiL8I6jwyh/jePvtsVP8qvUJhHUF5hXmar
	LY72/54r1M9/EqGyIQuyRF21s/Yx9f9EkHyKo=
MIME-Version: 1.0
Received: by 10.231.31.1 with SMTP id w1mr7457755ibc.7.1293052766450; Wed, 22
	Dec 2010 13:19:26 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Wed, 22 Dec 2010 13:19:26 -0800 (PST)
In-Reply-To: <1293050270.3578.172.camel@rex>
References: <70D74F2C-4429-4294-9668-2D17B8A31943@dominion.thruhere.net>
	<1293029368.25087.7644.camel@rex>
	<ED7C4989-D54D-4C12-AD6A-2135EB1258AE@dominion.thruhere.net>
	<1293050270.3578.172.camel@rex>
Date: Wed, 22 Dec 2010 22:19:26 +0100
Message-ID: <AANLkTik3+BCqhe_M8VqST-U8mxtXPiDF6eo_cbWLf-qm@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
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
X-List-Received-Date: Wed, 22 Dec 2010 21:19:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2010/12/22 Richard Purdie <richard.purdie@linuxfoundation.org>:
> On Wed, 2010-12-22 at 16:04 +0100, Koen Kooi wrote:
>> Op 22 dec 2010, om 15:49 heeft Richard Purdie het volgende geschreven:
>>
>> > On Wed, 2010-12-22 at 14:49 +0100, Koen Kooi wrote:
>> >> The core layer has tons of RDEPENDS =3D "foo", which should actually =
be
>> >> RDEPENDS_${PN}. What's the policy on those?
>> >
>> > They should be fixed. Patches very welcome...
>>
>> A quick sed gives me:
>>
>> =A076 files changed, 77 insertions(+), 77 deletions(-)
>>
>> Do you want that as a single patch and if not, how do you want to have
>> it split and are PR bumps needed?
>
> One patch is fine. One tricky part is that this is a change in behaviour
> as an RDEPENDS is applied to every RDEPENDS_XXX, not just XXX=3D${PN} and
> that means we really should bump PR :/.
>
> Is there also a similar problem with RRECOMMENDS?
>
> Cheers,
>
> Richard
>

Yes.

This was discussed on the oe mailing list in oct
See http://thread.gmane.org/gmane.comp.handhelds.openembedded/37858/focus=
=3D37903
Martin Jansa did a lot of  work on this.
If you read the thread you'll see that there is a case in which the
_${PN} should not be added.
Not checked if this specific exception is also present in poky.

Frans

