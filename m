Return-Path: <kergoth@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D90E24C80FA7
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 22:13:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf19 with SMTP id 19so4208271wyf.35
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 20:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=trrxvaMh8pe22s7Oo4Wnt2R74HYVB/FQCW+Hhh0psm0=;
	b=QXo0V18MPkx6XJLIugTDFO0eMFJMw5tFC3DPrd5HLzoniwlL3wi4soJzak4OUvTnPd
	gxbzos+GHSbY+ENVfiHfWfbFg45otEZSjumbIgsl9hvgeGL2y3YTos3y6079QTpy0+7k
	Q6ZpFLLAjDQ0X15vc4qjvS/UDO0pj//i3czvk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	b=q3oQpXV/g3AVVGQ/yUY5DJIvK/gVOhh4HldfqyoJsUkbTQ9MG5fMqfxTPFyXKbzbEk
	wU/y6NE7djSZVo2uceWckdoCaBGwEnv0Gb6bnX5A6kWo/LtWbjRZ0c9iFnPp0Isw+nQ2
	gHgH3sqq83rSvfshYJJPCYo7C7jXh6eJiGU8A=
Received: by 10.216.24.139 with SMTP id x11mr1342880wex.27.1290140028709; Thu,
	18 Nov 2010 20:13:48 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Thu, 18 Nov 2010 20:13:28 -0800 (PST)
In-Reply-To: <AANLkTik0YrJrrOrnA26H8aWDG6ZEmf-4p6buE=+B3N8U@mail.gmail.com>
References: <20101119035102.GA31016@qhe2-db>
	<AANLkTik0YrJrrOrnA26H8aWDG6ZEmf-4p6buE=+B3N8U@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 18 Nov 2010 21:13:28 -0700
X-Google-Sender-Auth: 0bOjFL8YXakaSQwSDMokpRRVGO0
Message-ID: <AANLkTi=qcEgerfv5skbCV6Ff+J+o_bJxkqwSnvg5C4kr@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: [PATCH][RFC] bitbake: add task tracking
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
X-List-Received-Date: Fri, 19 Nov 2010 04:13:50 -0000
Content-Type: multipart/alternative; boundary=0016e6dbe2951f2a5c0495602224

--0016e6dbe2951f2a5c0495602224
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 18, 2010 at 8:51 PM, Qing He <qing.he@intel.com> wrote:

> Add a new option to record start and end time of every task
>
> Signed-off-by: Qing He <qing.he@intel.com>
>

This is useful conceptually, and I'm glad to see others touching the bitbake
code, so kudos on that, but implementation wise, I have concerns.  For one,
this doesn't need to be in bitbake at all, it's quite easily implemented in
the metadata using an event handler and the task events.  For two,
hardcoding the log file and format seems unwise.
 --
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics



-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--0016e6dbe2951f2a5c0495602224
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div class=3D"im">On Thu, Nov 18, 2010 at 8:51 P=
M, Qing He <span dir=3D"ltr">&lt;<a href=3D"mailto:qing.he@intel.com" targe=
t=3D"_blank">qing.he@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">


<div>Add a new option to record start and end time of every task<br>
<br>
Signed-off-by: Qing He &lt;<a href=3D"mailto:qing.he@intel.com" target=3D"_=
blank">qing.he@intel.com</a>&gt;</div></blockquote></div><br></div>This is =
useful conceptually, and I&#39;m glad to see others touching the bitbake co=
de, so kudos on that, but implementation wise, I have concerns. =C2=A0For o=
ne, this doesn&#39;t need to be in bitbake at all, it&#39;s quite easily im=
plemented in the metadata using an event handler and the task events. =C2=
=A0For two, hardcoding the log file and format seems unwise.<br>

<font color=3D"#888888">
-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics<br>
</font></div><br><br clear=3D"all"><br>-- <br>Christopher Larson<br>clarson=
 at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maint=
ainer - Tslib<br>Senior Software Engineer, Mentor Graphics<br>

--0016e6dbe2951f2a5c0495602224--
