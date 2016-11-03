Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05065E00C28; Wed,  2 Nov 2016 23:28:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A764E00BB0
	for <poky@yoctoproject.org>; Wed,  2 Nov 2016 23:28:16 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id 51so31439842uai.1
	for <poky@yoctoproject.org>; Wed, 02 Nov 2016 23:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bAJ/rIZMMX+9wd+i9jwNiBrNTcBFSSnDiiGLmjO+ZXI=;
	b=X4m7b+qvYAJzVDnwYvs+lv8zDYitMLqcoaGgqxKW0LGxTg0OA8NJ2LG7CkRaNUi66Y
	K4/aHikp65h+I6TK/+Yr/1q9ExaSaMuDmTHy0s2lotgBRjJBszKslp/wM10hUqdbVwbQ
	F6IU/aFTRZMx1xFTnQKUtMGI+HeUBO18jMdMww3ioM5lkNaywzWjb5OT9bA4f7ccMbCx
	vZa2kslCGsUc0c5lGfnYw7iSIWN8ebq5xghKLCk6LLOmJtT7zVUUT+L5b6cqsiqI+OgV
	vcSdgmXFm9P4IVFm8CxKWxUfSHgbLPdZbqH+pVINPQFA21gVlqa8hSwXPcS/lSnqtkCr
	J8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bAJ/rIZMMX+9wd+i9jwNiBrNTcBFSSnDiiGLmjO+ZXI=;
	b=FcJEwurRsNkPA9uUhKErJXJqchvG93+gsH+nO3GvTNwsvxlOQzTOw9IyZ6yllopNpX
	JPa8rPdaz5WIxH4Sv0OfYVcxPUEurt4U8MaqhjfYrO5+5ce9PBSk7+WPffyepcVOK/NV
	1A6lGzLf46YsUDQF9bPfysgZJN7YeyHhOvUQj3MVBNUd36znIPhMPyrwkxVhvA7daGQi
	IvWltVCyWJZk/gOgvypdO049W4z6TCibCJNL3i+Sg8IifyGwQaqquApYiT9jeoIjBf3f
	b+vko0djQAWqqMUV5U8Oz68QXvoy/bLKPFnhoWVVzwsLPSiwkWcWW74baEtdkjRQ+aIb
	bLvg==
X-Gm-Message-State: ABUngvcVdHSqE0VXF3oSkxI4B2LLsWsp+NOgEQFc6NPGZGAGc5jVBFXUryxhKLDbsk9ouoyMuQKk4WylKQ8ldg==
X-Received: by 10.159.49.71 with SMTP id n7mr6297306uab.68.1478154495418; Wed,
	02 Nov 2016 23:28:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Wed, 2 Nov 2016 23:28:14 -0700 (PDT)
In-Reply-To: <E7D08E71-EB1A-49FE-9157-FD590823E52C@basmevissen.nl>
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
	<d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
	<CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
	<acc4cb27-a1e1-d301-58fa-71611aaf970f@basmevissen.nl>
	<CADnUhn2qEMbmdoE-+e_veSYD_UFYMcCrWksFpMJeWVO6HhcNtA@mail.gmail.com>
	<E7D08E71-EB1A-49FE-9157-FD590823E52C@basmevissen.nl>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Thu, 3 Nov 2016 08:28:14 +0200
Message-ID: <CADnUhn30qVaEEmp5ObLUq5nomPH4b+SQ++Ry-YOoqfwh10d42w@mail.gmail.com>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: svn fetcher crashes
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
X-List-Received-Date: Thu, 03 Nov 2016 06:28:18 -0000
Content-Type: multipart/alternative; boundary=f403045e25829f675805405fa966

--f403045e25829f675805405fa966
Content-Type: text/plain; charset=UTF-8

2016-11-02 22:02 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl>:

> >> Be aware that from Krogoth to Morpy, quite some GCC6 host compiler
> >fixes
> >> were added. So keep your build host on a distro with GCC 5.x.
> >>
> >
> >Version seems to be arm-poky-linux-gnueabi-gcc (GCC) 5.3.0, but
> >something
> >strange there is now compared to fido compilation.(see below)
> >
>
>
> I meant the gcc of the host, the native compiler. Make sure you run a
> distro that uses gcc 5.x and not 6.x with Krogoth.

gcc seems to be:
gcc --version
gcc (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4

So, it should not be too fresh anyway!

--f403045e25829f675805405fa966
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2016-11-02 22:02 GMT+02:00 Bas Mevissen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:abuse@basmevissen.nl" target=3D"_blank">abuse@basmevissen.nl</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"=
gmail-">&gt;&gt; Be aware that from Krogoth to Morpy, quite some GCC6 host =
compiler<br>
&gt;fixes<br>
&gt;&gt; were added. So keep your build host on a distro with GCC 5.x.<br>
&gt;&gt;<br>
&gt;<br>
&gt;Version seems to be arm-poky-linux-gnueabi-gcc (GCC) 5.3.0, but<br>
&gt;something<br>
&gt;strange there is now compared to fido compilation.(see below)<br>
&gt;<br>
<br>
<br>
</span>I meant the gcc of the host, the native compiler. Make sure you run =
a distro that uses gcc 5.x and not 6.x with Krogoth.</blockquote><div>gcc s=
eems to be:<br>gcc --version<br>gcc (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4<b=
r><br></div><div>So, it should not be too fresh anyway! <br></div></div><br=
><br></div></div>

--f403045e25829f675805405fa966--
