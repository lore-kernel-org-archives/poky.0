Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F195DE00C90; Mon, 10 Dec 2018 23:12:47 -0800 (PST)
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
	*      [209.85.208.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 552ACE00C1E
	for <poky@yoctoproject.org>; Mon, 10 Dec 2018 23:12:47 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id z28so11615741edi.8
	for <poky@yoctoproject.org>; Mon, 10 Dec 2018 23:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=x7PF3pYUpUbPgrp5JVsxrN+q7EvhhRK1rmbEgUmPn68=;
	b=Pk0CvYmsM+LwXuOuxTv/3JZuW3fDejARKUjBlJ24kjRFet15CDCTxagRiEmn7dJRoh
	bj9nHy0POGxpMihj3QX2RSiqZVI7tp2Xd85aGQHR5TKindUJeQGRHlzm/UPjbyHFpcf3
	Xi3kpcMmPAQQYQDq+3qMLeOle16fVNCoh9FRoH/gBwNkWn512ay9gYxvmmu/oIgllayK
	8hdk4xfR3A4pboWvdlkVqUOotHM/rHpRgVBE0xp8eAJDixB58FwL/XdrradxmaedENAm
	UwEPoK7J4dUX3KreFglWFvO6xRMrTNLt/xew0aNB8XTjhsi68EXsBHN8BQFM4o2UfzSt
	Ewjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=x7PF3pYUpUbPgrp5JVsxrN+q7EvhhRK1rmbEgUmPn68=;
	b=MuXzBXX2Fp8fyOCdxMLk00t7r367MQFOPDmLy8JhV5Y+bNIRUW+OnPFBNAWRp0GUT3
	6vHrFPoedzzivta6dXidLkTSfSKI9h6f6atMCaNXN4yonzF2GUtka1oFSe4MC1/gbx85
	eFFlbhmNikh34reND4ITz8bpvw5XCU102DkQZ4kRnYLftF+FUKT3xU5cFPtlSM7L1Hty
	7YBeLzwLeZb7acQBYpXp32h4HbbCr4TNFj0qOSl1KJ/DFiNd4temPqnYN5K6D3FvVWrA
	yU6oHatopV7UsCS8eF4bE2RP1p1Um4CI/bys46FBkjfr1ut6RE3+FP1mlHoXx91Tw/9B
	hYyw==
X-Gm-Message-State: AA+aEWa0F+5lW+3qPKiUEg/i1PSFXBAJLxyVlupkW5jjDo3dqw4CNejJ
	knTf1p1Gpt6iAIsOczmqojGIHPVN4OBXx6iqCTM=
X-Google-Smtp-Source: AFSGD/Vx9m64vGU2Q6Es72kk0vdBqC4U8IsMMTtvhqOnk4gvi/JFZP2QA8xMLwQRoF9JXOdiiqqKAqF1uHFIbuBWewY=
X-Received: by 2002:a50:a622:: with SMTP id d31mr14706355edc.228.1544512366434;
	Mon, 10 Dec 2018 23:12:46 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
	<CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
	<CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
In-Reply-To: <CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Tue, 11 Dec 2018 09:12:34 +0200
Message-ID: <CADnUhn3Er1dR8rr4bDDHniRmFYnCr9h+33a64Hn8C+xLhmApWQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 11 Dec 2018 07:12:48 -0000
Content-Type: multipart/alternative; boundary="000000000000f3dbd6057cb9ced5"

--000000000000f3dbd6057cb9ced5
Content-Type: text/plain; charset="UTF-8"

I tried running same command from devpyshell that that returns the error
message, i.e. (retval, output) = oe.utils.getstatusoutput(cmd),
cmd is the command that error message reports.
This results to (retval, output) == (0, '0 blocks')
Now I'm somewhat less and less impressed about docker performance. It seems
that I have to rise my hands with this.

ma 10. jouluk. 2018 klo 13.40 matti kaasinen (matti.kaasinen@gmail.com)
kirjoitti:

> Previous message was not correct. Do_populate_sysroot does not produce
> package directory. Instead, I get zero return code while running this "cmd"
> manually after crashed do_package.
>
> ma 10. jouluk. 2018 klo 9.50 matti kaasinen (matti.kaasinen@gmail.com)
> kirjoitti:
>
>> I tried executing tasks until the crash. Last task that did not crash
>> seemed to be do_populate_sysroot. Then I executed the command reported on
>> the first ERROR message line. It returned zero return value. I executed it
>> also in pieces. For example find command without -delete option did not
>> find any symbolic links.
>>
>> pe 7. jouluk. 2018 klo 12.42 matti kaasinen (matti.kaasinen@gmail.com)
>> kirjoitti:
>>
>>> These are the error messages returned:
>>> ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup failed with exit
>>> code 2 (cmd was find
>>> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug
>>> -type l -print0 -delete | sed
>>> s#/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g
>>> | (cd '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi' ; cpio -pd0mL
>>> --no-preserve-owner
>>> '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug'
>>> 2>/dev/null))
>>> ERROR: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
>>> ERROR: Logfile of failure stored in:
>>> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do_package.29429
>>> ERROR: Task
>>> (/workdir/sources/poky/meta/recipes-support/nspr/nspr_4.16.bb:do_package)
>>> failed with exit code '1'
>>>
>>>
>>> pe 7. jouluk. 2018 klo 12.10 Burton, Ross (ross.burton@intel.com)
>>> kirjoitti:
>>>
>>>> On Fri, 7 Dec 2018 at 09:42, matti kaasinen <matti.kaasinen@gmail.com>
>>>> wrote:
>>>> > My build stops while packaging nspr-4.16-r0 do_package while
>>>> executing split_and_strip_files.
>>>> > I try now building Poky based image using docker container
>>>> (crops/poky). I already had to add HOSTTOOLS_append = " svn " to get SRCREV
>>>> = "${AUTOREV}" statement work that I did not need in direct PC installation.
>>>>
>>>> You'll have to tell us what the actual error is if you want any help.
>>>>
>>>> Ross
>>>>
>>>

--000000000000f3dbd6057cb9ced5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I tried running same com=
mand from devpyshell that that returns the error message, i.e. (retval, out=
put) =3D oe.utils.getstatusoutput(cmd),</div><div>cmd is the command that e=
rror message reports.</div><div>This results to (retval, output) =3D=3D (0,=
 &#39;0 blocks&#39;)</div><div>Now I&#39;m somewhat less and less impressed=
 about docker performance. It seems that I have to rise my hands with this.=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">ma 10. jo=
uluk. 2018 klo 13.40 matti kaasinen (<a href=3D"mailto:matti.kaasinen@gmail=
.com">matti.kaasinen@gmail.com</a>) kirjoitti:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Previous message was not =
correct. Do_populate_sysroot does not produce package directory. Instead, I=
 get zero return code while running this &quot;cmd&quot; manually after cra=
shed do_package.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">m=
a 10. jouluk. 2018 klo 9.50 matti kaasinen (<a href=3D"mailto:matti.kaasine=
n@gmail.com" target=3D"_blank">matti.kaasinen@gmail.com</a>) kirjoitti:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I =
tried executing tasks until the crash. Last task that did not crash seemed =
to be do_populate_sysroot. Then I executed the command reported on the firs=
t ERROR message line. It returned zero return value. I executed it also in =
pieces. For example find command without -delete option did not find any sy=
mbolic links.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">pe 7=
. jouluk. 2018 klo 12.42 matti kaasinen (<a href=3D"mailto:matti.kaasinen@g=
mail.com" target=3D"_blank">matti.kaasinen@gmail.com</a>) kirjoitti:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr"><div>These are the error messages returned:</div><div>ERROR: ns=
pr-4.16-r0 do_package: debugsrc symlink fixup failed with exit code 2 (cmd =
was find /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/packag=
e/usr/src/debug -type l -print0 -delete | sed s#/BUILD/work/cortexa7hf-neon=
-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g | (cd &#39;/BUIL=
D/work/cortexa7hf-neon-poky-linux-gnueabi&#39; ; cpio -pd0mL --no-preserve-=
owner &#39;/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/pack=
age/usr/src/debug&#39; 2&gt;/dev/null))<br>ERROR: nspr-4.16-r0 do_package: =
Function failed: split_and_strip_files<br>ERROR: Logfile of failure stored =
in: /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do=
_package.29429<br>ERROR: Task (/workdir/sources/poky/meta/recipes-support/n=
spr/nspr_4.16.bb:do_package) failed with exit code &#39;1&#39;<br><br></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">pe 7. jouluk. =
2018 klo 12.10 Burton, Ross (<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>) kirjoitti:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">On Fri, 7 Dec 2018 at 09:42, matti kaasi=
nen &lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti=
.kaasinen@gmail.com</a>&gt; wrote:<br>
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
</blockquote></div>
</blockquote></div>

--000000000000f3dbd6057cb9ced5--
