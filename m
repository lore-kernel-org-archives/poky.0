Return-Path: <kaishos@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE99E00718
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 07:16:53 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id w62so1010485wes.21
	for <poky@yoctoproject.org>; Wed, 09 Oct 2013 07:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DUM9t0dgQYm41i590ZbJwpM4Hq564ouqmPiuROALOXs=;
	b=ybCn9ty2ZUbcoOsvs/GebMNQxDo7j2q9i2f0uRu+LGyRHali3tr/LqmuKYPdGMkWRf
	nNICpMAOsXt4w1wUB1kGhA3bBDZZmCNVtt5KhansE8RTvVTCFDWs4Pt5SE8vLByos1mS
	1OK7dQWaeGPyPHfxKTMzP50Y8apWcx1lVXW3yzZoNurvpVkZg3/nMx4u8zvLgeGvT2oy
	WThTeNh0M8l0dmYLNDywV7vadF3QFl1lk0atWmCGmZnv13EqhoULUimva+2D/WUhG1rR
	h4ERzC4GXA59oWd0MsAddSLyA8UHBYPebC0sqHJCufvo9/j/ySmfZXZuYXFo9e35u3TV
	kv3Q==
MIME-Version: 1.0
X-Received: by 10.181.12.75 with SMTP id eo11mr3017255wid.24.1381328212966;
	Wed, 09 Oct 2013 07:16:52 -0700 (PDT)
Received: by 10.217.11.9 with HTTP; Wed, 9 Oct 2013 07:16:52 -0700 (PDT)
In-Reply-To: <CA+gsK-pLwneEFPazPxZCpS0oHgbL++hFrurt3hVDNNb4bZLmOw@mail.gmail.com>
References: <CAJfvnsA2GJ62JiUMhh7v1NLa+_VXjx0gBL+Fv3SCGk=1rK6hWQ@mail.gmail.com>
	<CA+gsK-pLwneEFPazPxZCpS0oHgbL++hFrurt3hVDNNb4bZLmOw@mail.gmail.com>
Date: Wed, 9 Oct 2013 16:16:52 +0200
Message-ID: <CAJfvnsAgNnT4vLXoPLbW2b4BdeRv++oB69Wb3B7Nmi3o=WSQhA@mail.gmail.com>
From: Pablo <kaishos@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Build failure for 0001-Add-linux-support-for-congatec-evaluation-board-qmx6q.patch
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
X-List-Received-Date: Wed, 09 Oct 2013 14:16:54 -0000
Content-Type: multipart/alternative; boundary=f46d043c7c5673d09704e84f891e

--f46d043c7c5673d09704e84f891e
Content-Type: text/plain; charset=ISO-8859-1

Ok, then I know, I will then take a look at this with congatec and see if
they have any instructions.

Thanks for the quick answer.


/Pablo


On Wed, Oct 9, 2013 at 4:02 PM, Rudolf Streif
<rstreif@linuxfoundation.org>wrote:

> Hi Pablo,
>
> Your error message has nothing to do with the Yocto Project build system.
> The patch that you are trying to apply to the kernel source does not apply
> to that source revision. To fix it you will have to match the patch with
> the right kernel version.
>
> :rjs
>
>
>

--f46d043c7c5673d09704e84f891e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, then I know, I will then take a look at this with cong=
atec and see if they have any instructions.<br><br>Thanks for the quick ans=
wer.<br></div><div class=3D"gmail_extra"><br clear=3D"all"><div><br>/Pablo<=
br>
</div>
<br><br><div class=3D"gmail_quote">On Wed, Oct 9, 2013 at 4:02 PM, Rudolf S=
treif <span dir=3D"ltr">&lt;<a href=3D"mailto:rstreif@linuxfoundation.org" =
target=3D"_blank">rstreif@linuxfoundation.org</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">
<div dir=3D"ltr">Hi Pablo,<div><br></div><div>Your error message has nothin=
g to do with the Yocto Project build system. The patch that you are trying =
to apply to the kernel source does not apply to that source revision. To fi=
x it you will have to match the patch with the right kernel version.</div>

<div><br></div><div>:rjs</div><div class=3D"gmail_extra"><br><br>
</div></div>
</blockquote></div><br></div>

--f46d043c7c5673d09704e84f891e--
