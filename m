Return-Path: <soemoe.a@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01844E00AF2; Mon, 26 Mar 2018 14:00:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (soemoe.a[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EDC7E008E4
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 14:00:50 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id 19-v6so12513247itw.3
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 14:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EOR4+FzZcsaTNvp2C4dzKImzRUx0A69bxF0P3eIq5vc=;
	b=DNkujjyaxCB84yzq1ROPvzkFkwHRI5C96F6UpthW4Hwkqacd/YPVKvXxz/CH5+4gKK
	6PGz+DIgYsFhr+upKXr4++sQqEYgZJf4216RzisY06F5eBKi38tfQGBn2I0UPZMERiop
	Z+rOkHH9WWU+7uKfNVO/ORV4kvBAN9HiPUOzOy5/pOXt8u9rE2nPC9HFzDsGLpV1Aojw
	izaPFcN6yMt/3/4pVwEMQ/LRHhqj1T4/yDDeMS6EplwUhKJyAHaqk5nwAE3h5hu/F81g
	m6QbXp4r/CfwcSOoCAStZdXGi6gBLkfI/7+PqkGAjPPieJ98Sr4RcpwX9wjxTs5ReTF+
	Nc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EOR4+FzZcsaTNvp2C4dzKImzRUx0A69bxF0P3eIq5vc=;
	b=mTYRaXdsCEqtmIhTUheMF7gTFPLfbp2vVlW8vT+4oSI0ip9uAnGbOMwmGKla2TOv1a
	gwtG0L6Fn+hqw6H4TfFbjaPGpbU9Ue5JSvvtejSlSHeuLLUdcsgar9jGf2T1Z4UIQc8p
	sz3TmciPnGwDiCtzxJKWpHER4QpOdkcej5JO4WRgg5qn0TBNzXZZR0wQmKiQJRDnHxyK
	cf2QjvC5HJuiSBXyZqduvvXV87i2/jTPhv5sywzNXzxvyi3UKi0GqsF3E9y6vSzONIMI
	AVdAeV08CGYTrnEIHQUK/Do78niNdilTaJ09saxxuZ94gy8uN5+WImsPocwUj0EQlE9O
	ieXg==
X-Gm-Message-State: AElRT7GPNzQytRzDgYszEbUvwdbvi5Jba0/XmcCTPYYfY5CseQmSaNo1
	lrsfAZEjxC7pC8/zuz9udrt6D4B8WNrYh4nAqhk=
X-Google-Smtp-Source: AG47ELu88hG/xwMdh/USu3qTYqVaSQXzDq8VFuTIDuXjbsjJv8s3RIJ+M+2pm2KtqCykq0noz1D9nv67prnNjaAnX4g=
X-Received: by 2002:a24:790c:: with SMTP id
	z12-v6mr11575680itc.13.1522098048498; 
	Mon, 26 Mar 2018 14:00:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.56.65 with HTTP; Mon, 26 Mar 2018 14:00:27 -0700 (PDT)
In-Reply-To: <CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
References: <cover.1522085586.git.soemoe.a@gmail.com>
	<CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
From: Soemoe Aung <soemoe.a@gmail.com>
Date: Mon, 26 Mar 2018 14:00:27 -0700
Message-ID: <CAPTBsuUBfwZ_4QJpb2hfUw6dSTHrHgQSQuNJE96_L=psj8C=ZQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL] *** Fix build issue with html5lib in bitbake ***
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
X-List-Received-Date: Mon, 26 Mar 2018 21:00:51 -0000
Content-Type: multipart/alternative; boundary="0000000000007e90f505685711b3"

--0000000000007e90f505685711b3
Content-Type: text/plain; charset="UTF-8"

Sorry if it wasn't clear. This is meant for fido (and also jethro). The
context is that when doing a fresh checkout of yocto-poky for branches fido
or jethro, I wasn't able to build with bitbake because of an error in one
of its included libraries. This issue seems to be resolved starting in the
krogoth branch.

If I send this change to the bitbake list, would it also get applied to the
yocto-poky repo in the fido and jethro branches?

Also, apologies for the duplicate. I didn't see my message at
https://lists.yoctoproject.org/pipermail/poky/2018-March/date.html so
wasn't sure if it actually went through.

On Mon, Mar 26, 2018 at 1:55 PM, Burton, Ross <ross.burton@intel.com> wrote:

> What branch is this meant to be applied to?
>
> Also, as it's a bitbake change, this should go to the bitbake list.
>
> On 26 March 2018 at 21:51, Soemoe Aung <soemoe.a@gmail.com> wrote:
> > This fixes a build issue where bitbake won't run because of an issue
> with one of the libraries it depends on.
> >
> > The following changes since commit ea6d21066a7cce2fef08ad66287170
> c5995bb1e2:
> >
> >   bitbake: bitbake-user-manual: Fixed porno hack for hello world example
> (2018-01-17 22:32:46 +0000)
> >
> > are available in the Git repository at:
> >
> >   git://push.yoctoproject.org/poky-contrib saung/bitbake-html5lib
> >
> > Soemoe Aung (2):
> >   fix build error in included html5lib in bitbake
> >   fix html5lib fix to be the same as in the krogoth branch
> >
> >  bitbake/lib/bs4/builder/_html5lib.py | 17 ++++++++++++-----
> >  1 file changed, 12 insertions(+), 5 deletions(-)
> >
> > --
> > 2.17.0.rc0.231.g781580f067-goog
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>

--0000000000007e90f505685711b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry if it wasn&#39;t clear. This is meant for fido (and =
also jethro). The context is that when doing a fresh checkout of yocto-poky=
 for branches fido or jethro, I wasn&#39;t able to build with bitbake becau=
se of an error in one of its included libraries. This issue seems to be res=
olved starting in the krogoth branch.<div><br></div><div>If I send this cha=
nge to the bitbake list, would it also get applied to the yocto-poky repo i=
n the fido and jethro branches?</div><div><br></div><div>Also, apologies fo=
r the duplicate. I didn&#39;t see my message at=C2=A0<a href=3D"https://lis=
ts.yoctoproject.org/pipermail/poky/2018-March/date.html">https://lists.yoct=
oproject.org/pipermail/poky/2018-March/date.html</a> so wasn&#39;t sure if =
it actually went through.</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Mon, Mar 26, 2018 at 1:55 PM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
What branch is this meant to be applied to?<br>
<br>
Also, as it&#39;s a bitbake change, this should go to the bitbake list.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 26 March 2018 at 21:51, Soemoe Aung &lt;<a href=3D"mailto:soemoe.a@gmail=
.com">soemoe.a@gmail.com</a>&gt; wrote:<br>
&gt; This fixes a build issue where bitbake won&#39;t run because of an iss=
ue with one of the libraries it depends on.<br>
&gt;<br>
&gt; The following changes since commit ea6d21066a7cce2fef08ad66287170<wbr>=
c5995bb1e2:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0bitbake: bitbake-user-manual: Fixed porno hack for hello w=
orld example (2018-01-17 22:32:46 +0000)<br>
&gt;<br>
&gt; are available in the Git repository at:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0git://<a href=3D"http://push.yoctoproject.org/poky-contrib=
" rel=3D"noreferrer" target=3D"_blank">push.yoctoproject.org/<wbr>poky-cont=
rib</a> saung/bitbake-html5lib<br>
&gt;<br>
&gt; Soemoe Aung (2):<br>
&gt;=C2=A0 =C2=A0fix build error in included html5lib in bitbake<br>
&gt;=C2=A0 =C2=A0fix html5lib fix to be the same as in the krogoth branch<b=
r>
&gt;<br>
&gt;=C2=A0 bitbake/lib/bs4/builder/_<wbr>html5lib.py | 17 ++++++++++++-----=
<br>
&gt;=C2=A0 1 file changed, 12 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.0.rc0.231.g781580f067-<wbr>goog<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</=
a><br>
</font></span></blockquote></div><br></div>

--0000000000007e90f505685711b3--
