Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 391B5E00CED; Wed,  2 Jan 2019 13:27:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C097E006F1
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 13:27:06 -0800 (PST)
Received: by mail-qt1-f193.google.com with SMTP id l11so35003852qtp.0
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 13:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+wkNc8mDG2+ymracWwG/wgkDGCEjyW79bm60IZCI8YE=;
	b=L8YQPG7HliEQW3M0mZBhrTfbe+G0NP56Tq8MMMfve9KHCHwxYePsEbZiBCliYSZLO4
	9/ecZExXRkSOcfaHozuEY2Pv6FLi8l4x8BhEwCGm38clpVnQMJV/KjC4sFtcbyC6L8/+
	KTUDDbBkcPV7/r9GccKHNuN5ULMAJcvHSpHZq1zBkIFByiLGP+Q7yQOZQeQ0OrUfhvEZ
	TdudFSIRY/S1EBCIsQmX/NB2LWTgWL9Xla48Uhjw1dyLFoyjrS0vMa2L2gvl2cd0uT9s
	icyedXV879+wr01kpZiU3zfWDHh3H3inNAUDnRDNNUB1SWnGCiI9wO+EVF2RQK2HtfLa
	AFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+wkNc8mDG2+ymracWwG/wgkDGCEjyW79bm60IZCI8YE=;
	b=MgwwYYUj0ccsWYVJ9Vy00eEhSJXiwYDo6/i8gFBZ+2Gx9jVVnkSJ8Gj/4pIK31YxiO
	izCvMszTJIpTROizAm1O8F2vkgQ49wMU5aYO9RDYiRW3CdbvVOk2KV/qZtTiQAkUoIV0
	bPDBbSMGn5Un9j0RmlSaC9g1602ieu7VcAparBMa/1ErP5jYP2Ap2EOyBMzf5ST3lTLu
	YpA40TZEjxqtqnBZ60RmlkeitRV7njo8wsHfgmhstpL8eTYy+MiYX8b23MsK8buoYe0K
	qLWJ4CaITX8DDJOOJVGcjNYXq23bBchcgzHDAjaa+acM1NnsPBHHcwm4HrzBmmoIjej0
	dZGQ==
X-Gm-Message-State: AJcUukfvt6gQbUutidHLHVYy+umo+nOMD0z9QdESC5oMJpkSgFQ1/g+X
	v4PAtzLz2dxGDuu/pi4+GDYZ1MOYw8DgK+9uPMzQydfli8wWCA==
X-Google-Smtp-Source: ALg8bN7i0AAERi8xlbtjh9H2f4EW9kw4exAHcDCk02zfMbKlcm9yGJlFyB+R+/1c7m/DGJPDYCK9SKlQ4LYd7AxvrIw=
X-Received: by 2002:a0c:d40f:: with SMTP id t15mr44836622qvh.117.1546464426211;
	Wed, 02 Jan 2019 13:27:06 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<19502b0e7af03d079fba940f817c355dd5d2c1de.camel@linuxfoundation.org>
In-Reply-To: <19502b0e7af03d079fba940f817c355dd5d2c1de.camel@linuxfoundation.org>
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Wed, 2 Jan 2019 14:26:55 -0700
Message-ID: <CANr77M31z20u=4j+2Eo2_Y4eqYdCtekKjEJARwHvg0HpWm68=Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: glibc-initial fails to build in Thud with arm926ejs tune
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
X-List-Received-Date: Wed, 02 Jan 2019 21:27:09 -0000
Content-Type: multipart/alternative; boundary="000000000000c89d82057e804ea4"

--000000000000c89d82057e804ea4
Content-Type: text/plain; charset="UTF-8"

>
> Can give follow on config.log's and such as required.

Yep, I'm using the default 8.2.0 default.

The mcpu verses mtune is open to debate, it depends what your priority
> is, feed compatibility across multiple processors or potential micro
> optimisation for the processor.

This machine.conf/meta layer just needs to support a single target - micro
optimization is definitely desired since it's a potato ARM. I'm guessing I
could just override the 'TUNE_CCARGS' in my machine.conf to '-mtune' then?

Thanks


On Wed, Jan 2, 2019 at 2:17 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2019-01-02 at 13:37 -0700, Matthew Stanger wrote:
> > I'm getting a build failure under Thud when trying to use the
> > following tune in my machine.conf:
> > #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
> > require conf/machine/include/at91sam9.inc
> > DEFAULTTUNE = "arm926ejs"
> >
> >
> > When doing a fresh build 'glibc-initial' config stage fail's with:
> > > checking for broken __attribute__((alias()))... yes
> > > configure: error: working alias attribute support required
> > > WARNING: exit code 1 from a shell command.
> > > ERROR: Function failed: do_configure (log file is located at
> > /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-
> > gnueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)
> > ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-
> > core/glibc/glibc-initial_2.28.bb:do_configure)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to
> > be
> > rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /home/matt/renew_thud/build/../oe/poky/meta/recipes-
> > core/glibc/glibc-initial_2.28.bb:do_configure
> >
> > Can give follow on config.log's and such as required.
> >
> > If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc' to
> > change the '-mcpu' back to 'mtune'(commit f29d642c) then glibc builds
> > fine. GCC tuning is totally outside my expertise so I'm hoping
> > someone
> > can confirm if '-mcpu' is really desired over '-mtune'? And also if
> > this look like a Poky issue or something else?
>
> Are you using thud's default gcc version? I have some memory this issue
> may be gcc version specific.
>
> The mcpu verses mtune is open to debate, it depends what your priority
> is, feed compatibility across multiple processors or potential micro
> optimisation for the processor.
>
> Cheers,
>
> Richard
>
>

--000000000000c89d82057e804ea4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Can give follow on config.log&#39;s and such as required.</block=
quote><div>Yep, I&#39;m using the default 8.2.0 default.=C2=A0</div><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">The mcpu verses m=
tune is open to debate, it depends what your priority<br>is, feed compatibi=
lity across multiple processors or potential micro<br>optimisation for the =
processor.</blockquote><div>This machine.conf/meta layer just needs to supp=
ort a single target - micro optimization is definitely desired since it&#39=
;s a potato ARM. I&#39;m guessing I could just override the &#39;TUNE_CCARG=
S&#39; in my machine.conf to &#39;-mtune&#39; then?</div><div><br></div><di=
v>Thanks</div></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"lt=
r">On Wed, Jan 2, 2019 at 2:17 PM Richard Purdie &lt;<a href=3D"mailto:rich=
ard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, 2=
019-01-02 at 13:37 -0700, Matthew Stanger wrote:<br>
&gt; I&#39;m getting a build failure under Thud when trying to use the<br>
&gt; following tune in my machine.conf:<br>
&gt; #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target<br>
&gt; require conf/machine/include/at91sam9.inc<br>
&gt; DEFAULTTUNE =3D &quot;arm926ejs&quot;<br>
&gt; <br>
&gt; <br>
&gt; When doing a fresh build &#39;glibc-initial&#39; config stage fail&#39=
;s with:<br>
&gt; &gt; checking for broken __attribute__((alias()))... yes<br>
&gt; &gt; configure: error: working alias attribute support required<br>
&gt; &gt; WARNING: exit code 1 from a shell command.<br>
&gt; &gt; ERROR: Function failed: do_configure (log file is located at<br>
&gt; /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-<br>
&gt; gnueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)<br>
&gt; ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-<br>
&gt; core/glibc/glibc-initial_2.28.bb:do_configure)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn&#39;t need t=
o<br>
&gt; be<br>
&gt; rerun and 1 failed.<br>
&gt; <br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/home/matt/renew_thud/build/../oe/poky/meta/recipes-<br>
&gt; core/glibc/glibc-initial_2.28.bb:do_configure<br>
&gt; <br>
&gt; Can give follow on config.log&#39;s and such as required.<br>
&gt; <br>
&gt; If I edit &#39;poky/meta/conf/machine/include/tune-arm926ejs.inc&#39; =
to<br>
&gt; change the &#39;-mcpu&#39; back to &#39;mtune&#39;(commit f29d642c) th=
en glibc builds<br>
&gt; fine. GCC tuning is totally outside my expertise so I&#39;m hoping<br>
&gt; someone<br>
&gt; can confirm if &#39;-mcpu&#39; is really desired over &#39;-mtune&#39;=
? And also if<br>
&gt; this look like a Poky issue or something else?<br>
<br>
Are you using thud&#39;s default gcc version? I have some memory this issue=
<br>
may be gcc version specific.<br>
<br>
The mcpu verses mtune is open to debate, it depends what your priority<br>
is, feed compatibility across multiple processors or potential micro<br>
optimisation for the processor.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000c89d82057e804ea4--
