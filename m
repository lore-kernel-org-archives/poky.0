Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18769D44D49
	for <webhook@archiver.kernel.org>; Wed,  6 Nov 2024 10:49:16 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web11.43053.1730890151220475554
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Nov 2024 02:49:11 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=S9vDGtV3;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1730890149; x=1731494949; i=star@gmx.li;
	bh=O7jOfnkB2XeqxkzhCJtNGe0dZtKdndLNA4NUw4tEnGI=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=S9vDGtV3yag4G0cwQ2OkjJYjBC1jQ89mAXRdqNx8ZN8DVT8xh/XRyiLCfty4uYEH
	 iR4p6J2VmKa+x4uqaP+ysvBSBQndQE3JVZqHhVJsLschCov79ppG7iFtMhNLIaZ34
	 obR9pZpjf9LICjJbQ8Gd3IIx7oxd5JHzNHcCPljmlt+StPtQBsSYutXmTW4oBiKXF
	 w6FOQ+h3gEVTMSd5PC7cEjSoIAC/Z214MlSCCOH0tOAcmbTH1EeYKC/PfthGGFKfE
	 g1UFSgfqSz+9lF7Ze/hx9TcbFD+0vFkbcO1oi/XS4arFftIpLQidhPUzGldbysOgx
	 wjLwvVjEUB7mmb1CNg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([217.225.94.249]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N0XCw-1u51Xs3Rpc-00t3fU; Wed, 06
 Nov 2024 11:49:08 +0100
Date: Wed, 06 Nov 2024 11:49:07 +0100
From: star@gmx.li
To: bruce.ashfield@gmail.com,
 "Bruce Ashfield via lists.yoctoproject.org" <bruce.ashfield=gmail.com@lists.yoctoproject.org>
CC: poky@lists.yoctoproject.org
Subject: =?US-ASCII?Q?Re=3A_=5Bpoky=5D_One_recipe_for_fetch_a_bigger_r?=
 =?US-ASCII?Q?epo=2C_multiple_recipes_to_build_parts_of_it?=
User-Agent: K-9 Mail for Android
In-Reply-To: <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li> <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com> <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li> <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com> <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li> <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
Message-ID: <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary=----TC35A6D3FXW4NI0ORIQYXIOOQEZXLC
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:acqffMn+cgJUNjyGNGxbNnjuHyd8Z4SM5DxZH7OkOt3eo3q/oX0
 IQXGU9VN0xtDQ6TgevC+CcObpzVG8OqUDdQQOuH9vvF0LRa1owmd4A+qBFIWGIUcaQ0688a
 WqKpA6935oLuBg0VJ8P0a3LpKy1WQk19+aAfyNGY9LSMXfgNnqOTqQdlUFNlW6SdCgdp7DR
 Kuf93c84WotFbLn2mBhtg==
UI-OutboundReport: notjunk:1;M01:P0:O5cgsGt85xk=;HwBn/kpFXjvOaEqSQ6Toe2AOLtr
 g9Wd4g0HhYJIzHkjsGfX5XJxYKaukT/WGJTOjDpN28tkYhWqt7c4JP2Rxq/X8S5Dx8CG1wyMm
 OzmkMJJSSFAZkDDUIF6WJ4nz+LkryVo89obluldXn9yu2dGRwXZglgsaSsFozWMroFrN/pjlY
 AZrxQPIt/RxZuml6L8UFH72jnUCqO6zj5oL9Jspgrnj+CewMbvNQkoIY/F2Vq4B6aWNu/haPJ
 n7ZlDHLnpFFG1bOvvf3PQunmTs/DErYVK0op6FnzpR+9Z1DhM6IheqknaVO0Za99xQLzvSlpa
 URXk79r7QphbcgNG8PJkogO23i04FRWiQ5lK3EhYQk6iNv3gtIiIBeavAtv6CfGyH8mHD+XT0
 +tCBc8UbVCZKeL6dA17qu5j5hkcAG/oIkm0dCMKHvyXPVR3+Z5yVvWqNJonJJvR4JE0ajJnC+
 evOhui38MwXEpfFS7E2CITLClqZE5zeEarOLUq94aU6jo1gHydLgPS+Rmz8jmA4s7Im8nimh/
 lStXThDTQ/7AL3Tm+hO4j6qimXrcnS4wz1uupK5/SPyZvFUC0P3eU23l12y7ojfHefj+yr+QN
 OR8Ju/vrAChLUDYgoyF+odPiPMKn9am5LBs73iHkqxr5nQdkrgINN5a9aGETkV/ZOUxPnKCpX
 dp1XVUny65BqDgkSkQqR1qzx6Nt1m3WT2dgKY6GCWfTsM9hj798NG3zjtXAW8r/mRh6bD9Ttl
 s7cA37zUaEBR50XwefjwdPC7OgcTLpgT3rEuU7pFf/8VWlrqwXPCMrBveKlOuVvcY1bf079x2
 7KRRRBqpYBNoMQsrVMZqiRzw==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Nov 2024 10:49:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13479

------TC35A6D3FXW4NI0ORIQYXIOOQEZXLC
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Well, the idea with work-shared sounds good=2E But I didn't figure out what=
 param makes fetcher to checkout into work-shared?
Just modify $S doesn't help, it is checked out still to tmp/work/<my-arch>=
/my-fw/${TAG}+git${SRCPV}/git
To workaround that for the moment I create a link, but that doesn't work r=
eliable=2E

Recipe my-fw=2Ebb looks like:

SRC_URI =3D "gitsm://git@gitlab=2Exxxx=2Egit;protocol=3Dssh;branch=3D${BRA=
NCH_FW};tag=3D${TAG};lfs=3D0"
PV =3D "${TAG}+git${SRCPV}"

S =3D "${TMPDIR}/work-shared/${PN}-${TAG}"

do_configure () {
}

do_compile () {
}

do_install () {
rm -rf ${S}
ln -sf ${WORKDIR}/git ${S}

}

FILES:${PN}:append =3D " \
"


A recipe my-test using that and really creates a package that would be ins=
talled looks like that:


S =3D "${TMPDIR}/work-shared/my-fw-${TAG}/ "

RDEPENDS:${PN} =3D "net-snmp-lib-netsnmp net-snmp-lib-agent net-snmp-lib-m=
ibs"
RDEPENDS:${PN} +=3D "my-fw"

do_configure () {
}

do_compile () {
}

do_install:microzed-zynq7 () {
install -d ${D}/opt/lib
install -m 666 ${S}/lib/arm/release/yyyy=2Eso ${D}/opt/lib/
${TARGET_PREFIX}strip ${D}/opt/lib/yyyy=2Eso
}

But what not happened is, that calling bitbake my-test is causing to run b=
itbake my-fw before=2E=2E=2E=2E
You see, there are some open points=2E


Am 5=2E November 2024 14:17:36 MEZ schrieb "Bruce Ashfield via lists=2Eyoc=
toproject=2Eorg" <bruce=2Eashfield=3Dgmail=2Ecom@lists=2Eyoctoproject=2Eorg=
>:
>On Tue, Nov 5, 2024 at 7:48=E2=80=AFAM Steve via lists=2Eyoctoproject=2Eo=
rg <star=3D
>gmx=2Eli@lists=2Eyoctoproject=2Eorg> wrote:
>
>> On 11/5/24 13:06, Alexander Kanavin via lists=2Eyoctoproject=2Eorg wrot=
e:
>> > On Tue, 5 Nov 2024 at 13:01, Steve via lists=2Eyoctoproject=2Eorg
>> > <star=3Dgmx=2Eli@lists=2Eyoctoproject=2Eorg> wrote:
>> >> well download may indeed happened just once, but isn't in each recip=
e
>> >> the git folder with it's complete content?
>> >> Maybe I described it misleading:
>> >> So it is not about download, but about the amount of storage needed =
for
>> >> each recipe=2E Assuming 10 recipes using same main repo, in each of =
the
>> >> =2E=2E/build/tmp/<recipe-name>/<tag>+gitAUTOINC+<git-hash>/git
>> >> I see the full checked out repo=2E
>> >
>> > If you want to use individual submodules, then the best would be
>> > probably to have an external script that determines SRCREV for each o=
f
>> > them from what is recorded in the parent repo, and writes that into
>> > recipes=2E
>> >
>> > Alex
>>
>> True - that is one way=2E
>> But that doesn't sound easy with external scripts=2E
>> And the approach to use one recipe for checkout and multiple recipes to
>> access this cloned git is more effective in terms of storage usage,
>> isn't it?
>> How a recipeB, C, =2E=2E=2E can know the path below - where the git-has=
 is the
>> unknown component in this case=2E
>> To workaround the path
>> =2E=2E/build/tmp/>arch>/<recipe-nameA>/<tag>+gitAUTOINC+<git-hash>/git
>>
>
>Have you looked at the work-shared technique we use for the kernel
>and gcc ?
>
>Bruce
>
>
>
>>
>> I guess an DEPENDS=3DrecipeA needs also be part of all recipes using it=
=2E
>> Well, the recipes B,C,D might need to evaluate that git-hash, but I
>> don't know how in a recipe=2E
>>
>> Thanks
>>
>>
>>=20
>>
>>
>
>--=20
>- Thou shalt not follow the NULL pointer, for chaos and madness await the=
e
>at its end
>- "Use the force Harry" - Gandalf, Star Trek II

------TC35A6D3FXW4NI0ORIQYXIOOQEZXLC
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Well, the idea with work-shared =
sounds good=2E But I didn't figure out what param makes fetcher to checkout=
 into work-shared?<br>Just modify $S doesn't help, it is checked out still =
to tmp/work/&lt;my-arch&gt;/my-fw/${TAG}+git${SRCPV}/git<br>To workaround t=
hat for the moment I create a link, but that doesn't work reliable=2E<br><b=
r>Recipe my-fw=2Ebb looks like:<br><br>SRC_URI =3D "gitsm://git@gitlab=2Exx=
xx=2Egit;protocol=3Dssh;branch=3D${BRANCH_FW};tag=3D${TAG};lfs=3D0"<br>PV =
=3D "${TAG}+git${SRCPV}"<br><br>S =3D "${TMPDIR}/work-shared/${PN}-${TAG}"<=
br><br>do_configure () {<br>}<br><br>do_compile () {<br>}<br><br>do_install=
 () {<br>rm -rf ${S}<br>ln -sf ${WORKDIR}/git ${S}<br><br>}<br><br>FILES:${=
PN}:append =3D " \<br>"<br><br><br>A recipe my-test using that and really c=
reates a package that would be installed looks like that:<br><br><br>S =3D =
"${TMPDIR}/work-shared/my-fw-${TAG}/ "<br><br>RDEPENDS:${PN} =3D "net-snmp-=
lib-netsnmp net-snmp-lib-agent net-snmp-lib-mibs"<br>RDEPENDS:${PN} +=3D "m=
y-fw"<br><br>do_configure () {<br>}<br><br>do_compile () {<br>}<br><br>do_i=
nstall:microzed-zynq7 () {<br>install -d ${D}/opt/lib<br>install -m 666 ${S=
}/lib/arm/release/yyyy=2Eso ${D}/opt/lib/<br>${TARGET_PREFIX}strip ${D}/opt=
/lib/yyyy=2Eso<br>}<br><br>But what not happened is, that calling bitbake m=
y-test is causing to run bitbake my-fw before=2E=2E=2E=2E<br>You see, there=
 are some open points=2E<br></div><br><br><div class=3D"gmail_quote"><div d=
ir=3D"auto">Am 5=2E November 2024 14:17:36 MEZ schrieb "Bruce Ashfield via =
lists=2Eyoctoproject=2Eorg" &lt;bruce=2Eashfield=3Dgmail=2Ecom@lists=2Eyoct=
oproject=2Eorg&gt;:</div><blockquote class=3D"gmail_quote" style=3D"margin:=
 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-le=
ft: 1ex;">
<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fo=
nt-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, Nov 5, 2024 at 7:48=E2=80=AFAM Steve via <=
a href=3D"http://lists=2Eyoctoproject=2Eorg">lists=2Eyoctoproject=2Eorg</a>=
 &lt;star=3D<a href=3D"mailto:gmx=2Eli@lists=2Eyoctoproject=2Eorg">gmx=2Eli=
@lists=2Eyoctoproject=2Eorg</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On 11/5/24 13:06, Alexander Kanavin via <a hre=
f=3D"http://lists=2Eyoctoproject=2Eorg" rel=3D"noreferrer" target=3D"_blank=
">lists=2Eyoctoproject=2Eorg</a> wrote:<br>
&gt; On Tue, 5 Nov 2024 at 13:01, Steve via <a href=3D"http://lists=2Eyoct=
oproject=2Eorg" rel=3D"noreferrer" target=3D"_blank">lists=2Eyoctoproject=
=2Eorg</a><br>
&gt; &lt;star=3D<a href=3D"mailto:gmx=2Eli@lists=2Eyoctoproject=2Eorg" tar=
get=3D"_blank">gmx=2Eli@lists=2Eyoctoproject=2Eorg</a>&gt; wrote:<br>
&gt;&gt; well download may indeed happened just once, but isn't in each re=
cipe<br>
&gt;&gt; the git folder with it's complete content?<br>
&gt;&gt; Maybe I described it misleading:<br>
&gt;&gt; So it is not about download, but about the amount of storage need=
ed for<br>
&gt;&gt; each recipe=2E Assuming 10 recipes using same main repo, in each =
of the<br>
&gt;&gt; =2E=2E/build/tmp/&lt;recipe-name&gt;/&lt;tag&gt;+gitAUTOINC+&lt;g=
it-hash&gt;/git<br>
&gt;&gt; I see the full checked out repo=2E<br>
&gt;<br>
&gt; If you want to use individual submodules, then the best would be<br>
&gt; probably to have an external script that determines SRCREV for each o=
f<br>
&gt; them from what is recorded in the parent repo, and writes that into<b=
r>
&gt; recipes=2E<br>
&gt;<br>
&gt; Alex<br>
<br>
True - that is one way=2E<br>
But that doesn't sound easy with external scripts=2E<br>
And the approach to use one recipe for checkout and multiple recipes to<br=
>
access this cloned git is more effective in terms of storage usage,<br>
isn't it?<br>
How a recipeB, C, =2E=2E=2E can know the path below - where the git-has is=
 the<br>
unknown component in this case=2E<br>
To workaround the path<br>
=2E=2E/build/tmp/&gt;arch&gt;/&lt;recipe-nameA&gt;/&lt;tag&gt;+gitAUTOINC+=
&lt;git-hash&gt;/git<br></blockquote><div><br></div><div><div class=3D"gmai=
l_default" style=3D"font-size:small">Have you looked at the work-shared tec=
hnique&nbsp;we use for the kernel</div><div class=3D"gmail_default" style=
=3D"font-size:small">and gcc ?</div><div class=3D"gmail_default" style=3D"f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:s=
mall">Bruce</div><br></div><div>&nbsp;</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
<br>
I guess an DEPENDS=3DrecipeA needs also be part of all recipes using it=2E=
<br>
Well, the recipes B,C,D might need to evaluate that git-hash, but I<br>
don't know how in a recipe=2E<br>
<br>
Thanks<br>
<br>
<br>
<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div></div>
</blockquote></div></body></html>
------TC35A6D3FXW4NI0ORIQYXIOOQEZXLC--

