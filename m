Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CDCF4C800BA
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 14:22:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxd2 with SMTP id 2so105470vxd.35
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 12:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=Ze3wSsl6VNoM0UUP7jahOS1umdutBLq+6VqNUVMLpT8=;
	b=dQlEXfiMww9KpUPV5xXvou2iIv7UfigGm8h+lmalPddLa9y/rMbDawugN+LQ/19vVj
	6Q+RY4HlPF2GhwJM8ajO4aA93GzUcY3mCOW739cmA3dCyuWw+DJRs7BqCB9nkTy2nDka
	uimy1MK02taI5l2fba7ATMNvbUskg+VcdjNAc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=P18maMCSzjJqluehs6RQKZOZuh/4Z/MDwy7PXHDRMAqo1HrkEB2+e6dsC/g6ZTMqtS
	y7LRd6Bn9luurRVfCIWA2isMbm0PG8M48GmLHk9Heq1H1LTwGGFfxVSpDRDoCGyDmDT8
	/1FYdqwv45EZeNaOdEP7zVMOqe29Yh77avIik=
Received: by 10.52.116.33 with SMTP id jt1mr1818996vdb.249.1308252137067; Thu,
	16 Jun 2011 12:22:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.181.2 with HTTP; Thu, 16 Jun 2011 12:21:57 -0700 (PDT)
In-Reply-To: <4DFA5335.9030102@windriver.com>
References: <4DFA2CFF.6020003@emcraft.com> <4DFA4B3F.905@windriver.com>
	<BANLkTinYHKHpkdBhLJASLQXpBHueEHTZvg@mail.gmail.com>
	<4DFA5335.9030102@windriver.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 16 Jun 2011 12:21:57 -0700
X-Google-Sender-Auth: sSADW6SH1cKzpE6zvozCysh2PVg
Message-ID: <BANLkTin40ecGy8RBEbfaRKEXY6Lu-YrALA@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: bbappend and require
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
X-List-Received-Date: Thu, 16 Jun 2011 19:22:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 16, 2011 at 12:02 PM, Mark Hatle <mark.hatle@windriver.com> wro=
te:
> On 6/16/11 1:39 PM, Chris Larson wrote:
>> On Thu, Jun 16, 2011 at 11:28 AM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>>> On 6/16/11 11:19 AM, Ilya Yanok wrote:
>>>> Hi guys,
>>>>
>>>> Is bbappend supposed to work when the recipe is included (with require=
)
>>>> from another recipe?
>>>>
>>>> We want to add some package to SDK so I've created
>>>> task-sdk-host.bbappend in our layer and it works fine. But when I'm
>>>> building task-qte-toolchain-host (which requires task-sdk-host) bbappe=
nd
>>>> file seems to be ignored. Is it to be expected?
>>>>
>>>> It's no problem to create task-qte-toolchain.bbappend also, and this
>>>> fixes the problem but what should be the right behavior of require wrt
>>>> bbapend?
>>>
>>> This sounds like a bug to me. =C2=A0Which version of Poky/Yocto are you=
 currently
>>> using, and can you give us a simple reproducer. =C2=A0(Better yet, file=
 a bug in the
>>> bugzilla.yoctoproject.org... if you can't do so, I'll be happy to file =
it if I
>>> can get a reproducer.)
>>
>> I wouldn't think this is a bug. A bbappend applies to the recipe
>> itself, not any of the files it includes. This is Working As Designed,
>> as far as I can tell.
>
> I misunderstood the issue then.. I thought what was being described was..
>
> task-sdk-host.bb had a task-sdk-host.bbappend
>
> task-qte-toolchain-host.bb requires task-sdk-host..
>
> building task-sdk-host "worked", building "task-qte-toolchain-host" didn'=
t. =C2=A0If
> that's not the case... then Chris is correct.. this is as designed. =C2=
=A0a bbappend
> only affects the item being appended.

Nature of the terminology being used, it's unclear whether 'require'
means 'recipe dependency' or 'the bitbake "require" command' in this
context :)
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

