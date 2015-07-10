Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB2EE00A54; Thu,  9 Jul 2015 22:21:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nithisai[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05332E00A49
	for <poky@yoctoproject.org>; Thu,  9 Jul 2015 22:21:15 -0700 (PDT)
Received: by oiab3 with SMTP id b3so86103813oia.1
	for <poky@yoctoproject.org>; Thu, 09 Jul 2015 22:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=f/UkYjvLDerY2MoDWZ8QDQhYgcyX9NVvuYnBa1kzWLc=;
	b=ze2ouOX8ip0t+W2f6tTmroUcRa7cuGMVaIfZ2d/NnWDdEq5EAifN2hSsNEGg9CrQrN
	r/7eHIXIfP27Zq78leziSWX5hAZrucwg1FjiUuz88Mpqc6wZHqQVzx3VGKGsBr448LTR
	AAEVoovwhRz6WkGseQL/vEbYm6qmq31V5Qy14NxuLkjQxoLdYnGa4XEpeFRGbVoNRlTM
	RdgTL1it1tctnWkVLlL+w5m2bnWYAM5rMK8c9DHcCXxbqKNKcEO/kktuTniD4Rldjz3L
	iDDQ5Fk7Nv6E6HjLlXzOa7u5aeQNEVUFBNiadJiN7T8MDFNVBvW+krIDCY9Wi5+0t3dE
	aDJw==
MIME-Version: 1.0
X-Received: by 10.202.9.11 with SMTP id 11mr8179525oij.123.1436505674908; Thu,
	09 Jul 2015 22:21:14 -0700 (PDT)
Received: by 10.202.173.137 with HTTP; Thu, 9 Jul 2015 22:21:14 -0700 (PDT)
In-Reply-To: <CAJTo0LarovLG7ytbrfv_L8TtZ3bAYbR8RZPzmVfChZQHH=0J1g@mail.gmail.com>
References: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
	<CAJTo0LarovLG7ytbrfv_L8TtZ3bAYbR8RZPzmVfChZQHH=0J1g@mail.gmail.com>
Date: Fri, 10 Jul 2015 10:51:14 +0530
Message-ID: <CACj2aztKzy565rxNoTRLwoQPPiCVm=pXwHst2zq0nFqL3HszTg@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Not able to set env var from anon function
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
X-List-Received-Date: Fri, 10 Jul 2015 05:21:20 -0000
Content-Type: multipart/alternative; boundary=001a113d1800788d79051a7e8ab9

--001a113d1800788d79051a7e8ab9
Content-Type: text/plain; charset=UTF-8

Thanks for your answer Ross.

But no, I already did that and tried again. The "randomvalue" is not
getting reflected. The variable still has "temp" in it.

Nithya.

On Thu, Jul 9, 2015 at 7:10 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 9 July 2015 at 13:12, Nithyakala Sainath <nithisai@gmail.com> wrote:
>
>> But d.setVar("TEMPDIR", "randomvalue") in place of os.environ does the
>> mgic. Why can't we manipulate the environmental variable using os.environ ?
>
>
> Because in "echo ${TEMPDIR}" the variable is expanded by bitbake, not the
> shell.  Use $TEMPDIR.
>
> Ross
>

--001a113d1800788d79051a7e8ab9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks for your answer Ross.<br><br></div>But no=
, I already did that and tried again. The &quot;randomvalue&quot; is not ge=
tting reflected. The variable still has &quot;temp&quot; in it. <br><br></d=
iv>Nithya.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Thu, Jul 9, 2015 at 7:10 PM, Burton, Ross <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">O=
n 9 July 2015 at 13:12, Nithyakala Sainath <span dir=3D"ltr">&lt;<a href=3D=
"mailto:nithisai@gmail.com" target=3D"_blank">nithisai@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">But d.setVar(&quot;TEMPDIR&qu=
ot;, &quot;randomvalue&quot;) in place of os.environ does the mgic. Why can=
&#39;t we manipulate the environmental variable using os.environ ?</blockqu=
ote></div><br></span>Because in &quot;echo ${TEMPDIR}&quot; the variable is=
 expanded by bitbake, not the shell.=C2=A0 Use $TEMPDIR.</div><span class=
=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a113d1800788d79051a7e8ab9--
