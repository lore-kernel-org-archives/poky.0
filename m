Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A15E0044A
	for <poky@yoctoproject.org>; Thu, 10 May 2012 10:00:48 -0700 (PDT)
Received: by eaab16 with SMTP id b16so816315eaa.35
	for <poky@yoctoproject.org>; Thu, 10 May 2012 10:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=NIM4S7TsRGLm5wJhlT+gC1FvBcVAohrynK2NttEkZGQ=;
	b=kF+JzofLkXBUAuSaiJfSk4QHRq0wRKSXO6aNa3U/rOeuJG1J8jIIf0kN9U+2PNwxAw
	SfNLfJpQgvXqE+JyKBwkL1vOzxNmhi2mOQSNXPyunM+Ftl+NuPb7u03ivjBjkglCTbt3
	Xsr4b9i37BxZrW1XkXq2jXQdWaOCWneflCoE37yAqavRZp5Ts/UpNvoYjLKp3mp8ff1z
	VzUKRTvbj7lgEyl45n9YFWTiC4jqR+lpm7XIqfr1azIA9zpWO2F9G3NiUCz87cobCV1O
	8KCuWVAx0l6gSg9Kz+7Yq6Eu9IVDlWFIS5KUQH5MqX2oCUYtUwGUcCNsEE2v0bWMv4pq
	ibdA==
Received: by 10.14.127.198 with SMTP id d46mr107554eei.101.1336669247695; Thu,
	10 May 2012 10:00:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Thu, 10 May 2012 10:00:17 -0700 (PDT)
In-Reply-To: <4FABF185.5060205@windriver.com>
References: <4FABD070.9090100@mlbassoc.com>
	<CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
	<4FABEA1B.4050901@mlbassoc.com>
	<CAMKF1sqUt4QrNh9ff0ZERDCttdUSams-wUcOR4e4hDs+7z-Txw@mail.gmail.com>
	<4FABF185.5060205@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2012 10:00:17 -0700
Message-ID: <CAMKF1spJV5wWkAs8z9=z+66dmDZz8NPG2TeTZGZ0bgrt9Q3wpg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Bad ARM code with GCC 4.7.1
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
X-List-Received-Date: Thu, 10 May 2012 17:00:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2012 at 9:49 AM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
>>>
>>
>> hmmm that should be able to handle alignment faults in hardware
>
>
> As far as I know, most armv7a handle alignment in the kernel, but there a=
re
> newer crops of CPUs coming out that will no longer have alignment handler=
s
> as a "speed optimization".. (I think they're a bit nuts myself, but anywa=
y.)

thats a different thing. I was talking about unaligned accesses are taken c=
are
by hardware not kernel.

>
> But if the code in question is inside the kernel, then the alignment faul=
ts
> won't work -- or will they? =C2=A0(Certainly won't from within the alignm=
ent
> handlers of course...)

