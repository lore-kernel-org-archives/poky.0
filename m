Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B22AEE00723
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 13:33:18 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1065248ghb.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 13:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=RumQnQNFukYgjdai+aXPikfZ2Wqt7qV3/NIsgX8P9zQ=;
	b=k1KBmxXcfOr0EwC2gvybfIZFBH/31SZ1MIviLWH7ojLhoM4fmSBNuR4kpVeWB7BqTP
	vh7KVbUb/Y/rglZwmlw2+JfxYU7jhB/WBRT8+KMVj/czFr9Icj2X/yK2ax0rwEY5cfPM
	wTdnCOOQE3ic3SEPbcwzyyKUTzGqLs/iUo6J3Zo1yfOhjiuqdiXsSru7EkUCz6YM1U2F
	gg0mHwu48kUOdCkkjIfC6yk3IgKVXtwHzvSSQqCCWa5XQPquNE9V3oZ/Pnp0gP2b4FJA
	L3XDpnn2xK29lwbWUtgoS2d/4qj33WMvseElQ3lzLXBr7ss9VxXQo1kROH1hz1GRz2Fz
	zZcg==
Received: by 10.50.217.193 with SMTP id pa1mr8783289igc.39.1340310797608; Thu,
	21 Jun 2012 13:33:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.42.103 with HTTP; Thu, 21 Jun 2012 13:32:57 -0700 (PDT)
X-Originating-IP: [79.117.123.32]
In-Reply-To: <CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 21 Jun 2012 23:32:57 +0300
Message-ID: <CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQlhKjUEkV2vopOgcbv/1FdNaxTYPyIBE//HoaLN/q08UM7k0yFNmLiz8yrLn5nr6IBncRCp
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Thu, 21 Jun 2012 20:33:18 -0000
Content-Type: multipart/alternative; boundary=14dae934053dfae60404c3016c76

--14dae934053dfae60404c3016c76
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jun 21, 2012 at 6:51 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman <scott.a.garman@intel.com>
> wrote:
> > From: Laurentiu Palcu <laurentiu.palcu@intel.com>
> >
> > If BBPATH references the working directory, the user is warned and asked
> > to fix the problem.
> >
> > [Yocto #1465]
> >
> > (From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)
> >
> > Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > Reworked commit to fix merge conflicts with denzil branch.
> >
> > Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> > ---
> >  meta/classes/sanity.bbclass |   13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
> > index 9755694..298372b 100644
> > --- a/meta/classes/sanity.bbclass
> > +++ b/meta/classes/sanity.bbclass
> > @@ -310,7 +310,18 @@ def check_sanity(sanity_data):
> >     if "." in data.getVar('PATH', sanity_data, True).split(":"):
> >         messages = messages + "PATH contains '.' which will break the
> build, please remove this"
> >
> > -    if data.getVar('TARGET_ARCH', sanity_data, True) == "arm":
> > +    bbpaths = sanity_data.getVar('BBPATH', True).split(":")
> > +    if "." in bbpaths or "" in bbpaths:
> > +        # TODO: change the following message to fatal when all BBPATH
> issues
> > +        # are fixed
> > +        bb.warn("BBPATH references the current directory, either
> through "    \
> > +                "an empty entry, or a '.'.\n\t This is unsafe and means
> your "\
> > +                "layer configuration is adding empty elements to
> BBPATH.\n\t "\
> > +                "Please check your layer.conf files and other BBPATH "
>        \
> > +                "settings to remove the current working directory "
>       \
> > +                "references.");
> > +
> > +    if sanity_data.getVar('TARGET_ARCH', True) == "arm":
>
> No I get this warning when I use OE-Core standalone. The reason is for
> OE-Core
>
> BBPATH .= ":${LAYERDIR}"
>
> and there are no more entries prepended since its the only layer so
> leading : is causing
> this warning to show up.
>
>
I confirm this.

@g

--14dae934053dfae60404c3016c76
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Thu, Jun 21, 2012 at 6:51 PM, Khem Raj <span =
dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman &lt;<a href=3D"mailto:scott.=
a.garman@intel.com">scott.a.garman@intel.com</a>&gt; wrote:<br>
&gt; From: Laurentiu Palcu &lt;<a href=3D"mailto:laurentiu.palcu@intel.com"=
>laurentiu.palcu@intel.com</a>&gt;<br>
&gt;<br>
&gt; If BBPATH references the working directory, the user is warned and ask=
ed<br>
&gt; to fix the problem.<br>
&gt;<br>
&gt; [Yocto #1465]<br>
&gt;<br>
&gt; (From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)<br>
&gt;<br>
&gt; Signed-off-by: Laurentiu Palcu &lt;<a href=3D"mailto:laurentiu.palcu@i=
ntel.com">laurentiu.palcu@intel.com</a>&gt;<br>
&gt; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@lin=
uxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
&gt;<br>
&gt; Reworked commit to fix merge conflicts with denzil branch.<br>
&gt;<br>
&gt; Signed-off-by: Scott Garman &lt;<a href=3D"mailto:scott.a.garman@intel=
.com">scott.a.garman@intel.com</a>&gt;<br>
&gt; ---<br>
&gt; =A0meta/classes/sanity.bbclass | =A0 13 ++++++++++++-<br>
&gt; =A01 file changed, 12 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass=
<br>
&gt; index 9755694..298372b 100644<br>
&gt; --- a/meta/classes/sanity.bbclass<br>
&gt; +++ b/meta/classes/sanity.bbclass<br>
&gt; @@ -310,7 +310,18 @@ def check_sanity(sanity_data):<br>
&gt; =A0 =A0 if &quot;.&quot; in data.getVar(&#39;PATH&#39;, sanity_data, T=
rue).split(&quot;:&quot;):<br>
&gt; =A0 =A0 =A0 =A0 messages =3D messages + &quot;PATH contains &#39;.&#39=
; which will break the build, please remove this&quot;<br>
&gt;<br>
&gt; - =A0 =A0if data.getVar(&#39;TARGET_ARCH&#39;, sanity_data, True) =3D=
=3D &quot;arm&quot;:<br>
&gt; + =A0 =A0bbpaths =3D sanity_data.getVar(&#39;BBPATH&#39;, True).split(=
&quot;:&quot;)<br>
&gt; + =A0 =A0if &quot;.&quot; in bbpaths or &quot;&quot; in bbpaths:<br>
&gt; + =A0 =A0 =A0 =A0# TODO: change the following message to fatal when al=
l BBPATH issues<br>
&gt; + =A0 =A0 =A0 =A0# are fixed<br>
&gt; + =A0 =A0 =A0 =A0bb.warn(&quot;BBPATH references the current directory=
, either through &quot; =A0 =A0\<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;an empty entry, or a &#39;.&#39=
;.\n\t This is unsafe and means your &quot;\<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;layer configuration is adding e=
mpty elements to BBPATH.\n\t &quot;\<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;Please check your layer.conf fi=
les and other BBPATH &quot; =A0 =A0 =A0 =A0\<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;settings to remove the current =
working directory &quot; =A0 =A0 =A0 =A0 =A0 \<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;references.&quot;);<br>
&gt; +<br>
&gt; + =A0 =A0if sanity_data.getVar(&#39;TARGET_ARCH&#39;, True) =3D=3D &qu=
ot;arm&quot;:<br>
<br>
No I get this warning when I use OE-Core standalone. The reason is for OE-C=
ore<br>
<br>
BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
<br>
and there are no more entries prepended since its the only layer so<br>
leading : is causing<br>
this warning to show up.<br><br></blockquote><div>=A0</div><div>I confirm t=
his.</div><div><br></div><div>@g=A0</div></div><br>

--14dae934053dfae60404c3016c76--
