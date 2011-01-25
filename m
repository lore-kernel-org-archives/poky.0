Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB5FB4C810E3;
	Tue, 25 Jan 2011 12:42:31 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so5953257iyb.35
	for <multiple recipients>; Tue, 25 Jan 2011 10:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=s1KJnfFVtjxzdzsOaH8igaicjlmj4Z8SP3sA2KO6mRc=;
	b=l7TXvCsCIo5StDj8E2vfoaKhZSqXxj/OLBIyuwKx6cI1ZmivXZkxeh0lvlxWFJWoi4
	UKhjCnsQS7s0eCRkJOIXjXygIYhmOH+LJYtYX6Ng6BmAlVBz3EoMCsh+Cj19DvaPwdi+
	UwRyI4sAqFhKQUtShmoI/A946c3iBbZm0bOwI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=l79f4EkF5Lum8p7yD42s6MHudQvKU71+1YSs+Oxywz8yy2cHukFV1TB2ZZX2JaR0r3
	nHuMrZPkktWN3vOaNypyz+4HeOTxIXJA6j6qWzZBSr+kmjhXsDJZmWheecMXRpjIXsV9
	mNIwvAdGa4qPpH0HJvUEbEgb9A2i0B6dbmAtU=
MIME-Version: 1.0
Received: by 10.231.207.84 with SMTP id fx20mr6944000ibb.62.1295980951235;
	Tue, 25 Jan 2011 10:42:31 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 25 Jan 2011 10:42:31 -0800 (PST)
In-Reply-To: <4D3F067A.2040103@intel.com>
References: <cover.1295970827.git.bruce.ashfield@windriver.com>
	<4D3F067A.2040103@intel.com>
Date: Tue, 25 Jan 2011 13:42:31 -0500
Message-ID: <AANLkTikSJgOjYA1qqWyeHYdz6iLaQXu5z=SF+GOEzKCh@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] perf: hard-code NO_LIBPERL/NO_LIBPYTHO
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
X-List-Received-Date: Tue, 25 Jan 2011 18:42:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 25, 2011 at 12:20 PM, Saul Wold <saul.wold@intel.com> wrote:
> On 01/25/2011 07:59 AM, Bruce Ashfield wrote:
>>
>> We already had this fix in the 2.6.37 kernel (and it is staged
>> temporarily there) so this is the same change for the -stable
>> kernel to fix the perf build error reported by Gary this morning.
>>
>> I went ahead and merged this to the kernel tree directly, since
>> we may not loop back and do another fix for this on in the -stable
>> kernel.
>>
>> Compiled for atom-pc/beagleboard and routerstationpro.
>>
> Does this mean we can revert the patch in perl and python recipes?

I hadn't noticed if we had a patch there, I'll have a look. The other
patch we had for this was for 2.6.37 and we are maintaining it
out of tree (since it is temporary).

so right now, we shouldn't revert anything that I know of, and only
add this one in for the 2.6.34 kernel.

Cheers,

Bruce

>
> Sau!
>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> =A0 Branch: zedd/kernel-stable
>> =A0 Browse:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel-stab=
le
>>
>> Thanks,
>> =A0 =A0 Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (1):
>> =A0 linux-yocto/stable: perf: hard-code NO_LIBPERL/NO_LIBPYTHO
>>
>> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 18
>> +++++++++---------
>> =A01 files changed, 9 insertions(+), 9 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

