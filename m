Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BB36E00D8E; Wed,  7 Aug 2019 03:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
	[209.85.217.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19ACE00C22
	for <poky@yoctoproject.org>; Wed,  7 Aug 2019 03:16:47 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id h28so60299300vsl.12
	for <poky@yoctoproject.org>; Wed, 07 Aug 2019 03:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Wb1nEiQkUPravBAq2HgGDUlbTq+HSaGWuimlvzypTWo=;
	b=beC5/K4xXSBuF0YERYaV0N39L2F35j4kTISrAnUeQIVV2HD/VpwL58Pf6VTPF5ATsX
	lni/MM6+nalSQlgQ/sDjvMOu8zMSHtbVNpa62qHeeVavUCoRBSmQ3nq7juMTAC0WqmqM
	iU6e4koyFx3GTBHl76hQeRuMnuOHvUqXyF08idwsIpa0WA3M4Yo9Hliv1PXRYQoACwvo
	W+zmOtBiAhg+SaD5209xFXYVsXNqaSnFr3cLo17DVz5T1u2XgPNyXp/nsQHanvBZt9os
	qy/niniWs9ze7ouUkqizvZbDnL8hYJZa4Fj+vAYQjzg0U3Bq2caAFQihZsGznr7jGawM
	j8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Wb1nEiQkUPravBAq2HgGDUlbTq+HSaGWuimlvzypTWo=;
	b=UNCszTq+KV+objQErQDrzhuo/RuCETQq4En+Pbbv7gA/GAeshN0xuToxYo2F0RAufm
	vmrAJQ0XQEPI/fkY3rThaAA6vV5b22m71ditG4Sg41KnQg84FTAlBk9jWFzuh8xctqI6
	OpNQLzFKPZrMLWrOkSrcPaNIde6yyfgA1wZn4Msr5xaen81fLooa5Q8CNei4of3z6+xm
	MGrFYapkbV0/huaGCxDQDQ/LGryR+s1HjF+cGri5CEtGAnph5FcvFjWqr5WxSq6gWkXH
	j8EF2/azs0S4KNRABjbPuGQyrA6g0hC1xpCtJlARmhMh2KnH6up6jWHj8xx2oMEUzjMO
	gPhQ==
X-Gm-Message-State: APjAAAUGZISs/DOW+fdXQxKXcPl1FwzuHdG9jmaxRKlKV/EzAKZG8sLB
	Nne3/oj8KFZIMJs5Qk6feHMNAa21EaNKw/nnPPaD+3lY
X-Google-Smtp-Source: APXvYqzvOXVCABfuz56o+6FIOHoXKa+WNZeqBZ49v5ReK6JCLzgZm+tJnUk0NYr9EGC7SG/xfxbN2ZdFw/CDEyEsmJU=
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr5207814vsn.94.1565173007099;
	Wed, 07 Aug 2019 03:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <qidgh2$3lce$1@blaine.gmane.org> <20190807060446.GA5249@localhost>
	<320c4e09-e480-4a93-4ef2-a6453e4ca779@klingt.org>
In-Reply-To: <320c4e09-e480-4a93-4ef2-a6453e4ca779@klingt.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 Aug 2019 12:16:35 +0200
Message-ID: <CANNYZj8K2LuQFRNuEBfnk1V3i0gvhiJyWynASYPHm4bWgxEdeg@mail.gmail.com>
To: Tim Blechmann <tim@klingt.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: deb: custom compression
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
X-List-Received-Date: Wed, 07 Aug 2019 10:16:48 -0000
Content-Type: multipart/alternative; boundary="00000000000019aba9058f843dd1"

--00000000000019aba9058f843dd1
Content-Type: text/plain; charset="UTF-8"

openembedded-core list is the right one.

Alex

On Wed, 7 Aug 2019 at 08:36, Tim Blechmann <tim@klingt.org> wrote:

> >> poky compresses deb packages with the default flags, which these days
> >> boils down to using xz compression.
> >> trying to cut down turnaround times for local builds, i tried to modify
> >> the `package_deb` class to be able to force a low gzip compression via a
> >> `DPKG_FAST` parameter (patch attached).
> >>
> >> could this patch be accepted upstream?
> >
> > It is specific to your problem (and sent to the wrong mailing list).
>
> my bad (thought it's this one, as the file resides in the poky repo).
> which is the right place for it?
>
> > A more generic solution would be similar to OPKGBUILDCMD,
> > allowing the user to pass any parameters (including any
> > compression settings) to dpkg-deb.
>
> something like `DPKG_OPTIONS` i'm happy to adapt the patch?
>
> thanks,
> tim
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--00000000000019aba9058f843dd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>openembedded-core list is the right one.</div><div><b=
r></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, 7 Aug 2019 at 08:36, Tim Blechmann &lt;<=
a href=3D"mailto:tim@klingt.org">tim@klingt.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">&gt;&gt; poky compresses deb=
 packages with the default flags, which these days<br>
&gt;&gt; boils down to using xz compression.<br>
&gt;&gt; trying to cut down turnaround times for local builds, i tried to m=
odify<br>
&gt;&gt; the `package_deb` class to be able to force a low gzip compression=
 via a<br>
&gt;&gt; `DPKG_FAST` parameter (patch attached).<br>
&gt;&gt;<br>
&gt;&gt; could this patch be accepted upstream?<br>
&gt; <br>
&gt; It is specific to your problem (and sent to the wrong mailing list).<b=
r>
<br>
my bad (thought it&#39;s this one, as the file resides in the poky repo).<b=
r>
which is the right place for it?<br>
<br>
&gt; A more generic solution would be similar to OPKGBUILDCMD,<br>
&gt; allowing the user to pass any parameters (including any<br>
&gt; compression settings) to dpkg-deb.<br>
<br>
something like `DPKG_OPTIONS` i&#39;m happy to adapt the patch?<br>
<br>
thanks,<br>
tim<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--00000000000019aba9058f843dd1--
