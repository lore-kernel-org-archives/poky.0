Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8022EE00DED; Thu,  1 Sep 2016 15:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE1AE00DE7
	for <poky@yoctoproject.org>; Thu,  1 Sep 2016 15:17:11 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id m11so11263620oif.1
	for <poky@yoctoproject.org>; Thu, 01 Sep 2016 15:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=PWT02mdgYYdIfRc6Mk8sNCUVhvzKVWuUhAl+M6ZMBbk=;
	b=QJfBB27/7Glmj1VDV+OpTegFTlI6rNiPQKlXIFhPU/drrspblnXjOpxVS/QhLhXTwo
	vic0aOiRTP8b13mmuUh1gwi0IK8jz6g+gLbHykKfsD+snLyY4TxIrLOII1dqYagmbI3h
	Cg0Ie9XQIezNIloMGR9X6qnJiUjiXjO3W+D9ve4fR78LBLOs2TC7C6qjKxVbkL0g74hd
	IrIbsInd850gY8KdWZlg/WRgRWVuMmW6k+oj5ZS1XOLTu0LYPR47GcHx1mLoxcRZ5jlk
	cvn6DYNAscrXh6jbMdhxU6/X3x8kov34VIK7hpC8sEZY0F1Mc/lRTDtSkO42bry3YPqo
	mPJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=PWT02mdgYYdIfRc6Mk8sNCUVhvzKVWuUhAl+M6ZMBbk=;
	b=GLcA4KIBDKuP7MdYakSpN8D7R1HN41zQWoYNPzy9MxBqUDxcY29oSieOsHT//PY/Ps
	AhkcyJlWqX7t1PZhOIgXkxfWRe0jlZdvkeJx5eAJC6xYoGNqFraL/EWaD2Qsgma/Q431
	5EkHA7TcyewW+HBG7wGlJNRQLLSmxuJaeOUI7WS8FOF7uKoB67q3hIzudlK+plj/UP1Y
	VaR237HAL1Jeub2lEuodGVkaTNLHelYJj+abuo2Lixr9T74xAqY1m9Ji0lz0ulnV2BRh
	Qo+ijsnaJka+VSbA8RqeAIksJINJ3mSfqtCkWOlzONiGl5Qhgz7vCV0pwUqwb3VHq59V
	jrcQ==
X-Gm-Message-State: AE9vXwNYvU8wHm94XMw2QEZF93YZq/KR/Rmx4O0w9nzYAGEZfieeNojRUT1mJ6QQKLWgDa9MUhToTkHgrUYYUA==
X-Received: by 10.157.17.9 with SMTP id g9mr14723136ote.42.1472768230666; Thu,
	01 Sep 2016 15:17:10 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.44.7 with HTTP; Thu, 1 Sep 2016 15:16:50 -0700 (PDT)
In-Reply-To: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
References: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 1 Sep 2016 15:16:50 -0700
X-Google-Sender-Auth: hw7sCeUt84tWgHC8cVZxNTY_i8w
Message-ID: <CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
To: Evade Flow <evadeflow@gmail.com>
Cc: Poky <poky@yoctoproject.org>
Subject: Re: When SRCREV is set to AUTOREV, what triggers (re-)fetching?
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
X-List-Received-Date: Thu, 01 Sep 2016 22:17:12 -0000
Content-Type: multipart/alternative; boundary=001a113cf76839bdf0053b799340

--001a113cf76839bdf0053b799340
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 1, 2016 at 3:14 PM, Evade Flow <evadeflow@gmail.com> wrote:

> I have a recipe that sets `SRCREV =3D ${AUTOREV}`, organized almost exact=
ly
> like Rob Calhoun's template from this thread:
>
>   - https://lists.yoctoproject.org/pipermail/yocto/2013-
> November/017042.html
>
> It works as I expect, in that running `bitbake myprog` results in output
> like:
>
> ```
> Currently 1 running tasks (2441 of 2447):
> 0: myprog-1.0.0+gitAUTOINC+91b8e42702-r0 do_install (pid 17307)
> ```
>
> However, if I push a change to the upstream so that the `HEAD` revision
> moves, and immediately re-run `bitbake myprog`, I get:
>
> ```
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 2447 tasks of which 2447 didn't need to be
> rerun and all succeeded.
> NOTE: Writing buildhistory
>
> Summary: There were 8 WARNING messages shown.
> ```
>
> My hope was that bitbake would pull the new `HEAD` and rebuild, but it
> seems 'stuck' on the revision it built first. Are my expectations for how
> `AUTOREV` ought to work flawed? If so... what commands can I use to make
> bitbake re-fetch the source?
>

Add ${SRCPV} to your PV (see various recipes in oe-core for examples), then
it=E2=80=99ll know to re-run the tasks when srcrev changes.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113cf76839bdf0053b799340
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 1, 2016 at 3:14 PM, Evade Flow <span dir=3D"ltr">&lt;<a href=3D=
"mailto:evadeflow@gmail.com" target=3D"_blank">evadeflow@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><div><div>I have =
a recipe that sets `SRCREV =3D ${AUTOREV}`, organized almost exactly like R=
ob Calhoun&#39;s template from this thread:<br><br>=C2=A0 - <a href=3D"http=
s://lists.yoctoproject.org/pipermail/yocto/2013-November/017042.html" targe=
t=3D"_blank">https://lists.yoctoproject.<wbr>org/pipermail/yocto/2013-<wbr>=
November/017042.html</a><br><br></div>It works as I expect, in that running=
 `bitbake myprog` results in output like:<br><br>```<br>Currently 1 running=
 tasks (2441 of 2447):<br>0: myprog-1.0.0+gitAUTOINC+<wbr>91b8e42702-r0 do_=
install (pid 17307)<br>```<br></div><br></div>However, if I push a change t=
o the upstream so that the `HEAD` revision moves, and immediately re-run `b=
itbake myprog`, I get:<br><br>```<br>NOTE: Preparing RunQueue<br>NOTE: Exec=
uting SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>NOTE: Tasks Summa=
ry: Attempted 2447 tasks of which 2447 didn&#39;t need to be rerun and all =
succeeded.<br>NOTE: Writing buildhistory<br><br>Summary: There were 8 WARNI=
NG messages shown.<br>```<br><br></div>My hope was that bitbake would pull =
the new `HEAD` and rebuild, but it seems &#39;stuck&#39; on the revision it=
 built first. Are my expectations for how `AUTOREV` ought to work flawed? I=
f so... what commands can I use to make bitbake re-fetch the source?<br></b=
lockquote></div><br>Add ${SRCPV} to your PV (see various recipes in oe-core=
 for examples), then it=E2=80=99ll know to re-run the tasks when srcrev cha=
nges.<br>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_sign=
ature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics</div>
</div></div>

--001a113cf76839bdf0053b799340--
