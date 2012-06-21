Return-Path: <andrea.adami@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6D4CE0070B
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 01:26:15 -0700 (PDT)
Received: by dadz8 with SMTP id z8so648942dad.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 01:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=HS9yLKLr203GFoMtWvKNxNiTEig7j/9kSgUSeKaILDU=;
	b=FHtUDvTZP6YSgP+C1d58eUIo0h158Yvbp3eHYz9xBpbOYG+Zy6NdxN7MB4I+Xvsr1B
	mHSQLNKYQe40xfhp4hLivvguUd+JfIVAoMGvis9nuNR2R57VUjgA+7C65K+Uf1eiIkOy
	8nGKz+0UwWGI9ZMh6Wxi3W4FGY8R9qxp8DQP3cwOUTWzvGzFt+a+aJ8xLr0RE2iz56rd
	t7awKvBno/7uBL7+Q8dkoAClIM7Otes/mzpCYuGTEUVjqfQOO8BIM+9yfRfxH1ohng9H
	Ruohg9dc4G1TKhLQsW9sawSI/cFaNlnlaWxF2ZetWMbGI6k7vEUf8+zLEtmSnCYMC4us
	B7GQ==
MIME-Version: 1.0
Received: by 10.68.134.106 with SMTP id pj10mr4181970pbb.112.1340267175501;
	Thu, 21 Jun 2012 01:26:15 -0700 (PDT)
Received: by 10.142.188.4 with HTTP; Thu, 21 Jun 2012 01:26:15 -0700 (PDT)
In-Reply-To: <4FE253E8.7090901@mlbassoc.com>
References: <4FE220B8.2080903@mlbassoc.com>
	<CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
	<4FE253E8.7090901@mlbassoc.com>
Date: Thu, 21 Jun 2012 10:26:15 +0200
Message-ID: <CAAQYJAuon4Jfxxe=LHT7BKBs0V+zvC_k8RSS_N--LqFEJRL6vw@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: New warning
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
X-List-Received-Date: Thu, 21 Jun 2012 08:26:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 21, 2012 at 12:51 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-06-20 15:55, Khem Raj wrote:
>>
>> On Wed, Jun 20, 2012 at 12:12 PM, Gary Thomas<gary@mlbassoc.com> =A0wrot=
e:
>>>
>>> This happens when I have two intertwined layers - I have a recipe in
>>> layer1
>>> which references a file satisfied only by layer2.
>>
>>
>> why not move the reference from layer1 to layer2 as well ?
>
>
> Layer1 holds the recipe and I find it more informative to have the
> reference there - that way the .bbappends in layer2 _must_ define
> it and the dependency is obvious since the recipe will fail without
> this file being specified.
>
> My use case is layer1 has a generic kernel recipe and layer2 (BSP)
> has a platform specific patch for that kernel. =A0I have other use
> cases, but this is indicative of how I view the layering.
>

It seems this happens as well with recipes self-contained in a single layer=
.
I see 2 warnings about SRC_URI chksum of  defconfig so I suspect about
two recipes [1]

The defconfigs are nested in subdirs, one per $MACHINE.

Regards

Andrea


[1] http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/li=
nux_3.2.bb
 and 3.1

>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

