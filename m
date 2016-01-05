Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BABBE00AD7; Tue,  5 Jan 2016 14:59:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BEFEE0079A
	for <poky@yoctoproject.org>; Tue,  5 Jan 2016 14:59:49 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id xn1so12624746obc.2
	for <poky@yoctoproject.org>; Tue, 05 Jan 2016 14:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QJbICo60zn9JYO/INMnn55aSU/Yewnj8cPAZA/u6Oyw=;
	b=DZxWXqOEIWuZI6TMPJU0qgEcdzDkgPWVzxnbbzVFFacMnYTnO/GAcuEsvzvLjf7z/g
	NddSENfXlrpWsZ/mgfeyuISeeV1/UiqSZHKUVVsQGQKL+Dee4AeYlDnbayImw59Yn5kf
	uuBYt0dmVmEBYvtdpH2/dYCgPQuCkRYRhbg6bLxCueDkInyqq1PMmd9+0iyNt3H8385j
	SPVyU1UyZ19zgtwDK6lVRar9rPkRcRYQVJFHbVCa7htvRk1McR5bzCa3GUmQwPd0MJ5N
	lV2lBeYAG4eUau2ELCeGaWhH12/PRTyocqH6mVCBfPXvjBKZGQ1p6RVDHhtJNM4Juf2k
	Gv2g==
MIME-Version: 1.0
X-Received: by 10.182.210.234 with SMTP id mx10mr66798986obc.47.1452034788642; 
	Tue, 05 Jan 2016 14:59:48 -0800 (PST)
Received: by 10.182.245.83 with HTTP; Tue, 5 Jan 2016 14:59:48 -0800 (PST)
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
Date: Tue, 5 Jan 2016 16:59:48 -0600
Message-ID: <CAFNP8Ovaqt-L6Re6M4dz3O5qaj83-BNrXcfR+yH6bXwyB-0C4A@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Remove qt4 references from poky
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
X-List-Received-Date: Tue, 05 Jan 2016 22:59:53 -0000
Content-Type: multipart/alternative; boundary=001a11c2b464c757e205289e31e7

--001a11c2b464c757e205289e31e7
Content-Type: text/plain; charset=UTF-8

Hi,

There are some references to qt4 in the YP Reference Manual.  Can you tell
me if these simply need removed from the documentation?  Or, if some
modification is necessary for each.  Here they are:

http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#migration-2.0-Gstreamer-0.10-removed

http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-qt4*

http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-images
- Last item in that list.

http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-features-image
- There is a "qt4-pkgs" item in the second list of this section.

Thanks,
Scott

On Thu, Dec 3, 2015 at 8:34 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> This patchset complements the qt4 removal patchset that is sent to
> oe-core mailing list.
>
> The following changes since commit
> 613ccfb98734254bd8feeefcc986dfc545d38f85:
>
>   packagegroup-core-lsb: treat qt4 packages same as qt3 packages
> (2015-12-03 15:57:34 +0200)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib akanavin/remove-qt4
>
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=akanavin/remove-qt4
>
> Alexander Kanavin (3):
>   maintainers.inc: drop qt4 references
>   poky-tiny.conf: drop qt4 references
>   local.conf.sample.extended: drop qt4 references
>
>  meta-yocto/conf/distro/include/maintainers.inc | 15 ---------------
>  meta-yocto/conf/distro/poky-tiny.conf          |  1 -
>  meta-yocto/conf/local.conf.sample.extended     |  3 +--
>  3 files changed, 1 insertion(+), 18 deletions(-)
>
> --
> 2.6.2
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a11c2b464c757e205289e31e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi, <br><br></div>There are some references=
 to qt4 in the YP Reference Manual.=C2=A0 Can you tell me if these simply n=
eed removed from the documentation?=C2=A0 Or, if some modification is neces=
sary for each.=C2=A0 Here they are:<br><br><a href=3D"http://www.yoctoproje=
ct.org/docs/2.1/ref-manual/ref-manual.html#migration-2.0-Gstreamer-0.10-rem=
oved">http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#migra=
tion-2.0-Gstreamer-0.10-removed</a><br><br><a href=3D"http://www.yoctoproje=
ct.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-qt4*">http://www.yoc=
toproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-qt4*</a><br><=
br><a href=3D"http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.ht=
ml#ref-images">http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.h=
tml#ref-images</a> - Last item in that list.<br><br><a href=3D"http://www.y=
octoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-features-image">htt=
p://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-features-i=
mage</a> - There is a &quot;qt4-pkgs&quot; item in the second list of this =
section.<br><br></div>Thanks, <br></div>Scott<br></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Thu, Dec 3, 2015 at 8:34 AM, Alexa=
nder Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linu=
x.intel.com" target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">This patchset complements the=
 qt4 removal patchset that is sent to<br>
oe-core mailing list.<br>
<br>
The following changes since commit 613ccfb98734254bd8feeefcc986dfc545d38f85=
:<br>
<br>
=C2=A0 packagegroup-core-lsb: treat qt4 packages same as qt3 packages (2015=
-12-03 15:57:34 +0200)<br>
<br>
are available in the git repository at:<br>
<br>
=C2=A0 git://<a href=3D"http://git.yoctoproject.org/poky-contrib" rel=3D"no=
referrer" target=3D"_blank">git.yoctoproject.org/poky-contrib</a> akanavin/=
remove-qt4<br>
=C2=A0 <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=
=3Dakanavin/remove-qt4" rel=3D"noreferrer" target=3D"_blank">http://git.yoc=
toproject.org/cgit.cgi/poky-contrib/log/?h=3Dakanavin/remove-qt4</a><br>
<br>
Alexander Kanavin (3):<br>
=C2=A0 maintainers.inc: drop qt4 references<br>
=C2=A0 poky-tiny.conf: drop qt4 references<br>
=C2=A0 local.conf.sample.extended: drop qt4 references<br>
<br>
=C2=A0meta-yocto/conf/distro/include/maintainers.inc | 15 ---------------<b=
r>
=C2=A0meta-yocto/conf/distro/poky-tiny.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 1 -<br>
=C2=A0meta-yocto/conf/local.conf.sample.extended=C2=A0 =C2=A0 =C2=A0|=C2=A0=
 3 +--<br>
=C2=A03 files changed, 1 insertion(+), 18 deletions(-)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
2.6.2<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--001a11c2b464c757e205289e31e7--
