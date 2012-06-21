Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D6B3E01422
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 14:00:30 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1103562ghb.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 14:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=HGNkmvjURWQ92CpLwSfST7XRmysroaANFlleM101aWo=;
	b=II+scrUN0VGRe/rplsajblZYDFz/H/ur+L20WUX6mnwL1Pu8wSTxTHlUy31IRCkyKM
	7qJ/0aR11MO4dasxUtYdQsK2PSwMRCr6KpHIx/HWL0XPq7Pi5dcWbOUicFMvRKIbbt0+
	tinoamsJBgxh2fU14o23NhXZkD1t96j6EFBOFilAo3B9PAEmPqGLIlvmFPLBRJCdlh4b
	b2BE82PsAS+rdZEmdEhGUHuQxnINhw/DajjQ96BCz9YocxZDxA0P/XKFARF+oqq5jTX8
	UxYZXgab+U/eFpfmSJv6jkPUqLBJ50T/So+lKVJkrX8wM+CUefNntBacf5cIcNnCfNpC
	pEaQ==
Received: by 10.43.46.1 with SMTP id um1mr14258581icb.0.1340312429781; Thu, 21
	Jun 2012 14:00:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.42.103 with HTTP; Thu, 21 Jun 2012 14:00:09 -0700 (PDT)
X-Originating-IP: [79.117.123.32]
In-Reply-To: <CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
	<CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 22 Jun 2012 00:00:09 +0300
Message-ID: <CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQmIxDqNDMyYM2Ev5uDbg5125H8D2ejhxPpyE4+GIH6pR9ynptqG52Vy2RLc4hXbeM7PzsiN
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
X-List-Received-Date: Thu, 21 Jun 2012 21:00:30 -0000
Content-Type: multipart/alternative; boundary=bcaec52e5e5143e18504c301ced9

--bcaec52e5e5143e18504c301ced9
Content-Type: text/plain; charset=ISO-8859-1

In a qemumips build with master poky:

WARNING: BBPATH references the current directory, either through an empty
entry, or a '.'.
 This is unsafe and means your layer configuration is adding empty elements
to BBPATH.
 Please check your layer.conf files and other BBPATH settings to remove the
current working directory references.

And this is because BBPATH contains:
/home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agherzan/work/personal/yocto/poky-contrib/meta

Well it's strange that:
meta: BBPATH .= ":${LAYERDIR}"
meta-yocto: BBPATH := "${LAYERDIR}:${BBPATH}"

This explains the way BBPATH above ended
like: /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agherzan/work/personal/yocto/poky-contrib/meta

Why don't we assign BBPATH as this in meta:
BBPATH .= "${LAYERDIR}"

And then in all other layers use: meta-yocto: BBPATH :=
"${LAYERDIR}:${BBPATH}". In this way the variable would be correctly
generated.

@g



On Thu, Jun 21, 2012 at 11:32 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Thu, Jun 21, 2012 at 6:51 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman <scott.a.garman@intel.com>
>> wrote:
>> > From: Laurentiu Palcu <laurentiu.palcu@intel.com>
>> >
>> > If BBPATH references the working directory, the user is warned and asked
>> > to fix the problem.
>> >
>> > [Yocto #1465]
>> >
>> > (From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)
>> >
>> > Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
>> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>> >
>> > Reworked commit to fix merge conflicts with denzil branch.
>> >
>> > Signed-off-by: Scott Garman <scott.a.garman@intel.com>
>> > ---
>> >  meta/classes/sanity.bbclass |   13 ++++++++++++-
>> >  1 file changed, 12 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
>> > index 9755694..298372b 100644
>> > --- a/meta/classes/sanity.bbclass
>> > +++ b/meta/classes/sanity.bbclass
>> > @@ -310,7 +310,18 @@ def check_sanity(sanity_data):
>> >     if "." in data.getVar('PATH', sanity_data, True).split(":"):
>> >         messages = messages + "PATH contains '.' which will break the
>> build, please remove this"
>> >
>> > -    if data.getVar('TARGET_ARCH', sanity_data, True) == "arm":
>> > +    bbpaths = sanity_data.getVar('BBPATH', True).split(":")
>> > +    if "." in bbpaths or "" in bbpaths:
>> > +        # TODO: change the following message to fatal when all BBPATH
>> issues
>> > +        # are fixed
>> > +        bb.warn("BBPATH references the current directory, either
>> through "    \
>> > +                "an empty entry, or a '.'.\n\t This is unsafe and
>> means your "\
>> > +                "layer configuration is adding empty elements to
>> BBPATH.\n\t "\
>> > +                "Please check your layer.conf files and other BBPATH "
>>        \
>> > +                "settings to remove the current working directory "
>>         \
>> > +                "references.");
>> > +
>> > +    if sanity_data.getVar('TARGET_ARCH', True) == "arm":
>>
>> No I get this warning when I use OE-Core standalone. The reason is for
>> OE-Core
>>
>> BBPATH .= ":${LAYERDIR}"
>>
>> and there are no more entries prepended since its the only layer so
>> leading : is causing
>> this warning to show up.
>>
>>
> I confirm this.
>
> @g
>
>

--bcaec52e5e5143e18504c301ced9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

In a qemumips build with master poky:<div><br></div><div><div>WARNING: BBPA=
TH references the current directory, either through an empty entry, or a &#=
39;.&#39;.</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span> This is unsafe and means your layer configuration is adding emp=
ty elements to BBPATH.</div>

<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> Plea=
se check your layer.conf files and other BBPATH settings to remove the curr=
ent working directory references.</div><div><br></div><div>And this is beca=
use=A0BBPATH contains:=A0</div>

<div>/home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/aghe=
rzan/work/personal/yocto/poky-contrib/meta</div><div><br></div><div>Well it=
&#39;s strange that:</div><div>meta:=A0BBPATH .=3D &quot;:${LAYERDIR}&quot;=
</div>

<div>meta-yocto:=A0BBPATH :=3D &quot;${LAYERDIR}:${BBPATH}&quot;</div><div>=
<br></div><div>This explains the way BBPATH above ended like:=A0/home/agher=
zan/work/personal/yocto/poky-contrib/meta-yocto::/home/agherzan/work/person=
al/yocto/poky-contrib/meta</div>

<div><br></div><div>Why don&#39;t we assign BBPATH as this in meta:</div><d=
iv>BBPATH .=3D &quot;${LAYERDIR}&quot;</div><div><br></div><div>And then in=
 all other layers use:=A0meta-yocto:=A0BBPATH :=3D &quot;${LAYERDIR}:${BBPA=
TH}&quot;. In this way the variable would be correctly generated.=A0</div>

<div style=3D"text-align:center"><div align=3D"left"><font face=3D"Arial" c=
olor=3D"#333333" size=3D"-1"><br></font><font color=3D"#333333" face=3D"Ari=
al">@g</font></div></div><br>
<br><br><div class=3D"gmail_quote">On Thu, Jun 21, 2012 at 11:32 PM, Andrei=
 Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

<div class=3D"gmail_quote"><div><div class=3D"h5">On Thu, Jun 21, 2012 at 6=
:51 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com=
" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">


On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman &lt;<a href=3D"mailto:scott.=
a.garman@intel.com" target=3D"_blank">scott.a.garman@intel.com</a>&gt; wrot=
e:<br>
&gt; From: Laurentiu Palcu &lt;<a href=3D"mailto:laurentiu.palcu@intel.com"=
 target=3D"_blank">laurentiu.palcu@intel.com</a>&gt;<br>
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
ntel.com" target=3D"_blank">laurentiu.palcu@intel.com</a>&gt;<br>
&gt; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@lin=
uxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&=
gt;<br>
&gt;<br>
&gt; Reworked commit to fix merge conflicts with denzil branch.<br>
&gt;<br>
&gt; Signed-off-by: Scott Garman &lt;<a href=3D"mailto:scott.a.garman@intel=
.com" target=3D"_blank">scott.a.garman@intel.com</a>&gt;<br>
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
this warning to show up.<br><br></blockquote><div>=A0</div></div></div><div=
>I confirm this.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><=
br></div><div>@g=A0</div></font></span></div><br>
</blockquote></div><br></div>

--bcaec52e5e5143e18504c301ced9--
