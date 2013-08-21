Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFBC3E013DF
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 02:34:00 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha11so112205vcb.35
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 02:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Fi3g+B22uOe6LvgNaLcninIpa4WMJ8Rzy4I0awYw5S4=;
	b=WW5HJdiha98D3+cP9xhemORnzpxueJDitXb5uyZDwYhtFR0vii0U0bcodQ2rz0LtLe
	0WUF+a87XVy8bcUGH8CAoxNtnk7XhJFtul7BEbkM21b7HgYQL4wREQXLIOb6OE3pm4BU
	YTZoxjA7y8B18U2bVM9fZ39feI7QUGvdp/s83LlmrtksNw0BKCEYgnndpNaCGj10AZ4h
	D4FY95xTHvMJLD1FZLQ1bdGROLhYJvZHRKznu/47D/hG5lXvVEfQaBDWBg+FL7BGvxW+
	lnrI6nBjQc+SU1K4B/CN54yEUc+hKDWtW8u/BCnFfCRtWH1O3iTe4dDD+yf5HvMlnKJa
	/1vQ==
X-Gm-Message-State: ALoCoQkdMCOjMyQqpdawzkod2mJ4OswwP7zmMAXC/GdMByyKcV/hsu/CJfNuNDGrYviXgP1JYZxq
X-Received: by 10.52.164.16 with SMTP id ym16mr404045vdb.32.1377077640389;
	Wed, 21 Aug 2013 02:34:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 21 Aug 2013 02:33:40 -0700 (PDT)
In-Reply-To: <F7680723A1CA6840825A59020FA77064FAAC7E@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA77064FAAC7E@sdexmbx1srv.skidata.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Aug 2013 10:33:40 +0100
Message-ID: <CAJTo0LZLMuxj7uQ0q6TGK9Z9N5UqL+nLvm57pyTqSZKvvDtG6w@mail.gmail.com>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Add Debian 7.1 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 21 Aug 2013 09:34:02 -0000
Content-Type: multipart/alternative; boundary=001a11c22e58957afa04e471df57

--001a11c22e58957afa04e471df57
Content-Type: text/plain; charset=UTF-8

On 21 August 2013 08:06, Richard Leitner - SKIDATA <
Richard.Leitner@skidata.com> wrote:

> Hi everybody,
> I'm working with Poky on the current stable Debian 7.1 and I'd like to
> know if there are any reasons why Debian 7.1 is not in the
> SANITY_TESTED_DISTROS in poky.conf?
> Due to the fact Debian 7.0 is listed there and I haven't seen any problems
> I think 7.1 can be added without any doubt.
> Or are there any test procedures which need to be (and haven't been) done
> with Debian 7.1?
>

Probably due to nobody noticing that 7.1 was released.  I'm also running
7.1 on my build machine and can confirm it works for me too, so I've just
sent a patch to get this added.

Ross

--001a11c22e58957afa04e471df57
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 August 2013 08:06, Richard Leitner - SKIDATA <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:Richard.Leitner@skidata.com" target=3D"_bl=
ank">Richard.Leitner@skidata.com</a>&gt;</span> wrote:<br><div class=3D"gma=
il_extra">

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi everybody,<br>
I&#39;m working with Poky on the current stable Debian 7.1 and I&#39;d like=
 to know if there are any reasons why Debian 7.1 is not in the SANITY_TESTE=
D_DISTROS in poky.conf?<br>
Due to the fact Debian 7.0 is listed there and I haven&#39;t seen any probl=
ems I think 7.1 can be added without any doubt.<br>
Or are there any test procedures which need to be (and haven&#39;t been) do=
ne with Debian 7.1?<br></blockquote><div><br></div><div>Probably due to nob=
ody noticing that 7.1 was released. =C2=A0I&#39;m also running 7.1 on my bu=
ild machine and can confirm it works for me too, so I&#39;ve just sent a pa=
tch to get this added.</div>

<div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a11c22e58957afa04e471df57--
