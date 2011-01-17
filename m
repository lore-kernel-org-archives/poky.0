Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4514F4C81065
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 15:41:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5813448iwn.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 13:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=th4UZ4zl6DbeoV7Z9D3n0FKgsP4a1nvINsKUYj10TFI=;
	b=LGE+pyaB6+JzlNDNPC3rq3n0tNDPO4yI1Bg50MGNQaGdhqLt/QMhA5vYyKOijVznaT
	Rau0mAuLxOGSLesLe9QkD/ZL3ansSPfliH/MLhYzBkq2g6WYLY1bSd8+XvF+YwP4Gxd3
	Zex+tZqYlJWo8+B5RwloAhsfrfCBaohPKUSVM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=HGAAj6y0NjgTRsanPbFUkSnfjuIudsDNW6OtEEH46kUGGvL/UtD0S/qn1D5zft8ND0
	JcFIvZo+2Qm4wTetf9kaetOxbXf0jsR9aEk84IzsJteXDV2AG34WMmLRvHR7FeXXAzRj
	vA29DV2zjxJSTYKW+Z+mPh0fkMppP51akZsl8=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr4845279iba.37.1295300508972; Mon,
	17 Jan 2011 13:41:48 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 17 Jan 2011 13:41:48 -0800 (PST)
In-Reply-To: <AANLkTi=ZQnPnSmRPLf3SsiCJOsDcb1dWmSzGPtDTi+G3@mail.gmail.com>
References: <4D33F57D.2030009@intel.com>
	<AANLkTi=ZQnPnSmRPLf3SsiCJOsDcb1dWmSzGPtDTi+G3@mail.gmail.com>
Date: Mon, 17 Jan 2011 16:41:48 -0500
Message-ID: <AANLkTi=xW1acnvdnSFpx_kpb2gij-pf4svxk2Lu78u79@mail.gmail.com>
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
X-List-Received-Date: Mon, 17 Jan 2011 21:41:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 17, 2011 at 12:35 PM, Bruce Ashfield
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
>
> Problem solved, there were some configuration values being
> dropped. I'm putting together a fix now.
>
> root@qemuarm:~# uname -a
> Linux qemuarm 2.6.37-yocto-standard+ #2 PREEMPT Mon Jan 17 12:35:56
> EST 2011 armv5tejl GNU/Linux

pull request just sent.

Cheers,

Bruce

>
>
> Cheers,
>
> Bruce
>
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

