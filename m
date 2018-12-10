Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62726E00C4D; Sun,  9 Dec 2018 23:51:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matti.kaasinen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6FB0E008C6
	for <poky@yoctoproject.org>; Sun,  9 Dec 2018 23:51:05 -0800 (PST)
Received: by mail-ed1-f47.google.com with SMTP id d39so8601154edb.12
	for <poky@yoctoproject.org>; Sun, 09 Dec 2018 23:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KOWR5Q/dyYTHCqTo/INd2S/E1FKgzGAHUMmADqiK8HM=;
	b=AD47ROZIBsHuMmbMwJjlat0/6WQux4FnAgnCSWKPYBPFsSgjla8PL5XrCb+wa0dHK7
	0xlmg94Dr0n088rNp0mCezjB2XDRy0uJrYu6l2pFzf2oHbLmFrJdPV0gvYION8sjxtQ+
	BfXCO7kqErnnuPDo3/15+v3Gkd3nFNK9x00cV19vWw9MXDEG9/FKuHAoVJ4Hx8QuSQg4
	PlYev0g1+bEa5imYrGh3CMTG103zQUDgjeo4LKzSApJK+Qbc8gXN70hjTgdEwDoL2k2B
	klIWvD615BIc+zAB+01OPNTWYufezUk1LPOuRB04vH/Y1A7ATeJ5ySxPzwGLiwU94uJI
	gHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KOWR5Q/dyYTHCqTo/INd2S/E1FKgzGAHUMmADqiK8HM=;
	b=KFIGFY/cwrQYj7GWERWA9ncCbOv3e+lhBu6yri7o9ao3T71T1WOaKAPmN0hRyLE3tu
	6MYr9PHOdtfTb1r/WPfI5JiPM1Z6aws9TW4kK3su/GJmWfvywuCAVXZRSDjvijRn1fcp
	5gx7fzPnvapO03fJbiOwIUmZEv+7d0KfivI1x6gAz9JSfrcl//j47X3BJxkKx+MHM19D
	0iwmw/Xv1GntoOVyLxSAhiU6YFHO+725zJZ5D4gnKmjDXYhQxMiEnVOAR6bFz1bt9h/Z
	Btp0WRNPfi8ZbjKmCpe4WSw+UB6CIhfeEUI9XhVRw0mq+RglwSILk0hD1GLxvrnvodkR
	zT9A==
X-Gm-Message-State: AA+aEWY1cfXsdP6lYj7LcnHe32jnZy+o0I88vw9SzlIxUhuNqEsAudu3
	IWpWV7q/fGePxZJ25kSpGmzFF6kVZW0L6sQj7bs=
X-Google-Smtp-Source: AFSGD/VAxYg9CpaLsJ1goNfj5fsGhvtNs30YPf8DjH30geSMcEprtH0/OXcfutneCZB4j5GPy8J4Et6a1n4P0ynGl4g=
X-Received: by 2002:a50:a726:: with SMTP id h35mr10600864edc.192.1544428264900;
	Sun, 09 Dec 2018 23:51:04 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
In-Reply-To: <CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Mon, 10 Dec 2018 09:50:53 +0200
Message-ID: <CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 10 Dec 2018 07:51:07 -0000
Content-Type: multipart/alternative; boundary="0000000000001c4ddd057ca63aab"

--0000000000001c4ddd057ca63aab
Content-Type: text/plain; charset="UTF-8"

I tried executing tasks until the crash. Last task that did not crash
seemed to be do_populate_sysroot. Then I executed the command reported on
the first ERROR message line. It returned zero return value. I executed it
also in pieces. For example find command without -delete option did not
find any symbolic links.

pe 7. jouluk. 2018 klo 12.42 matti kaasinen (matti.kaasinen@gmail.com)
kirjoitti:

> These are the error messages returned:
> ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup failed with exit
> code 2 (cmd was find
> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug
> -type l -print0 -delete | sed
> s#/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g
> | (cd '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi' ; cpio -pd0mL
> --no-preserve-owner
> '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug'
> 2>/dev/null))
> ERROR: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
> ERROR: Logfile of failure stored in:
> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do_package.29429
> ERROR: Task (/workdir/sources/poky/meta/recipes-support/nspr/nspr_4.16.bb:do_package)
> failed with exit code '1'
>
>
> pe 7. jouluk. 2018 klo 12.10 Burton, Ross (ross.burton@intel.com)
> kirjoitti:
>
>> On Fri, 7 Dec 2018 at 09:42, matti kaasinen <matti.kaasinen@gmail.com>
>> wrote:
>> > My build stops while packaging nspr-4.16-r0 do_package while executing
>> split_and_strip_files.
>> > I try now building Poky based image using docker container
>> (crops/poky). I already had to add HOSTTOOLS_append = " svn " to get SRCREV
>> = "${AUTOREV}" statement work that I did not need in direct PC installation.
>>
>> You'll have to tell us what the actual error is if you want any help.
>>
>> Ross
>>
>

--0000000000001c4ddd057ca63aab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried executing tasks until the crash. Last task that di=
d not crash seemed to be do_populate_sysroot. Then I executed the command r=
eported on the first ERROR message line. It returned zero return value. I e=
xecuted it also in pieces. For example find command without -delete option =
did not find any symbolic links.<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">pe 7. jouluk. 2018 klo 12.42 matti kaasinen (<a href=3D"mail=
to:matti.kaasinen@gmail.com">matti.kaasinen@gmail.com</a>) kirjoitti:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>These are the error messages returned:</div><div>ERROR: n=
spr-4.16-r0 do_package: debugsrc symlink fixup failed with exit code 2 (cmd=
 was find /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/packa=
ge/usr/src/debug -type l -print0 -delete | sed s#/BUILD/work/cortexa7hf-neo=
n-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g | (cd &#39;/BUI=
LD/work/cortexa7hf-neon-poky-linux-gnueabi&#39; ; cpio -pd0mL --no-preserve=
-owner &#39;/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/pac=
kage/usr/src/debug&#39; 2&gt;/dev/null))<br>ERROR: nspr-4.16-r0 do_package:=
 Function failed: split_and_strip_files<br>ERROR: Logfile of failure stored=
 in: /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.d=
o_package.29429<br>ERROR: Task (/workdir/sources/poky/meta/recipes-support/=
nspr/nspr_4.16.bb:do_package) failed with exit code &#39;1&#39;<br><br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">pe 7. jouluk.=
 2018 klo 12.10 Burton, Ross (<a href=3D"mailto:ross.burton@intel.com" targ=
et=3D"_blank">ross.burton@intel.com</a>) kirjoitti:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">On Fri, 7 Dec 2018 at 09:42, matti kaas=
inen &lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matt=
i.kaasinen@gmail.com</a>&gt; wrote:<br>
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
</blockquote></div>

--0000000000001c4ddd057ca63aab--
