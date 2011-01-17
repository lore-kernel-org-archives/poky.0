Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0514C4C810E8
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:13:36 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5440308iwn.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=i9lYWaxwpMmPHSO3DjjbMIw47AOUtTrX1L5IW25ojkU=;
	b=VZu9vNM/yaAgqLb3ET4Ubyn5WEvDsAFkj22pzbo2F12+2OArt6OznqcbI3gm0KSM5c
	2LLdvsLU/9ZS+wIVtIEgYqsSCxK4yC/2tZwbJO0QkTgqo7bMoZGnQrqy9O6qKcRAWiVd
	I9Sr8p9RcvRgyVJqu9oRS5h019km98xNUecrc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=O32B8+uSlLJVFu/e+wHqfIUZxJnsOtYFZCW5T8q1fbjtZoxDMlzcSgYAhYC93UeYce
	VkYeCiwbl+1HEZOJCAa7BPjJCix2so2WPnzrTcXNyNOooNkEWJ4LoUETFcxLXhMM7XBg
	892ZPuiuZegrnAJkH77VLPIGIwu033Qqwv7yE=
MIME-Version: 1.0
Received: by 10.231.15.133 with SMTP id k5mr4250996iba.187.1295277215710; Mon,
	17 Jan 2011 07:13:35 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 17 Jan 2011 07:13:35 -0800 (PST)
In-Reply-To: <AANLkTi=0PVQVF9GjC4+bdu=5Tb0KFwaNMGTd-28YiYm_@mail.gmail.com>
References: <4D33F57D.2030009@intel.com>
	<AANLkTi=0PVQVF9GjC4+bdu=5Tb0KFwaNMGTd-28YiYm_@mail.gmail.com>
Date: Mon, 17 Jan 2011 10:13:35 -0500
Message-ID: <AANLkTin7YwXZzeUZgjDEPhMqhovgY9yOybjHVWUCp6AY@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: QemuARM Boot Failure
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
X-List-Received-Date: Mon, 17 Jan 2011 15:13:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 17, 2011 at 8:42 AM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Mon, Jan 17, 2011 at 2:53 AM, Saul Wold <saul.wold@intel.com> wrote:
>>
>> Bruce,
>>
>> Did you test the latest systemtap update on ARM? =A0I am just curious ba=
sed on
>> the current failure that we are having with qemuarm. =A0If so, against w=
hat
>> revision of master? This might help us narrow down the issue.
>
> The systemtap updates are generic, just configuration items that wouldn't
> trigger a boot error .. at least not in any normal stretch of the imagina=
tion.
>
> I booted all arches when I updated to the full 2.6.37 release, which was =
about
> a week ago. Nothing of significance has changed since then.
>
> I'll do some builds and booting today and see what's up.

An update.

I've bisected to my last known good boot .. and it fails the same way
as the latest. I'll continue looking at the kernel, but this doesn't look
to be isolated to any kernel change in particular.

Bruce

>
> Bruce
>
>>
>>
>> I tried both the systemtap version and the older version and both failed=
.
>> =A0The last known good qemuarm was 2 weeks ago, there have been a number=
 of
>> kernel updates in that time along with a loads of userspace changes, but=
 no
>> qemu updates since the first of the year. =A0I am not sure about the use=
rspace
>> changes yet, need to review them more deeply.
>>
>> I will be tied up tomorrow, but will try bisecting tomorrow evening if t=
here
>> is no update before then.
>>
>> Thanks
>> =A0 Sau!
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

