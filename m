Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 456E4E00BC2; Thu, 15 Oct 2015 14:42:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8608E00B9E
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 14:42:42 -0700 (PDT)
Received: by igbhv6 with SMTP id hv6so956261igb.0
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 14:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=oipLFUTldVfxpMXYCXnsjAH4VWtihrgngQql5CoVKtU=;
	b=n4DSlU1SfU+iSEeULC+gdMRpqoXzNn57I2HGTXJuTFZNNs9S0y4R/j6Y15JaJ1yggE
	FgzTalb1uwR+hcyvUQngNni9PeEQpUWIR7wH30IyUPCEJv10XpHfQKjy5yyf27BTmKBl
	QZ3fvnufGE2hOSy3ry1zitBB6FmKKAdja3JTp/xQwr1uc5kAPMpD/LiZBiSVWEeRnAhl
	tlaHvTnDBChNPRCwQ59ojUQCdQqq+rItSOHtGqMQ4QGaqs43yJR1n9tpGoNj6bFtnbJ6
	q5Yr9DQWOq8a5KUIK8IvgFCsc0zbKVjl7+XijDdKJatDUWb/+8351JG+mxx36D5wmyG3
	zUZA==
X-Received: by 10.50.43.170 with SMTP id x10mr1432615igl.68.1444945361659;
	Thu, 15 Oct 2015 14:42:41 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.65.204 with HTTP; Thu, 15 Oct 2015 14:42:22 -0700 (PDT)
In-Reply-To: <56201CA1.1010506@webthatworks.it>
References: <561FD3FB.9080606@webthatworks.it>
	<2253318.UlfHrrQpEp@peggleto-mobl.ger.corp.intel.com>
	<56201CA1.1010506@webthatworks.it>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 15 Oct 2015 14:42:22 -0700
X-Google-Sender-Auth: EiZgyf-FGDdrWAMfiVVRbtepwT8
Message-ID: <CABcZAN=j2XWpw1M8=CDTt1bH7Sr1+YV23qg_xnFQjY9D2F18Ew@mail.gmail.com>
To: Ivan Sergio Borgonovo <mail@webthatworks.it>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [SOLVED]? Re: listing PACKAGES for a certain layer
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
X-List-Received-Date: Thu, 15 Oct 2015 21:42:44 -0000
Content-Type: multipart/alternative; boundary=089e01176cad0071b705222b8f09

--089e01176cad0071b705222b8f09
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 2:37 PM, Ivan Sergio Borgonovo <mail@webthatworks.it
> wrote:

> On 10/15/2015 09:28 PM, Paul Eggleton wrote:
>
>> Hi Ivan,
>>
>
> On Thursday 15 October 2015 18:27:39 Ivan Sergio Borgonovo wrote:
>>
>>> Is there a way to list packages provided by a certain layer/recipe?
>>>
>>
> Not layer, but you can get a bunch of info out of oe-pkgdata-util after
>> recipes have been built - e.g. once the connman recipe has built you can
>> run:
>>
>
> Do you mean I have to compile the package?
>
> But probably solved in a different way:
>
> get a list of targets from
> bitbake-layers show-recipes | grep -B1 '[layer]'
>
> join them with
>
> bitbake -e [target] | grep 'PACKAGES='
>
> there are still some packages coming from PACKAGES_DYNAMIC=
> I'm not sure if I'm missing something else.
>
> I'm going to write some shell script that will make things easier after I
> get a better understanding of PACKAGES_DYNAMIC.
>
>
> This should be the equivalent of
> aptitude search '?source-package([package])'
>
> $ oe-pkgdata-util list-pkgs -p connman
>> connman-tools
>> connman-tests
>> connman-client
>> connman-dbg
>> connman-dev
>> connman-doc
>> connman
>>
>
> and this is similar (not equal) to:
> apt-file find [package]
>
> $ oe-pkgdata-util list-pkg-files connman
>> connman:
>>          /etc/dbus-1/system.d/connman.conf
>>          /etc/init.d/connman
>>          /usr/sbin/connmand
>>
>
> But debian tools relay on an index and don't need to build stuff.
>

https://github.com/kergoth/bb 's search subcommand may also be of use.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01176cad0071b705222b8f09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Oct 15, 2015 at 2:37 PM, Ivan Sergio Borgonovo <span dir=3D"ltr">&l=
t;<a href=3D"mailto:mail@webthatworks.it" target=3D"_blank">mail@webthatwor=
ks.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2=
1o" class=3D"a3s" style=3D"overflow:hidden">On 10/15/2015 09:28 PM, Paul Eg=
gleton wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Ivan,<br>
</blockquote>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Thursday 15 October 2015 18:27:39 Ivan Sergio Borgonovo wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Is there a way to list packages provided by a certain layer/recipe?<br>
</blockquote></blockquote>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Not layer, but you can get a bunch of info out of oe-pkgdata-util after<br>
recipes have been built - e.g. once the connman recipe has built you can ru=
n:<br>
</blockquote>
<br>
Do you mean I have to compile the package?<br>
<br>
But probably solved in a different way:<br>
<br>
get a list of targets from<br>
bitbake-layers show-recipes | grep -B1 &#39;[layer]&#39;<br>
<br>
join them with<br>
<br>
bitbake -e [target] | grep &#39;PACKAGES=3D&#39;<br>
<br>
there are still some packages coming from PACKAGES_DYNAMIC=3D<br>
I&#39;m not sure if I&#39;m missing something else.<br>
<br>
I&#39;m going to write some shell script that will make things easier after=
 I get a better understanding of PACKAGES_DYNAMIC.<br>
<br>
<br>
This should be the equivalent of<br>
aptitude search &#39;?source-package([package])&#39;<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
$ oe-pkgdata-util list-pkgs -p connman<br>
connman-tools<br>
connman-tests<br>
connman-client<br>
connman-dbg<br>
connman-dev<br>
connman-doc<br>
connman<br>
</blockquote>
<br>
and this is similar (not equal) to:<br>
apt-file find [package]<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
$ oe-pkgdata-util list-pkg-files connman<br>
connman:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/etc/dbus-1/system.d/connman.conf<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/etc/init.d/connman<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/usr/sbin/connmand<br>
</blockquote>
<br>
But debian tools relay on an index and don&#39;t need to build stuff.</div>=
</blockquote></div><br><a href=3D"https://github.com/kergoth/bb">https://gi=
thub.com/kergoth/bb</a> &#39;s search subcommand may also be of use.<br>-- =
<br><div class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth=
 dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tsl=
ib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--089e01176cad0071b705222b8f09--
