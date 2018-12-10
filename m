Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C849FE00C7D; Mon, 10 Dec 2018 03:40:37 -0800 (PST)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721BDE00C10
	for <poky@yoctoproject.org>; Mon, 10 Dec 2018 03:40:36 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id h15so9189547edb.4
	for <poky@yoctoproject.org>; Mon, 10 Dec 2018 03:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=V0sS7fTVfiwSvyLnc8kB9iCPITxT98QovMoztxQlDs4=;
	b=L72lIMMs4qs+0rInWcr7RkcjB5w0G6+oyO/gfSPjWBGq6AjoAmeMgxPOcoMbEN9M3W
	SRb0a3NNlK74ZqUQq2Td0wT1CbdBVtmzSzo2TPS63HbMSsu8fk5mQ3R/NtNKn1crSaT/
	UCydTG+0tDK1MRxOMbMT/3sU2vyl5x8P719BxbL5hC91ZKsOugi3/mMuSbTeWqa8xT9i
	pkT5MHiMdOc61lLRCfTYrnM5i4qs+4HXJYP83AcH+MwJQm+axoiQo9q1wxXNhYMdzfPo
	F0YyAJGhkELcJ40T6LJYx3tOvOtfjeMvQBoeCcBIpCtjAffclxhjbJcIl1evO+AWkPl3
	IY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=V0sS7fTVfiwSvyLnc8kB9iCPITxT98QovMoztxQlDs4=;
	b=KzJjewFVY00CE+XxI7aMBR7bGmF462cxkQigjAPrp7i3G/A571zXF0Z7lxolSO3fKS
	iZ1H7hYYdJarUrPFoK9jeMcBPjCXthZz0OiQ5dTBHwPKQ6qKZlqFGWgDou7oALLgFJ5Y
	wAIVrwoFokglxdpDAGo5uTXjENCQCysw6bTH50R+WoX9X0vgHrZfFzAbfaUG7wDVqIwa
	L31Vmf6WjNTLEfelEQNjxAtxPcD7fjyCbRLcNvQpmNmxCcGbqNlVcLBEjdsuCFqdRalW
	AbNb5n5GnyWUI4FnZcYl0CYz56cCN6/r9wY66QhDayPFK3U711dMrDzjjCE4afp0tiSr
	VVtw==
X-Gm-Message-State: AA+aEWaLpNWfUcrsu0DrRMszPB4miDj6Eq6tMnA8uSC+SEg++T12Vnkj
	eAuPmP5JLI7jzZZ0gupz7kx/+IV+bgU3clnjwzRpPw==
X-Google-Smtp-Source: AFSGD/XYKGRAfmAvWemzWgn1EVPFAWVzDXsRN1kWQfB9gxFaLdH2wIHPxTFJ1I2n1h8DreiBPgWz8ALeruRXYVPA7Rc=
X-Received: by 2002:a50:96c2:: with SMTP id z2mr11783854eda.11.1544442035420; 
	Mon, 10 Dec 2018 03:40:35 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
	<CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
In-Reply-To: <CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Mon, 10 Dec 2018 13:40:23 +0200
Message-ID: <CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
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
X-List-Received-Date: Mon, 10 Dec 2018 11:40:37 -0000
Content-Type: multipart/alternative; boundary="000000000000e5c17e057ca96e52"

--000000000000e5c17e057ca96e52
Content-Type: text/plain; charset="UTF-8"

Previous message was not correct. Do_populate_sysroot does not produce
package directory. Instead, I get zero return code while running this "cmd"
manually after crashed do_package.

ma 10. jouluk. 2018 klo 9.50 matti kaasinen (matti.kaasinen@gmail.com)
kirjoitti:

> I tried executing tasks until the crash. Last task that did not crash
> seemed to be do_populate_sysroot. Then I executed the command reported on
> the first ERROR message line. It returned zero return value. I executed it
> also in pieces. For example find command without -delete option did not
> find any symbolic links.
>
> pe 7. jouluk. 2018 klo 12.42 matti kaasinen (matti.kaasinen@gmail.com)
> kirjoitti:
>
>> These are the error messages returned:
>> ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup failed with exit
>> code 2 (cmd was find
>> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug
>> -type l -print0 -delete | sed
>> s#/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g
>> | (cd '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi' ; cpio -pd0mL
>> --no-preserve-owner
>> '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug'
>> 2>/dev/null))
>> ERROR: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
>> ERROR: Logfile of failure stored in:
>> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do_package.29429
>> ERROR: Task (/workdir/sources/poky/meta/recipes-support/nspr/nspr_4.16.bb:do_package)
>> failed with exit code '1'
>>
>>
>> pe 7. jouluk. 2018 klo 12.10 Burton, Ross (ross.burton@intel.com)
>> kirjoitti:
>>
>>> On Fri, 7 Dec 2018 at 09:42, matti kaasinen <matti.kaasinen@gmail.com>
>>> wrote:
>>> > My build stops while packaging nspr-4.16-r0 do_package while executing
>>> split_and_strip_files.
>>> > I try now building Poky based image using docker container
>>> (crops/poky). I already had to add HOSTTOOLS_append = " svn " to get SRCREV
>>> = "${AUTOREV}" statement work that I did not need in direct PC installation.
>>>
>>> You'll have to tell us what the actual error is if you want any help.
>>>
>>> Ross
>>>
>>

--000000000000e5c17e057ca96e52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Previous message was not correct. Do_populate_sysroot does=
 not produce package directory. Instead, I get zero return code while runni=
ng this &quot;cmd&quot; manually after crashed do_package.<br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">ma 10. jouluk. 2018 klo 9.50 matti=
 kaasinen (<a href=3D"mailto:matti.kaasinen@gmail.com">matti.kaasinen@gmail=
.com</a>) kirjoitti:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">I tried executing tasks until the crash. Last task th=
at did not crash seemed to be do_populate_sysroot. Then I executed the comm=
and reported on the first ERROR message line. It returned zero return value=
. I executed it also in pieces. For example find command without -delete op=
tion did not find any symbolic links.<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">pe 7. jouluk. 2018 klo 12.42 matti kaasinen (<a href=3D=
"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen@gmail.co=
m</a>) kirjoitti:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div dir=3D"ltr"><div>These are the error messages retur=
ned:</div><div>ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup faile=
d with exit code 2 (cmd was find /BUILD/work/cortexa7hf-neon-poky-linux-gnu=
eabi/nspr/4.16-r0/package/usr/src/debug -type l -print0 -delete | sed s#/BU=
ILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/de=
bug/##g | (cd &#39;/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi&#39; ; cp=
io -pd0mL --no-preserve-owner &#39;/BUILD/work/cortexa7hf-neon-poky-linux-g=
nueabi/nspr/4.16-r0/package/usr/src/debug&#39; 2&gt;/dev/null))<br>ERROR: n=
spr-4.16-r0 do_package: Function failed: split_and_strip_files<br>ERROR: Lo=
gfile of failure stored in: /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/=
nspr/4.16-r0/temp/log.do_package.29429<br>ERROR: Task (/workdir/sources/pok=
y/meta/recipes-support/nspr/nspr_4.16.bb:do_package) failed with exit code =
&#39;1&#39;<br><br></div></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr">pe 7. jouluk. 2018 klo 12.10 Burton, Ross (<a href=3D"mailto:ross=
.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>) kirjoitti:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, 7 Dec 20=
18 at 09:42, matti kaasinen &lt;<a href=3D"mailto:matti.kaasinen@gmail.com"=
 target=3D"_blank">matti.kaasinen@gmail.com</a>&gt; wrote:<br>
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

--000000000000e5c17e057ca96e52--
