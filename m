Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BFFCE00C9F; Thu, 13 Dec 2018 06:14:42 -0800 (PST)
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
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 312F5E00870
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 06:14:41 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id h50so2151195ede.5
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 06:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=obsKMqfHpEXNDsqRd9rs71h14X1T0WEH7fmhTWykBT0=;
	b=DN9YKloSmBM8ptIIgacS7pJDbIXDsHXzM16rAlRNqQ6Tz1EAlHfvXUIxm0PjoQXIaH
	Pvb+Nsvic2XN45JD1mtjo6UtVNSibNq7TFGCcxoHQBmeK5t5DhWCjq8vtMqXaMNumc3m
	5I1zx/ZNSOCxfrsB0GEZjjI6VNlhhqJ61JyjjPJVmQLpqYbDc4AD0BElgVE86P2erAT4
	chES+QE/OoPpKB44n1mCdTvbA04fbPICCyJn6gSVaU+mxDM6/PeM2r+UMXd0qbnHUxCs
	Zz3r+EGiMe3LAB9dGOpZGzRTxqKbTSc28NQ+VtzVtOeCuyIauTnTPkjb7bpwtSLy1HaW
	lFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=obsKMqfHpEXNDsqRd9rs71h14X1T0WEH7fmhTWykBT0=;
	b=bmAVN5nk1eK9E+eOwsJquE6Q52ys3Gg/JNX9vNrHkjWnwVBUdTNXmmuCIIltk4WYLb
	DASDS0oaXRUQamKbpRfwVU1M95F/kvaN8KdC08VNQI25tRRRuCTnT6lKPg4We5EheXwI
	XuCv8jshwBkDlFZfzsgDhW2i3WJui2dbtPXbZB737job2sWna4WBo9nidxMUrjdBnsdS
	crttjdp+9ehj1Dwyp698+XV19xJuZ9D0WLD4Jb981b2khahUYvf4PpHxDGu5JGxpuBZU
	BO2qbt1MY8m/yGUHvwR5PQ6hJ99mNrwqFx9slsZqeMRJCezry3XefSwXQ9LNNWr/wkR2
	WVjg==
X-Gm-Message-State: AA+aEWZCBsmiEb6oCNh1Nh/Ly9Kd4o3egWevTcymwVECUvJ2NsDdI38F
	eBOoIaSaxl8ag9DAXmNJYHCtJw14NhVVUsEWkFMIqghS
X-Google-Smtp-Source: AFSGD/Vn1zlYLwDfDtqMfXE9/gxgOePmXgvWm0rv4wVDHc+yIxpVbegoggdIYegXkhBxsXCoy0xbjjVlCr/sFILFvyU=
X-Received: by 2002:a17:906:2e4f:: with SMTP id
	r15-v6mr16650144eji.198.1544710480228; 
	Thu, 13 Dec 2018 06:14:40 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
	<CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
	<CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
	<CADnUhn3Er1dR8rr4bDDHniRmFYnCr9h+33a64Hn8C+xLhmApWQ@mail.gmail.com>
In-Reply-To: <CADnUhn3Er1dR8rr4bDDHniRmFYnCr9h+33a64Hn8C+xLhmApWQ@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Thu, 13 Dec 2018 16:14:28 +0200
Message-ID: <CADnUhn0-GgH9=4ow4SV25b7etaKP19Eb3jH6HxL2-xm80yrkbw@mail.gmail.com>
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
X-List-Received-Date: Thu, 13 Dec 2018 14:14:42 -0000
Content-Type: multipart/alternative; boundary="0000000000007474eb057ce7ef16"

--0000000000007474eb057ce7ef16
Content-Type: text/plain; charset="UTF-8"

Ok, I just rose my hands halfway: Problem was that I had TMPDIR="/BUILD"
setting.
On the other hand, /BUILD was a symbolic link. BB class package.bbclass was
fiddling with symbolic links at the point where nspr build crashed. Most
likely it just corrupted this link. So, it had nothing to do with docker
installation.

This cleared out. However, I faced with a new problems that seems also
hitting to same bbclass. It seems that convention has changed since
Yocto/krogoth (now Rocko) how autotools handles .debug directory. Then I
just had statements:
FILES_pam-oath-dbg = "${libdir}/security/.debug"
FILES_pam-oath = "${libdir}/security"
Then I got both pam-oath and pam-oath-dbg. However, now I cant find a way
either to get QA error about .debug directory (without pam-oath-dbg line)
or not getting pam-oath (with pam-oath-dbg line).
Is there any reference handling this issue? I did not find any. Or should I
write a new question with proper title?

ti 11. jouluk. 2018 klo 9.12 matti kaasinen (matti.kaasinen@gmail.com)
kirjoitti:

> I tried running same command from devpyshell that that returns the error
> message, i.e. (retval, output) = oe.utils.getstatusoutput(cmd),
> cmd is the command that error message reports.
> This results to (retval, output) == (0, '0 blocks')
> Now I'm somewhat less and less impressed about docker performance. It
> seems that I have to rise my hands with this.
>
> ma 10. jouluk. 2018 klo 13.40 matti kaasinen (matti.kaasinen@gmail.com)
> kirjoitti:
>
>> Previous message was not correct. Do_populate_sysroot does not produce
>> package directory. Instead, I get zero return code while running this "cmd"
>> manually after crashed do_package.
>>
>> ma 10. jouluk. 2018 klo 9.50 matti kaasinen (matti.kaasinen@gmail.com)
>> kirjoitti:
>>
>>> I tried executing tasks until the crash. Last task that did not crash
>>> seemed to be do_populate_sysroot. Then I executed the command reported on
>>> the first ERROR message line. It returned zero return value. I executed it
>>> also in pieces. For example find command without -delete option did not
>>> find any symbolic links.
>>>
>>> pe 7. jouluk. 2018 klo 12.42 matti kaasinen (matti.kaasinen@gmail.com)
>>> kirjoitti:
>>>
>>>> These are the error messages returned:
>>>> ERROR: nspr-4.16-r0 do_package: debugsrc symlink fixup failed with exit
>>>> code 2 (cmd was find
>>>> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug
>>>> -type l -print0 -delete | sed
>>>> s#/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug/##g
>>>> | (cd '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi' ; cpio -pd0mL
>>>> --no-preserve-owner
>>>> '/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug'
>>>> 2>/dev/null))
>>>> ERROR: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
>>>> ERROR: Logfile of failure stored in:
>>>> /BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do_package.29429
>>>> ERROR: Task
>>>> (/workdir/sources/poky/meta/recipes-support/nspr/nspr_4.16.bb:do_package)
>>>> failed with exit code '1'
>>>>
>>>>
>>>> pe 7. jouluk. 2018 klo 12.10 Burton, Ross (ross.burton@intel.com)
>>>> kirjoitti:
>>>>
>>>>> On Fri, 7 Dec 2018 at 09:42, matti kaasinen <matti.kaasinen@gmail.com>
>>>>> wrote:
>>>>> > My build stops while packaging nspr-4.16-r0 do_package while
>>>>> executing split_and_strip_files.
>>>>> > I try now building Poky based image using docker container
>>>>> (crops/poky). I already had to add HOSTTOOLS_append = " svn " to get SRCREV
>>>>> = "${AUTOREV}" statement work that I did not need in direct PC installation.
>>>>>
>>>>> You'll have to tell us what the actual error is if you want any help.
>>>>>
>>>>> Ross
>>>>>
>>>>

--0000000000007474eb057ce7ef16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Ok, I just rose my =
hands halfway: Problem was that I had TMPDIR=3D&quot;/BUILD&quot; setting.<=
/div><div>On the other hand, /BUILD was a symbolic link. BB class package.b=
bclass was fiddling with symbolic links at the point where nspr build crash=
ed. Most likely it just corrupted this link. So, it had nothing to do with =
docker installation.</div><div><br></div><div>This cleared out. However, I =
faced with a new problems that seems also hitting to same bbclass. It seems=
 that convention has changed since Yocto/krogoth (now Rocko) how autotools =
handles .debug directory. Then I just had statements:</div><div>FILES_pam-o=
ath-dbg =3D &quot;${libdir}/security/.debug&quot;<br></div><div>FILES_pam-o=
ath =3D &quot;${libdir}/security&quot;</div><div>Then I got both pam-oath a=
nd pam-oath-dbg. However, now I cant find a way either to get QA error abou=
t .debug directory (without pam-oath-dbg line) or not getting pam-oath (wit=
h pam-oath-dbg line).</div><div>Is there any reference handling this issue?=
 I did not find any. Or should I write a new question with proper title?<br=
></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">ti=
 11. jouluk. 2018 klo 9.12 matti kaasinen (<a href=3D"mailto:matti.kaasinen=
@gmail.com">matti.kaasinen@gmail.com</a>) kirjoitti:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr">I tried running same command from devpyshell that that returns=
 the error message, i.e. (retval, output) =3D oe.utils.getstatusoutput(cmd)=
,</div><div>cmd is the command that error message reports.</div><div>This r=
esults to (retval, output) =3D=3D (0, &#39;0 blocks&#39;)</div><div>Now I&#=
39;m somewhat less and less impressed about docker performance. It seems th=
at I have to rise my hands with this.</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">ma 10. jouluk. 2018 klo 13.40 matti kaasinen (<=
a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen=
@gmail.com</a>) kirjoitti:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Previous message was not correct. Do_populate_s=
ysroot does not produce package directory. Instead, I get zero return code =
while running this &quot;cmd&quot; manually after crashed do_package.<br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr">ma 10. jouluk. 2018 klo=
 9.50 matti kaasinen (<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D=
"_blank">matti.kaasinen@gmail.com</a>) kirjoitti:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I tried executing tasks =
until the crash. Last task that did not crash seemed to be do_populate_sysr=
oot. Then I executed the command reported on the first ERROR message line. =
It returned zero return value. I executed it also in pieces. For example fi=
nd command without -delete option did not find any symbolic links.<br></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">pe 7. jouluk. 2018 klo 12.=
42 matti kaasinen (<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_b=
lank">matti.kaasinen@gmail.com</a>) kirjoitti:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>The=
se are the error messages returned:</div><div>ERROR: nspr-4.16-r0 do_packag=
e: debugsrc symlink fixup failed with exit code 2 (cmd was find /BUILD/work=
/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug -typ=
e l -print0 -delete | sed s#/BUILD/work/cortexa7hf-neon-poky-linux-gnueabi/=
nspr/4.16-r0/package/usr/src/debug/##g | (cd &#39;/BUILD/work/cortexa7hf-ne=
on-poky-linux-gnueabi&#39; ; cpio -pd0mL --no-preserve-owner &#39;/BUILD/wo=
rk/cortexa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/package/usr/src/debug&#3=
9; 2&gt;/dev/null))<br>ERROR: nspr-4.16-r0 do_package: Function failed: spl=
it_and_strip_files<br>ERROR: Logfile of failure stored in: /BUILD/work/cort=
exa7hf-neon-poky-linux-gnueabi/nspr/4.16-r0/temp/log.do_package.29429<br>ER=
ROR: Task (/workdir/sources/poky/meta/recipes-support/nspr/nspr_4.16.bb:do_=
package) failed with exit code &#39;1&#39;<br><br></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">pe 7. jouluk. 2018 klo 12.10 Burto=
n, Ross (<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>) kirjoitti:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Fri, 7 Dec 2018 at 09:42, matti kaasinen &lt;<a href=3D"m=
ailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen@gmail.com<=
/a>&gt; wrote:<br>
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
</blockquote></div>

--0000000000007474eb057ce7ef16--
