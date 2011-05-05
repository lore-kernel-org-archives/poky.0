Return-Path: <msundius@sundius.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEFEE4C800A3
	for <poky@yoctoproject.org>; Thu,  5 May 2011 13:02:01 -0500 (CDT)
Received: by qyk30 with SMTP id 30so2330698qyk.14
	for <poky@yoctoproject.org>; Thu, 05 May 2011 11:02:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.131.23 with SMTP id v23mr1835705qcs.11.1304618521148; Thu,
	05 May 2011 11:02:01 -0700 (PDT)
Received: by 10.229.65.138 with HTTP; Thu, 5 May 2011 11:02:01 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950116D58CCA@orsmsx504.amr.corp.intel.com>
References: <BANLkTi=FVHHE0+HjkhbRKy-z173cJGghog@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950116D58CCA@orsmsx504.amr.corp.intel.com>
Date: Thu, 5 May 2011 11:02:01 -0700
Message-ID: <BANLkTi=7OBSsL7DNr2ciU7NEVKYxwiU=Xw@mail.gmail.com>
From: C Michael Sundius <msundius@sundius.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: building images
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
X-List-Received-Date: Thu, 05 May 2011 18:02:02 -0000
Content-Type: multipart/alternative; boundary=001517576e94853dfa04a28b2bbe

--001517576e94853dfa04a28b2bbe
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 29, 2011 at 10:49 AM, Zhang, Jessica <jessica.zhang@intel.com>w=
rote:

>
> Yocto project has a command line script called adt-installer probably you
> can take a look, what it does is setup your host cross development
> environment.  It downloads the cross-toolchain for the target and downloa=
d
> the corresponding image rootfs and extract it out on the development host=
 as
> sysroot that contains the target headers and libraries.  The remote packa=
ge
> access is based on wget and it=92s using opkg to manipulate ipk packages =
since
> it=92s lightweighted.  The adt-installer is running against a installatio=
n
> config file basically tells it where (the ipk package repo) to download
> things and where (on the development host) to setup things, the toolchain=
,
> the sysroot etc.  So for the developer perspective, there=92s no dependen=
cy on
> OE.  What you need to do is to build out all the needed ipk packages usin=
g
> OE/Yocto and setup the ipk package repo.
>
>
>
Jessica,

I'm not sure if I replied to your email. Thank you. I think that is
generally what I've been after. I now have a bit of time and will look at i=
t
more closely.

Mike

--001517576e94853dfa04a28b2bbe
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div><div class=3D"gmail_quote">On Fri, Apr 29, 2011 at 10:49 AM, Zhang, Je=
ssica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com">jess=
ica.zhang@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;=
">






<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><font class=3D"Apple-style-span" color=3D"#1F497D"><=
span class=3D"Apple-style-span" style=3D"font-size: 15px;"><br></span></fon=
t></p><div><div class=3D"im">
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"=
>Yocto project has a command line script called adt-installer probably you =
can take a look, what it does is setup your host cross development environm=
ent.=A0 It
 downloads the cross-toolchain for the target and download the correspondin=
g image rootfs and extract it out on the development host as sysroot that c=
ontains the target headers and libraries.=A0 The remote package access is b=
ased on wget and it=92s using opkg to
 manipulate ipk packages since it=92s lightweighted.=A0 The adt-installer i=
s running against a installation config file basically tells it where (the =
ipk package repo) to download things and where (on the development host) to=
 setup things, the toolchain, the sysroot
 etc.=A0 So for the developer perspective, there=92s no dependency on OE.=
=A0 What you need to do is to build out all the needed ipk packages using O=
E/Yocto and setup the ipk package repo.</span></p><div class=3D"im">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">=A0</=
span></p></div></div></div></div></blockquote><meta http-equiv=3D"content-t=
ype" content=3D"text/html; charset=3Dutf-8">Jessica,=A0<div><br></div><div>=
I&#39;m not sure if I replied to your email. Thank you. I think that is gen=
erally what I&#39;ve been after. I now have a bit of time and will look at =
it more closely.=A0</div>
<div><br></div><div>Mike<br><br></div><div>=A0</div></div></div>

--001517576e94853dfa04a28b2bbe--
