Return-Path: <lpapp@archlinux.us>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17614E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:22:28 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so267284pdj.3
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=s8B4z8rJMh4h3T5iybTpUWu7PyMoiduM9GxMJgxi6/U=;
	b=JlszPWDgYiz3GzICY9MLGJS9Jz8xMky9C5hD3qzuebxCi6UwLIVmkX9opHS5ZkPc0H
	Y9Wj1mxcBc23+wAN7qvd/KbsiCgFbu7k/HLsQQLttbnGJip0oYDXSm8JcE8WBmHqH4Cj
	zY5lQ54U2Ea4wZLqJ49zwrugZkuV50D26Y7Q57F3E11TterYgGFs6c/YkFnyW+0bH7XR
	OJi33jwb4lgaTox6qr2JbuRKbbnufINLuhEzeN9f4nz4zxbcE/y5Gl0JJqDgLMNvoV43
	awuh4NUklUN8aWachgRZtsMZqvrATFzIHmN7QsH7m7MD1RVSVCfBdeNrha4xg+8vzgfH
	AZuA==
X-Gm-Message-State: ALoCoQkpUy99MC7CyIHt11f/WYulytQhqlKLnlCuE2iFJM2i6f5gmJoooUAfjXWMzDAd0VthA1cr
MIME-Version: 1.0
X-Received: by 10.66.27.143 with SMTP id t15mr2054660pag.171.1377080547311;
	Wed, 21 Aug 2013 03:22:27 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.57.234 with HTTP; Wed, 21 Aug 2013 03:22:27 -0700 (PDT)
In-Reply-To: <CAJTo0LbVgCEckeGZRAhZyVqki88oG8L6X1Q59jcK63EacPzPdA@mail.gmail.com>
References: <CAOMwXhNzKFZNdbRrfc67_5swmjz_0gqJoG-=YJg0hkFpor5RMQ@mail.gmail.com>
	<CAJTo0LZ-hGHQY5tQrpFDzW_z_YFmmRDd9YtHR0B1AiYeHY+xfg@mail.gmail.com>
	<CAOMwXhMj++wFF8Z24j3pXa7evtnFXbmOxj+6TWH8hhwYpVrsRQ@mail.gmail.com>
	<CAJTo0LbVgCEckeGZRAhZyVqki88oG8L6X1Q59jcK63EacPzPdA@mail.gmail.com>
Date: Wed, 21 Aug 2013 11:22:27 +0100
X-Google-Sender-Auth: FASOzMHYFBJAvOGSwaueRFDxIE4
Message-ID: <CAOMwXhNzfwJ50+3WmMiAxq0zBCcDkGcpvYqf-3rHaA0eOOHwew@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Help with regression from denzil to dylan
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Aug 2013 10:22:29 -0000
Content-Type: multipart/alternative; boundary=bcaec52bea19d98a7f04e4728c36

--bcaec52bea19d98a7f04e4728c36
Content-Type: text/plain; charset=ISO-8859-1

Why that is not a good recommendation IMHO is the fact it used to work. It
is a regression. Many people will be affected. We already have a few
blocked people, and we are just doing a tiny project... AFAICT, there is
not even a simple workaround for this, i.e. something like making this
optional.

To be honest, I do not agree with the rationale in the other email. ;-)
Simply because I do not think Yocto should depend on git repositories. It
should only depend on tarballs, at least for the official releases anyways.


On Wed, Aug 21, 2013 at 11:19 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 21 August 2013 11:13, Laszlo Papp <lpapp@kde.org> wrote:
>
>> Yeah, I was discussing this feature request in #git on IRC.
>>
>> Anyway, can we get rid of this gtk doc stub stuff? It is just causing
>> havoc.
>>
>
> No (see my other mail for the rationale).
>
> This isn't specific to the gtk-doc-stub recipe, but a problem you'll have
> with every git clone in your downloads directory.
>
> I really do recommend you don't put DL_DIR inside a git repository, and
> share it between multiple clients some other way.
>
> Ross
>

--bcaec52bea19d98a7f04e4728c36
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Why that is not a good recommendation IMHO is the fact it =
used to work. It is a regression. Many people will be affected. We already =
have a few blocked people, and we are just doing a tiny project... AFAICT, =
there is not even a simple workaround for this, i.e. something like making =
this optional.<div>
<br></div><div>To be honest, I do not agree with the rationale in the other=
 email. ;-) Simply because I do not think Yocto should depend on git reposi=
tories. It should only depend on tarballs, at least for the official releas=
es anyways.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Aug 21, 2013 at 11:19 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"im">On 21 Aug=
ust 2013 11:13, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@k=
de.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br>
</div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div class=3D"i=
m"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr">Yeah, I was discussing this feature request in #git on IRC=
.<div><br></div><div>Anyway, can we get rid of this gtk doc stub stuff? It =
is just causing havoc.</div></div></blockquote><div><br></div></div><div>
No (see my other mail for the rationale).</div>

<div><br></div><div>This isn&#39;t specific to the gtk-doc-stub recipe, but=
 a problem you&#39;ll have with every git clone in your downloads directory=
.</div><div><br></div><div>I really do recommend you don&#39;t put DL_DIR i=
nside a git repository, and share it between multiple clients some other wa=
y.</div>
<span class=3D"HOEnZb"><font color=3D"#888888">

<div><br></div><div>Ross</div></font></span></div></div></div>
</blockquote></div><br></div>

--bcaec52bea19d98a7f04e4728c36--
