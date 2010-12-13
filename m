Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E68594C80050;
	Sun, 12 Dec 2010 22:37:12 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so819940iyb.35
	for <multiple recipients>; Sun, 12 Dec 2010 20:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=AUtqmuHVxciEQh1AgtZFu+HCkyktvXWz6fCe5chbPxg=;
	b=irJl4ffmFp0+qT1e87R8uNthxD5PSrxWeMiV1e2Hmw+FmlpadtyRb8Dxs+/28cUKLY
	7idrcaaxIQvZRVAzgmGVGRRHyWr9jS4Z23VITfQd1M5hWjNPSSe0ceQwzK2zzRYKo4xM
	QiyZLf09ILNJg/wCZLz7SS/Yh2JHsEZeoTHaI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ET8GNhEI1gfJipzQVuapjXAt755Ffd/yxjHXBO6qtT7nQgjvRXsRuCI61hYeA2BKPU
	eVQ+O6NJyrzlfOdZAJf4k7OD6rfiu8XP+50hQYeeVG9+2cuSI9DAfTz9yyONyHCb2f5W
	sI2BHj/cT+7XDm3stVGP51rbEiZcqP8y+a0a4=
MIME-Version: 1.0
Received: by 10.231.161.15 with SMTP id p15mr1465330ibx.104.1292215032578;
	Sun, 12 Dec 2010 20:37:12 -0800 (PST)
Received: by 10.231.207.1 with HTTP; Sun, 12 Dec 2010 20:37:12 -0800 (PST)
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6F75@shsmsx501.ccr.corp.intel.com>
References: <4D03D481.4050104@linux.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A317D6F75@shsmsx501.ccr.corp.intel.com>
Date: Sun, 12 Dec 2010 23:37:12 -0500
Message-ID: <AANLkTimmRm=o9L=L=TuQ58Pd4or4eeNZtOWr=Hq6Un_y@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Milestone 2 Stabilization Branch Created (Resend)
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
X-List-Received-Date: Mon, 13 Dec 2010 04:37:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 12, 2010 at 9:10 PM, Xu, Jiajun <jiajun.xu@intel.com> wrote:
>> [Resend with correct mailing lists]
>>
>>
>> Yocto / Poky Folks:
>>
>> Thanks to everyone's hard work, we are currently on working getting
>> the first build of M2 started and available for QA testing on Monday.
>>
>> I have pushed out the lastest commit that was pending in the
>> distro/master area to both master and create a builds/milestone branch
>> which is where bug fixes for M2 will go.
>>
>> There is currently an issue with the PPC Kernel build on this branch
>> and that is being worked, this may impact getting a PPC build available =
by Monday.
>>
>> For the next week as we stabilize M2, please ensure that any patch or
>> pull requests indicate that this is for M2 or not. =A0By default all
>> commits will go to master regardless.
>>
>
> Hi Saul,
> Nightly build is near finished now. PPC and some non-x86 real hardware ta=
rget building failed. I begin downloading them now and will start QA testin=
g.

Is there somewhere I can check a log of the build errors ? We flipped
in the 2.6.37 kernel and associated tools, but the any hardware targets
should still be building 2.6.34 and be unaffected.

If it isn't a kernel that failed to build .. then I'm less help :)

Cheers,

Bruce

>
>> Thanks
>> =A0 =A0 =A0Sau!
>> Saul Wold
>> Yocto Component Wrangler @ Intel
>> Yocto Project / Poky Build System
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> Best Regards,
> Jiajun
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

