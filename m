Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A43E0044A
	for <poky@yoctoproject.org>; Fri,  6 Apr 2012 15:56:29 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 06 Apr 2012 15:56:29 -0700
Received: by lahi5 with SMTP id i5so2201546lah.25
	for <poky@yoctoproject.org>; Fri, 06 Apr 2012 15:56:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=hhCzEGm2k/k3VOfXcBw6T4f+4ihcLVuE0cwu5pyfZwM=;
	b=SpL8AGhfDtGRkSOs/MHRQ3KCCgyXFDP0a14UZ9uQtVrEe6FUVWl1j6tOsrPJ1SVxmh
	Zy2Aj/ILTVH/JjmRXjTyxkrKKxb3+awBCTGrD4Fk8y/geeVJRuz7WhDOG8hOfdkFjEmr
	wjHRLzF2Eheqi/spV8kb0W0yBX6NJ2z6eGv5xVcGTAmW1HsHaoQj2ieykjtoGQPYzhgH
	qQozx19lweyfztBQUXkA2LziFDyLlq6RJoBEKMkjJ3SjXP3qeCMgVDPKONJ6Hjra9V83
	HcINs6z5M9VrVywdBKV0ryCh4e+nEJuJJGaY7mn8uJvi5zuEKpKi57bSl7bN6SF8J7MI
	1lFA==
MIME-Version: 1.0
Received: by 10.152.132.166 with SMTP id ov6mr11184873lab.35.1333752987175;
	Fri, 06 Apr 2012 15:56:27 -0700 (PDT)
Received: by 10.112.102.5 with HTTP; Fri, 6 Apr 2012 15:56:27 -0700 (PDT)
In-Reply-To: <4F7F2AA5.2010400@linux.intel.com>
References: <4F7F2AA5.2010400@linux.intel.com>
Date: Fri, 6 Apr 2012 15:56:27 -0700
Message-ID: <CAPhnLPC+L-5HfNUGB0_nZZHMp7p1Ns8MhSiuSwre4gsJmAyexA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Joshua Lock <josh@linux.intel.com>
X-Gm-Message-State: ALoCoQnrDu179OWAZcMLka04S8VuCafaBxKGksAbzHIfYHQfPb/55Gl5nUWy7F6iSxxBGx+HG4wE
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Edison Next
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
X-List-Received-Date: Fri, 06 Apr 2012 22:56:29 -0000
Content-Type: multipart/alternative; boundary=f46d0430855a04cc4e04bd0a911c

--f46d0430855a04cc4e04bd0a911c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 6, 2012 at 10:40 AM, Joshua Lock <josh@linux.intel.com> wrote:

> Hi,
>
> There are plenty of folks still using Edison and bugs being filed against
> that release series so I've started pulling together a branch of fixes fo=
r
> another Edison point release.
>
> So far I have:
> * Several fixes for useradd
> * A fix for building syslinux on hosts with 3.3 or newer kernels [YOCTO
> #2236]
> * Fixes so that live images greater than 1GB in size can boot [YOCTO #213=
8]
>
> If there are other fixes you would like to see in the Edison series pleas=
e
> point me at bug numbers or, even better, patches.
>
>
To fix https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2230 I'll have t=
o
break up
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dcb91ef9310a2450=
650ec880be6f0fc3a6e2d4a23
or look at take license fixes entirely.

-b


My current branch can be seen here:
>
> http://git.yoctoproject.org/**cgit/cgit.cgi/poky-contrib/**
> log/?h=3Djosh/edison<http://git.yoctoproject.org/cgit/cgit.cgi/poky-contr=
ib/log/?h=3Djosh/edison>
>
> Thanks,
> Joshua
> --
> Joshua '=E8=B4=BE=E8=A9=A1' Lock
>        Yocto Project "Johannes factotum"
>        Intel Open Source Technology Centre
> ______________________________**_________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject=
.org/listinfo/poky>
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d0430855a04cc4e04bd0a911c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 6, 2012 at 10:40 AM, Joshua =
Lock <span dir=3D"ltr">&lt;<a href=3D"mailto:josh@linux.intel.com">josh@lin=
ux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi,<br>
<br>
There are plenty of folks still using Edison and bugs being filed against t=
hat release series so I&#39;ve started pulling together a branch of fixes f=
or another Edison point release.<br>
<br>
So far I have:<br>
* Several fixes for useradd<br>
* A fix for building syslinux on hosts with 3.3 or newer kernels [YOCTO #22=
36]<br>
* Fixes so that live images greater than 1GB in size can boot [YOCTO #2138]=
<br>
<br>
If there are other fixes you would like to see in the Edison series please =
point me at bug numbers or, even better, patches.<br>
<br></blockquote><div>=C2=A0</div><div>To fix <a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D2230">https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D2230</a> I&#39;ll have to break up <a href=3D"http://git.y=
octoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dcb91ef9310a2450650ec880be6f=
0fc3a6e2d4a23">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D=
cb91ef9310a2450650ec880be6f0fc3a6e2d4a23</a><br>
or look at take license fixes entirely.<br><br>-b<br><br><br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
My current branch can be seen here:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
josh/edison" target=3D"_blank">http://git.yoctoproject.org/<u></u>cgit/cgit=
.cgi/poky-contrib/<u></u>log/?h=3Djosh/edison</a><br>
<br>
Thanks,<br>
Joshua<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
Joshua &#39;=E8=B4=BE=E8=A9=A1&#39; Lock<br>
 =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto Project &quot;Johannes factotum&quot;<br>
 =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Open Source Technology Centre<br>
______________________________<u></u>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<u></u>org/listinfo/poky</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth=
 Flanagan<br>Yocto Project<br>Build and Release<br>

--f46d0430855a04cc4e04bd0a911c--
