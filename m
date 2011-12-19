Return-Path: <flocirel@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F0DEE00306
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 01:09:51 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so9387501wgb.11
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 01:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=7MgwGjjIK7OLSC1l1Imm2bJpx0OFRip3z0XJSrFBaP4=;
	b=iVaAAEp7RJSy56HWP0sRpZ9MrADpufAcnS1Cn+EBszfeQeDkBuVlMGs5RbbUGBSypY
	rhzonI0Tv2iGpYXw2b4ttI0rLCXgM26GkzlDvCG8/KONr7G1hvpF+qnm+YWHIo90bhJc
	QIXY0Gn7KomChBmzwUdNsGVYDzyI9vWW7kYkA=
MIME-Version: 1.0
Received: by 10.180.19.10 with SMTP id a10mr19011228wie.1.1324285788739; Mon,
	19 Dec 2011 01:09:48 -0800 (PST)
Received: by 10.223.156.6 with HTTP; Mon, 19 Dec 2011 01:09:48 -0800 (PST)
In-Reply-To: <2515584.y5UYPoyKeW@helios>
References: <4EEB1EF8.7060204@gherzan.ro> <4EEB8267.6040500@linux.intel.com>
	<2515584.y5UYPoyKeW@helios>
Date: Mon, 19 Dec 2011 11:09:48 +0200
Message-ID: <CANdftmNArAycrK9gP7nMwuSk+6VUESZ+gsZXo4AW8XGkaUzAsQ@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: poky@yoctoproject.org
Subject: Re: License | "or" problem?
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
X-List-Received-Date: Mon, 19 Dec 2011 09:09:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

So if it's like Paul says, this seems to be a bug.

On Fri, Dec 16, 2011 at 8:00 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 16 December 2011 09:39:51 Saul Wold wrote:
>> On 12/16/2011 02:35 AM, Andrei Gherzan wrote:
>> > As i know qt4 has double license. This means that everybody can choose
>> > from GPLv3 and LGPLv2.1. This fact is reflected in bb file as:
>> >
>> > LICENSE = "LGPLv2.1 | GPLv3"
>>
>> Also, looking at the current LICENSE in qt, it will need to be further
>> defined on a package level as to how each package is licensed, so that
>> when the manifest and audit occurs only the LGPLv2.1 bits are included.
>
> Where do you get the idea that there is a mix of licenses for Qt4? As far as I
> am aware, the user is supposed to select either LGPLv2.1 or GPLv3, which is
> exactly what the current value of LICENSE above means.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

