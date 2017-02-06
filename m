Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DD5AE00995; Mon,  6 Feb 2017 04:19:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B8BE007BA
	for <poky@yoctoproject.org>; Mon,  6 Feb 2017 04:19:30 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id u25so52513795qki.2
	for <poky@yoctoproject.org>; Mon, 06 Feb 2017 04:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=87bFSX91Cb+d6ZHmK1m4XDvorLaRyYVSwsItp4ZM3+U=;
	b=ELgUTN8dmb9WYcv6TaaJqbBFynGm2awxc6tPuV2ar5df2yG5GtC/nFds8Ij666AyGD
	LJN/sQjLU51bkeiA41nd5PzgB5GE6hXJDZK4SmR5d1mLVO2XlP1LMR5F5vmjUILAZWTn
	8NlfikC3cJDgbgB3JltGMJJUexLYSSiklhHDkAvLpz3LQstI7hCKwes3fWkgy1BbrfnS
	zYKjMBfiGse2ZPAQsiMuf2DjpmgUWEtzN5rLYlFOth3mtMC9mYu3Pxzncwq65Aii33JL
	26Muz2k5GwNG5+bq4CZTgvBnZJVN201kMozjG+M6kXCC/22vDekGh7FPnd+jQzZ0mUB9
	AH1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=87bFSX91Cb+d6ZHmK1m4XDvorLaRyYVSwsItp4ZM3+U=;
	b=TX/bJm6OTF+Gmm3/5JF6QDLsAkceGc7mBfxcezYmvTp0u5B/oNrNZZjeZrbKTF+n8K
	CDu3+uHOi/t5L7Z0b6ZixDsgtfkAG47P7FT3PVLPml346IEIE7F7o+FfHXpg3ELY6iRD
	NtmdamGiS+/Ql8cggMGPcs8a8cXRR/LX9VqockvNMi3fzTJGq8mk94CyxIJK4XN1PimJ
	mktpz2Kd4FriQHQfIN8mLPK8asfA9+TTJnu8NB5jA+JxIwUPoBaPwrRcxw4lyKNu9hom
	JDjID9jn9PifvdHQvDl13A9OwsDCeXSsHfsHp3NXvlEYHjpEtoyZ8cOTocQQ0GIYmFt5
	W+Gw==
X-Gm-Message-State: AMke39ksASmh/xnlbmJBvAEOrmK7VBb+c/1IbzA2aDmordGQ/iICd7oVGobyn7tgzYTrX0BtXoUHcaHN92jg7XOQ
X-Received: by 10.55.3.67 with SMTP id 64mr397827qkd.244.1486383569556; Mon,
	06 Feb 2017 04:19:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 6 Feb 2017 04:19:09 -0800 (PST)
In-Reply-To: <CAN0Cx9MsoJ9n_JcfqZt_Q+PySoWmu9vhV4Fu+-SEtmoK9yUBYQ@mail.gmail.com>
References: <CAN0Cx9MsoJ9n_JcfqZt_Q+PySoWmu9vhV4Fu+-SEtmoK9yUBYQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Feb 2017 12:19:09 +0000
Message-ID: <CAJTo0LaBuwPXfDuXwUMw=BFDxoWWxbw7vy07tKmN4k4Umy+gkw@mail.gmail.com>
To: Niko Mauno <niko.mauno@iki.fi>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: RFC: add new init system alternative to poky
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
X-List-Received-Date: Mon, 06 Feb 2017 12:19:34 -0000
Content-Type: multipart/alternative; boundary=001a114c81caaa16eb0547dba42a

--001a114c81caaa16eb0547dba42a
Content-Type: text/plain; charset=UTF-8

It looks a lot like this could be a separate layer, say meta-openrc.  That
way others can use/contribute but you won't be tied to oe-core policies.

Ross

On 4 February 2017 at 20:37, Niko Mauno <niko.mauno@iki.fi> wrote:

> To whom it may concern;
>
> attached patches (which work for me on top of Poky commit
> b76161a9a890481e8418a34b3250fc2debcb566f) serve by adding initial support
> for an alternative modern init system called OpenRC to Yocto-generated
> Linux OS distributions.
>
> https://wiki.gentoo.org/wiki/OpenRC
> https://wiki.gentoo.org/wiki/Comparison_of_init_systems
>
> Motivation: Systemd may not suit everyone, but SysVinit is also very old
> and unmaintained. OpenRC provides modern init features, such as parallel
> service startup and automatic restarting of crashed services, while
> retaining an Unix-like approach of doing things.
>
> While relying on SysVinit's /sbin/init, the OpenRC documentation page
> claims that BusyBox-provided init program is also supported at least to
> some extent currently.
>
> While developing I've tested against the poky master branch's
> core-image-full-cmdline, which boots and halts for me seemingly without
> errors.
>
> With following openrc_%.bbappend:
>     do_install_append() {
> echo 'keymap="fi"' >> ${D}${sysconfdir}/conf.d/keymaps
> echo 'rc_logger="YES"' >> ${D}${sysconfdir}/rc.conf
>     }
> I got the console keymap working for me, and a boot log at
> /var/log/rc.log, like which Yocto's sysvinit has so far provided.
>
> The second patch which modifies openssh recipe, is a sample showing how to
> add openrc support to existing recipes. The OpenRC specific conf, init
> files are readily available from Gentoo project, so there shouldn't be any
> need to come up with those files from scratch. With the openssh patch, I'm
> able to login in to core-image-full-cmdline (executed via runqemu qemux86)
> via ssh right after the image OS has booted.
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--001a114c81caaa16eb0547dba42a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">It looks a lot like this could =
be a separate layer, say meta-openrc.=C2=A0 That way others can use/contrib=
ute but you won&#39;t be tied to oe-core policies.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On 4 February 2017 at 20:37, Ni=
ko Mauno <span dir=3D"ltr">&lt;<a href=3D"mailto:niko.mauno@iki.fi" target=
=3D"_blank">niko.mauno@iki.fi</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">To whom it may concern;<div><br></div><div>atta=
ched patches (which work for me on top of Poky commit b76161a9a890481e8418a=
34b3250fc<wbr>2debcb566f)=C2=A0serve by adding initial support for an alter=
native modern init system called OpenRC to Yocto-generated Linux OS distrib=
utions.=C2=A0</div><div><br></div><div><a href=3D"https://wiki.gentoo.org/w=
iki/OpenRC" target=3D"_blank">https://wiki.gentoo.org/wiki/<wbr>OpenRC</a><=
/div><div><a href=3D"https://wiki.gentoo.org/wiki/Comparison_of_init_system=
s" target=3D"_blank">https://wiki.gentoo.org/wiki/<wbr>Comparison_of_init_s=
ystems</a><br><br>Motivation: Systemd may not suit everyone, but SysVinit i=
s also very old and unmaintained. OpenRC provides modern init features, suc=
h as parallel service startup and automatic restarting of crashed services,=
 while retaining an Unix-like approach of doing things.<br><br>While relyin=
g on SysVinit&#39;s /sbin/init, the OpenRC documentation page claims that B=
usyBox-provided init program is also supported at least to some extent curr=
ently.</div><div><br></div><div>While developing I&#39;ve tested against th=
e poky master branch&#39;s core-image-full-cmdline, which boots and halts f=
or me seemingly without errors.<br><br>With following openrc_%.bbappend:<di=
v>=C2=A0 =C2=A0 do_install_append() {</div><div><span class=3D"m_6476383601=
317338611gmail-Apple-tab-span" style=3D"white-space:pre-wrap">    	</span>e=
cho &#39;keymap=3D&quot;fi&quot;&#39; &gt;&gt; ${D}${sysconfdir}/conf.d/<wb=
r>keymaps</div><div><span class=3D"m_6476383601317338611gmail-Apple-tab-spa=
n" style=3D"white-space:pre-wrap">    	</span>echo &#39;rc_logger=3D&quot;Y=
ES&quot;&#39; &gt;&gt; ${D}${sysconfdir}/rc.conf</div><div>=C2=A0 =C2=A0 }<=
/div><div>I got the console keymap working for me, and a boot log at /var/l=
og/rc.log, like which Yocto&#39;s sysvinit has so far provided.</div><div><=
br></div><div>The second patch which modifies openssh recipe, is a sample s=
howing how to add openrc support to existing recipes. The OpenRC specific c=
onf, init files are readily available from Gentoo project, so there shouldn=
&#39;t be any need to come up with those files from scratch. With the opens=
sh patch, I&#39;m able to login in to core-image-full-cmdline (executed via=
 runqemu qemux86) via ssh right after the image OS has booted.</div></div><=
/div>
<br>--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
<br></blockquote></div><br></div>

--001a114c81caaa16eb0547dba42a--
