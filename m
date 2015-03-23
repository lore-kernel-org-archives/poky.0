Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BA3BE0094C; Mon, 23 Mar 2015 03:41:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF8BE00757
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 03:41:31 -0700 (PDT)
Received: by qcbkw5 with SMTP id kw5so141031874qcb.2
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 03:41:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=IYdl9vakvTSD6rsQRgFeyOYsEaRXyZ+liSMiQeXA58w=;
	b=Qoc830bALo62Ddmeo164fT6+aL+bIIhTSlPoX11AzJ0o8TvG+B376Yg9yUMUr9KInl
	28WDfe+/2KK4DF1x5W9Vew2cUgk/R+nslNSQtLccQ5PQ2gF/jg4TZ5c/vplzwRXDB7cB
	AhhkHGwUM1hNHsQ3kEd/1Qtk+JWYmDMc6GawXqjQ9n1EioKcHN1auHAfrZdSAGpEo8Cg
	KsEsKYe7RBmrfR4N7usq6e31emhJGnSMO1zP8VMguk3GRIHbGIjDI+ErdzwFGryyJw+o
	4YQzhF51liJ/fVJNTk8V/v6DjgRinR71j+nfToWxXhzuuN7h+KweYSveog9kjAaHdjkT
	C8NQ==
X-Gm-Message-State: ALoCoQlspMU4W9fhK5qXIzptqzUkAMx9lv1dHHgEtXK97DjsZNB24re5gXzty2F1rEfzs9o8dNuZ
X-Received: by 10.55.18.8 with SMTP id c8mr134274461qkh.25.1427107290676; Mon,
	23 Mar 2015 03:41:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 23 Mar 2015 03:41:10 -0700 (PDT)
In-Reply-To: <1427106912-9724-1-git-send-email-george.l.musat@intel.com>
References: <1427106912-9724-1-git-send-email-george.l.musat@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Mar 2015 12:41:10 +0200
Message-ID: <CAJTo0LZPHFA7+67abkzD=Sc1_dp-t8w7Qq48Mw9D7_6ejkbJ_Q@mail.gmail.com>
To: Lucian Musat <george.l.musat@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto/distro: Updated SANITY_TESTED_DISTROS.
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
X-List-Received-Date: Mon, 23 Mar 2015 10:41:33 -0000
Content-Type: multipart/alternative; boundary=001a11475ccc1e18590511f24f57

--001a11475ccc1e18590511f24f57
Content-Type: text/plain; charset=UTF-8

On 23 March 2015 at 12:35, Lucian Musat <george.l.musat@intel.com> wrote:

> Added OpenSUSE-13.2, Fedora 21. Removed poky 1.6 and Ubuntu 12.04.
>

Suse 12.3 and 13.1 were removed.  Was this intentional (should be in the
commit) or not?

Ross

--001a11475ccc1e18590511f24f57
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 March 2015 at 12:35, Lucian Musat <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:george.l.musat@intel.com" target=3D"_blank">george.l.musat@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":6a8" cla=
ss=3D"a3s" style=3D"overflow:hidden">Added OpenSUSE-13.2, Fedora 21. Remove=
d poky 1.6 and Ubuntu 12.04.<br></div></blockquote></div><br>Suse 12.3 and =
13.1 were removed.=C2=A0 Was this intentional (should be in the commit) or =
not?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a11475ccc1e18590511f24f57--
