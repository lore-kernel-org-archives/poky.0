Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 171D8E00D4E; Wed, 23 Dec 2015 06:40:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA1CE007C3
	for <poky@yoctoproject.org>; Wed, 23 Dec 2015 06:40:29 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id p187so151171655wmp.0
	for <poky@yoctoproject.org>; Wed, 23 Dec 2015 06:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=K9AWPK+xlXAtBGmWFFMEGrB1VMivp+p17MhMi3S+zsE=;
	b=BypYPFIzTmJ/nbMH36H5EldCyWZO9j6UK++enUYoUHwPYVW6KYb9LqHeSC6WJpWqjW
	3SJp3IXy52IAwa5CNj6KlEFnJ0c+1Gv5ZNecgVp5CcPgIIUUOTXA1lr7ZAhrHP6KhVtD
	nn2jjvgKOkt2GBDBUw6ohg4Bl2bI4ZZjUXohot4p7j1/AO68AJilqm5mMhuv+TyuJRHu
	hq/3qAiwjA1WB3gm9U2yLCQcMYjB7aF7pkW9VMVWgs6DrufoACnzMRj0qoND7i+y9q+N
	QE4QP7/r2t9ZW+Xro41x/+7xl2ln+6MwbvrWdbargigs0VZyCZsku6yybtYmtW9ReBHp
	t1Cg==
MIME-Version: 1.0
X-Received: by 10.28.63.22 with SMTP id m22mr14908907wma.59.1450881629035;
	Wed, 23 Dec 2015 06:40:29 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Wed, 23 Dec 2015 06:40:28 -0800 (PST)
In-Reply-To: <CAMKF1srDcSFkNA60HwoStyt5sSOyE_yVm36sV_EPJcQdX3K03A@mail.gmail.com>
References: <CAA2DH4tQFdkTJg45Y3GSGQyJEOzMoO=fuXCrQ+jtcPJzQE3S-g@mail.gmail.com>
	<CAMKF1srDcSFkNA60HwoStyt5sSOyE_yVm36sV_EPJcQdX3K03A@mail.gmail.com>
Date: Wed, 23 Dec 2015 20:10:28 +0530
Message-ID: <CAA2DH4u7nMowqaV5AxY2c+TuybrDZsPPqPZ0fVVsbgsr_TtfhQ@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Custom Kernel Recipe: How to specify KCFLAGS args during kernel build?
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
X-List-Received-Date: Wed, 23 Dec 2015 14:40:31 -0000
Content-Type: multipart/alternative; boundary=001a114b3ebc1c21c0052791b4c9

--001a114b3ebc1c21c0052791b4c9
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 21, 2015 at 3:21 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sun, Dec 20, 2015 at 4:38 AM, Prasant J <pj0585@gmail.com> wrote:
> > Hi,
> >
> > When I was building the kernel outside the yocto project, I used to pass
> > "KCFLAGS+=" argument during command line (make arguments). This would
> > include my custom code, if I needed during the build.
> >
> >
> > In my custom yocto layer, I am adding linux kernel recipe. How can I
> specify
> > "KCFLAGS+=" args in the bitbake recipe?
>
> Just like this. may be you can presend it with export if you want to
> make it available to all tasks for that recipe
>
> >
> >
>


Thanks Khem. I will try that.


Regards, PJ

--001a114b3ebc1c21c0052791b4c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Dec 21, 2015 at 3:21 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, D=
ec 20, 2015 at 4:38 AM, Prasant J &lt;<a href=3D"mailto:pj0585@gmail.com">p=
j0585@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; When I was building the kernel outside the yocto project, I used to pa=
ss<br>
&gt; &quot;KCFLAGS+=3D&quot; argument during command line (make arguments).=
 This would<br>
&gt; include my custom code, if I needed during the build.<br>
&gt;<br>
&gt;<br>
&gt; In my custom yocto layer, I am adding linux kernel recipe. How can I s=
pecify<br>
&gt; &quot;KCFLAGS+=3D&quot; args in the bitbake recipe?<br>
<br>
</span>Just like this. may be you can presend it with export if you want to=
<br>
make it available to all tasks for that recipe<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br></div></div></blockquote><div><br><br></div><div>Thanks Khem. I wil=
l try that.<br><br><br></div><div>Regards, PJ<br></div><div>=C2=A0<br></div=
></div></div></div>

--001a114b3ebc1c21c0052791b4c9--
