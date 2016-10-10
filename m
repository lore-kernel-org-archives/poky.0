Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8F05E00C08; Mon, 10 Oct 2016 12:07:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.67 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F4D7E00B30
	for <poky@yoctoproject.org>; Mon, 10 Oct 2016 12:07:31 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id e12so1936652oib.3
	for <poky@yoctoproject.org>; Mon, 10 Oct 2016 12:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=f53vfHpvZkLZFL8OZFOyu8EQDF+l+eu3spzk6Q53VAg=;
	b=fqLd1zW4rkiv7i0lYO1HvnbME2bmP0Up09x4IHPvNomAgM9vwzcqUvR0TDgBaBdPC7
	aVn2yYrQ6gkOUqIpt8J2kpWON1dzfL/VK6fovLybI13vYVDawmxbQS0Q90DzmB3AEtM4
	YgCKYmxaPmDKrpPWLzciGVDdxpmKc9UM1K4FMQJ0zrPO4V310rP9pfOCF95CGZS6TwPh
	4j0QMrrbc1PWBCu/vASix2zg7+f975I/mQBXNo/m2aTGbcl9Xs3MJcUbPtyX4neCROn2
	2RKWoAML1XlDX12IXeDGuWT37yeoIEHZy2taZiLqFxGzG3/XsKp/NblEF/WqbiomR6wr
	NygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=f53vfHpvZkLZFL8OZFOyu8EQDF+l+eu3spzk6Q53VAg=;
	b=g7KrrmvV+MGEtHvuXtdZh62IsjJfXH4NqRb7XVwPsXIso2Ph1j2VeT9THze5FhA2oH
	BJfH5+LxT5HncHTLUu7RfivxclPISpmsV5LGQdkUmzEhAS1Ahw5UqNDJUh4rNW2HsfLN
	VXYznEB9EjHM/jaisSNzdmO89BJyxTHciOJU2TRdQBlTgLYgPZ7NNYcCk6Wjq72XsrhD
	qZbNztvVCJ2ja5ZrcRBPHDkCre6fH5qH3TTXrgvhEhNlSrA9FFhn6Dq15uhdDQ6h0w8A
	KxsLWBI9BTMXZfQAs71elxYtITis7EqJCIVszEYgMCkiVxkpxk4GDQEqWVIqADo7Rcjn
	6s8g==
X-Gm-Message-State: AA6/9RlC8MgqbobW/WjbaR1f/ZoAU/aXE/Qg3QyX3wixSUWm7ubmHdCQ0uIzun1iJ2nkEoK8Tkpxvo+zHFOS/A==
X-Received: by 10.157.7.46 with SMTP id 43mr18824417ote.176.1476126450552;
	Mon, 10 Oct 2016 12:07:30 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.13.194 with HTTP; Mon, 10 Oct 2016 12:07:10 -0700 (PDT)
In-Reply-To: <1476110630-18460-1-git-send-email-ed.bartosh@linux.intel.com>
References: <1476110630-18460-1-git-send-email-ed.bartosh@linux.intel.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 10 Oct 2016 12:07:10 -0700
X-Google-Sender-Auth: tURunAnSHrqqpline7C60_diicE
Message-ID: <CABcZANkSRxXwBRcC_2Jrqq-X61Vhx3OJj6fzgE0ThOF8gL+-FA@mail.gmail.com>
To: Ed Bartosh <ed.bartosh@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] genericx86-common.inc: add dependency do_image_wic -> do_bootimg
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
X-List-Received-Date: Mon, 10 Oct 2016 19:07:35 -0000
Content-Type: multipart/alternative; boundary=001a1139a686ba9968053e8778b4

--001a1139a686ba9968053e8778b4
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 10, 2016 at 7:43 AM, Ed Bartosh <ed.bartosh@linux.intel.com>
wrote:

> do_image_wic depends on do_bootimg on genericx86 machines as it
> copies files from hddimg/EFI/BOOT directory to boot partition.
>
> Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
>

Thoughts on adding
https://github.com/MentorEmbedded/meta-mentor/blob/master/meta-mentor-staging/classes/bootimg-wic.bbclass
to
image.bbclass? I think we can assume the existence of do_bootimg means we
should depend on it, as the class was inherited.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1139a686ba9968053e8778b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Oct 10, 2016 at 7:43 AM, Ed Bartosh <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ed.bartosh@linux.intel.com" target=3D"_blank">ed.bartosh@linux.i=
ntel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><div id=3D"gmail-:si" =
class=3D"gmail-a3s gmail-aXjCH gmail-m157af24f1743b315">do_image_wic depend=
s on do_bootimg on genericx86 machines as it<br>
copies files from hddimg/EFI/BOOT directory to boot partition.<br>
<br>
Signed-off-by: Ed Bartosh &lt;<a href=3D"mailto:ed.bartosh@linux.intel.com"=
>ed.bartosh@linux.intel.com</a>&gt;</div></blockquote></div><br>Thoughts on=
 adding=C2=A0<a href=3D"https://github.com/MentorEmbedded/meta-mentor/blob/=
master/meta-mentor-staging/classes/bootimg-wic.bbclass">https://github.com/=
MentorEmbedded/meta-mentor/blob/master/meta-mentor-staging/classes/bootimg-=
wic.bbclass</a>=C2=A0to image.bbclass?=C2=A0I think we can assume the exist=
ence of do_bootimg means we should depend on it, as the class was inherited=
.<br>-- <br><div class=3D"gmail_signature">Christopher Larson<br>clarson at=
 kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintain=
er - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a1139a686ba9968053e8778b4--
