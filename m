Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455B6E009C5; Thu, 28 Jan 2016 02:50:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC16E00928
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 02:50:49 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id 1so50144004ion.1
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 02:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Mf1SEcXzCwlXG7mnEVrbUsG1hWS/yyPsSgeLuuB6FKE=;
	b=Z4ScvENTA9lgdbiYO/ULxSUBaVTMjQH/9D3D1bNUVq8SdOay5acx4VZ9Fm2n7ezOHW
	9RMNWSeXo4KBowoVHAx2w7OBNHYYlnQSjux1degx/5e1aNCphpo+lKuEOhGvQFOg9ONe
	dZPjDyOxMkF70VB2DpmSKeTcO2/70XMB7xE071Pi87D4EUd5/b4EcsLKTJRje0/OaBGu
	2ItoMybLj9e0wpIKwP/zR5Xjo0CF0SpOwAFeyACK3jqD1B2GcdE61tPiFk3UXMpFn16x
	4OcwsOFKyAuNa07OiOEORmU9PaFdwv9t7dhvo2dhWr93MiRL6DQMztnUDjKD6ek36JHA
	dktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Mf1SEcXzCwlXG7mnEVrbUsG1hWS/yyPsSgeLuuB6FKE=;
	b=cwsK8T9zHIBCqG4fRJwczqI1hekaU+0CwJmz+lQLW5dSbnZ2VfKP15ye2wFsg12BCQ
	U9ICtF5rCqRNQTZ6aqz4kK8/fAvL9BCXax8ZE7njSfQHsUwkTTnN+T34pCUZ9t9lonkp
	q0kg/opFOH7SZx3u/iij7kATZt1PbY5PY6pL3a7+QY4D1dYlwhYW3mjBBXUhj5RESeRJ
	YPqTj0iE+LlFbJPClJB/SFe8Qrxdhs0XdAGesuDzQwk74tAcC+UqKwBMlqg/w+1D5DcG
	BaD4EFehbYaTtwEpJ5L43X7hgD93dtRU0GM9yqKqDl38y7+HFGmZ9+iPclnUCiFGUvoY
	2WBw==
X-Gm-Message-State: AG10YOQ6ZFrYSqw16l18r7VUjkH9un+8QnI4Roo3DYHTX7hoyDz0Ias21lPe0p/NXEr3MC6KBBFy0af3PS3WjdEQ
X-Received: by 10.107.135.104 with SMTP id j101mr3521397iod.133.1453978248925; 
	Thu, 28 Jan 2016 02:50:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 28 Jan 2016 02:50:29 -0800 (PST)
In-Reply-To: <1453976171.10340.44.camel@linuxfoundation.org>
References: <1453818056-6498-1-git-send-email-ross.burton@intel.com>
	<56A9CA3B.4000704@windriver.com>
	<CAJTo0LZZga-97iUfP3MNtP=5fn4whhpB-0eLgedJTGEG4Ry8wA@mail.gmail.com>
	<1453976171.10340.44.camel@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jan 2016 10:50:29 +0000
Message-ID: <CAJTo0LbKX8kDQkPnfaUO4W=AbB8F0FE1cMjxtdM8=iUChroSzg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] conf/distro/poky.conf: use google.com for connectivity check
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
X-List-Received-Date: Thu, 28 Jan 2016 10:50:53 -0000
Content-Type: multipart/alternative; boundary=001a113ebe9209ee5e052a62b119

--001a113ebe9209ee5e052a62b119
Content-Type: text/plain; charset=UTF-8

On 28 January 2016 at 10:16, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Note that we specifically put an https:// test in here too as we've had
> issues with that before :(
>

How about https://www.iana.org/?

Ross

--001a113ebe9209ee5e052a62b119
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 January 2016 at 10:16, Richard Purdie <span dir=3D"ltr">&lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.pu=
rdie@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div id=3D":v9" class=3D"a3s" style=3D"overflow:hidden">Note that we =
specifically put an https:// test in here too as we&#39;ve had<br>
issues with that before :(<br></div></blockquote></div><br>How about <a hre=
f=3D"https://www.iana.org/">https://www.iana.org/</a>?</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ebe9209ee5e052a62b119--
