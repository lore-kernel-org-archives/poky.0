Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03EACE00C58; Fri,  7 Dec 2018 02:43:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matti.kaasinen[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95080E00C49
	for <poky@yoctoproject.org>; Fri,  7 Dec 2018 02:43:10 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id b3so3344891ede.1
	for <poky@yoctoproject.org>; Fri, 07 Dec 2018 02:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=vmoYID4HmpScplJ61VnQ7qY+pMS8TGbc/E71g7eUzfk=;
	b=bB3KJmW+89EFUb16fmT7vXt0XeTafLWDNlIhoGzm2s+6aoLS8MQkCEj3ubNuMItLIC
	IL6ifzmk3CJxDH3Vf/eCAL4X0zBt8607tSqykBd9gR7UPfL6RD8ajUpVfbiW/hUTdhyC
	Ke/EP5aw04fkAods7SuZMbwCvBlEI6XDHqxkVgjA672c3FJFBT0mhYkmLHYHXG86TMFm
	QlOpRbTXBOxt3awSp164qA+kblcuyHdxqm2XeR1Wlrd+iBfbmEs78LMNDf0H7lv1g/g2
	FVssVofbMhGh4mIZnnkEDX0tI373ZOzr+j9iEN9ids7rDSXG/TesgelSwZWZe46BJalz
	c9EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vmoYID4HmpScplJ61VnQ7qY+pMS8TGbc/E71g7eUzfk=;
	b=A/EAouBM9DZ1IdzVPKnkClpObjNVLn7hqxCiLkZ0BebfvtxFTIWkKw6/N2x/1wz09w
	xNPnW8NCIpB/Uqsk30JboeHhWHKUJ2vlTorvK8FxFoTBtcEWyFIAt0TADwu3r6X6LwWD
	pF9Db4KFBbFCxCVI6lwHKotah70QeXQVjOFNwJwYRzbX36ThOIPsbbvi1GRXj+Ytes2s
	HaK8cRGf+TDSWPgauedb04O2v/NtkHfjLg8srEKN3eQN+eCgZf9uEwIuXpy3ea8Ub8Jc
	qWZE8U27tWPv1vK+XtTSbMqzDDmQ9wl4rwiWaJZlEhtUjJeyTkMrM2cG7oSRnBz5dKrb
	FOYg==
X-Gm-Message-State: AA+aEWYRjKAbiNuOZcK+87Ctng3+uFlMWZITsPLzX2FTevOOFjiiZzg7
	YahFxaUpbbPn+CoYzEFwrucg88RA1hY1E2IlxrY=
X-Google-Smtp-Source: AFSGD/WjYlMO73tKex/rh2vj5igUvCAfm1dtqcIbv0aIcZkSx7cvUumOxuP4PPGjJcajoE6RdbzAwj9Z74h159L2U/I=
X-Received: by 2002:a17:906:3ed4:: with SMTP id
	d20-v6mr1549568ejj.151.1544179389605; 
	Fri, 07 Dec 2018 02:43:09 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
In-Reply-To: <CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Fri, 7 Dec 2018 12:42:56 +0200
Message-ID: <CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Fri, 07 Dec 2018 10:43:12 -0000
Content-Type: multipart/alternative; boundary="000000000000fcabdb057c6c4781"

--000000000000fcabdb057c6c4781
Content-Type: text/plain; charset="UTF-8"

These are the error messages returned:
ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup failed with exit
code 2 (cmd was find
/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug
-type l -print0 -delete | sed
s#/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g
| (cd '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi' ; cpio -pd0mL
--no-preserve-owner
'/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug'
2>/dev/null))
ERROR: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
ERROR: Logfile of failure stored in:
/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do_package.29429
ERROR: Task (/workdir/sources/poky/meta/recipes-support/nspr/nspr_4.16.bb:do_package)
failed with exit code '1'


pe 7. jouluk. 2018 klo 12.10 Burton, Ross (ross.burton@intel.com) kirjoitti:

> On Fri, 7 Dec 2018 at 09:42, matti kaasinen <matti.kaasinen@gmail.com>
> wrote:
> > My build stops while packaging nspr-4.16-r0 do_package while executing
> split_and_strip_files.
> > I try now building Poky based image using docker container (crops/poky).
> I already had to add HOSTTOOLS_append = " svn " to get SRCREV =
> "${AUTOREV}" statement work that I did not need in direct PC installation.
>
> You'll have to tell us what the actual error is if you want any help.
>
> Ross
>

--000000000000fcabdb057c6c4781
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>These are the error messages returne=
d:</div><div>ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup failed =
with exit code 2 (cmd was find /BUILD/work/cortexa7hf-neon-poky-linux-gnuea=
bi/nspr/4.16-r0/package/usr/src/debug -type l -print0 -delete | sed s#/BUIL=
D/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debu=
g/##g | (cd &#39;/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi&#39; ; cpio=
 -pd0mL --no-preserve-owner &#39;/BUILD/work/cortexa7hf-neon-poky-linux-gnu=
eabi/nspr/4.16-r0/package/usr/src/debug&#39; 2&gt;/dev/null))<br>ERROR: nsp=
r-4.16-r0 do_package: Function failed: split_and_strip_files<br>ERROR: Logf=
ile of failure stored in: /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/ns=
pr/4.16-r0/temp/log.do_package.29429<br>ERROR: Task (/workdir/sources/poky/=
meta/recipes-support/nspr/nspr_4.16.bb:do_package) failed with exit code &#=
39;1&#39;<br><br></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">pe 7. jouluk. 2018 klo 12.10 Burton, Ross (<a href=3D"mailto:ross.=
burton@intel.com">ross.burton@intel.com</a>) kirjoitti:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On Fri, 7 Dec 2018 at 09:42, matti =
kaasinen &lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">=
matti.kaasinen@gmail.com</a>&gt; wrote:<br>
&gt; My build stops while packaging nspr-4.16-r0 do_package while executing=
 split_and_strip_files.<br>
&gt; I try now building Poky based image using docker container (crops/poky=
). I already had to add HOSTTOOLS_append =3D &quot; svn &quot; to get SRCRE=
V =3D &quot;${AUTOREV}&quot; statement work that I did not need in direct P=
C installation.<br>
<br>
You&#39;ll have to tell us what the actual error is if you want any help.<b=
r>
<br>
Ross<br>
</blockquote></div>

--000000000000fcabdb057c6c4781--
