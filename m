Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id E06264C800A3
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 22:59:57 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so38286pxi.28
	for <poky@yoctoproject.org>; Tue, 08 Mar 2011 20:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=HyWTN2nAmRArspGdB6vi8oP0FzBS9KCBedjTE7SwL94=;
	b=CNy2aFdRiAV7Pe57Q0tU/SdXGHru1cKLUhLpqMPo8cNRtSpmnZHwlBpIbu6gahwTjo
	EvoKMWGVdfb89HwIG5Wf37CAnDR79vTZA2U9Vp3a+61ba3BLVwqvnXWRFhLtygdH9nKM
	ZygM5slhAp5u4s88WHINP4dlrtBjadKuegCMI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=NKX22g/GZZ0sUU7nnVXSzS4fuE/ifc6bMuoaIEiimQ8MJ+NIfFTZs2xfjBum//yMt0
	aCEHhodUzGy3HDB2yDWFvtFPbCHFs17qL+o1adtsmX59QDFxjvc1RxPt2Z/2yRrwPUwL
	WnpWOulV/M3nyCWyNikRg/kUKFuc50kx1RcQI=
MIME-Version: 1.0
Received: by 10.142.195.11 with SMTP id s11mr5154464wff.50.1299646797266; Tue,
	08 Mar 2011 20:59:57 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Tue, 8 Mar 2011 20:59:57 -0800 (PST)
In-Reply-To: <AANLkTinie6zPEtXgaRAj31XEOmPYdiiA909oPvorGVAB@mail.gmail.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>
	<1299066337.26736.10252.camel@rex>
	<AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
	<4D6E56EB.1030805@windriver.com>
	<AANLkTinie6zPEtXgaRAj31XEOmPYdiiA909oPvorGVAB@mail.gmail.com>
Date: Wed, 9 Mar 2011 10:29:57 +0530
Message-ID: <AANLkTi=dosgVjmu_OOXz5jpYFGUe9Rbwic-G1bVQUG5u@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Re: got error while trying to pull the krb5 package into poky
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
X-List-Received-Date: Wed, 09 Mar 2011 04:59:58 -0000
X-Groupsio-MsgNum: 4321
Content-Type: multipart/mixed; boundary=000e0cd14642af4359049e0599d0

--000e0cd14642af4359049e0599d0
Content-Type: multipart/alternative; boundary=000e0cd14642af434f049e0599ce

--000e0cd14642af434f049e0599ce
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a dependence of krb5 package, so pulled it for openembedded to poky.
While build krb5 package I got error *"Unable to find krb5 package"* , as
poky is not creating RPM package for krb5.

Here is my understanding, while starting krb5 recipe it pulls
*"krb5-1.9-signed.tar"

*After extracting *"krb5-1.9-signed.tar"  *we got two files *
"krb5-1.9.tar.gz"*  and "*krb5-1.9.tar.gz.asc"*
Then krb5 recipe  further extract *"krb5-1.9.tar.gz"*  to *"krb5-1.9"*.
Now our source and other file related to building ( i.e Makefile, configure,
etc. ) krb5 is located at *"krb5-1.9/src" *

Openembedded krb5 recipe installs this package at some unstandard locations
due to RPM file it not building.

I am also attaching recipe for krb5 with this mail, can any one help me to
resolve this issue.

Thanks & Regards
Sai



Hi  Hatle,
>
>
> I need to pull krb5 into poky. But *Krb5 rpm is not created* at the build
> time.
> its as stated below:
>
> *Not creating empty RPM package for krb5.*
>
> so that the rpm was not creating for krb5.
> Please tell me what are the dependencies and How to resolve this problem. I
> need to pull it into poky.
> Your explanation gave me an idea on krb5.
>
>
>
> Thanks & Regards,
> SAI
>
>
>
>
>
>
>
>> > Hi,
>> >
>> > I came to know with other contacts, building poky with its own krb5
>> package,
>> > there were no issues.
>> > But if we copied that krb5 package from openembedded, it showed the
>> errors.
>> > Please tell me Why is it so happening?
>> > Please help me  and fixing the problem
>>
>> AFAIK, Poky doesn't have a krb5 recipe of it's own.
>>
>> Before you dig into the krb5 package, why are you adding krb5 support to
>> your
>> device?  Is there a specific reason or did it just show up as a dependency
>> for
>> something?  (Many times on the desktop, krb5 is provided by default and
>> gets
>> linked into all sorts of things..  but in an embedded environment it's
>> rarely
>> used as there is no reason to coordinate with a kerberos server on user
>> identity.  If you decide kerberos support is NOT needed, figure out where
>> the
>> krb5 dependency is coming from and figure out if you can remove it from
>> the
>> package and/or recipe.)
>>
>> (But if you do need krb5...) If you import it from OpenEmbedded, something
>> is
>> either wrong with the krb5 recipe -- not populating the base "krb5"
>> package --
>> or something is wrong with the software that is requiring krb5.
>>
>> The first thing to do is look at the krb5 package and see if any of the
>> software
>> it has built belongs in a base krb5 package and isn't being properly
>> installed.... fix the do_install rule to install the missing components...
>>
>> if there is no software to install into a krb5 package -- then it appears
>> to me
>> whatever is attempting to require the run-time dependency of "krb5" is
>> broken.
>> You should find the recipe that has the RDEPENDS and remove it -- or
>> change the
>> dependency to something more appropriate such a the krb5-libs.  (Note:
>>  most of
>> the time there is no reason to manually state a RDEPENDS on a -libs
>> package,
>> because the system figured out run-time library dependencies automatically
>> --
>> only library usages where you can't automatically detect things need
>> RDEPENDS,
>> this is usually the case when things are dlopened.)
>>
>> --Mark
>>
>> > Thanks & Regards,
>> > Sai
>> >
>> >
>> >
>> >     On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:
>> >     > Hi Lianhao,
>> >     >
>> >     > There are krb5-dev-1.6.3-r6.core2.rpm and
>> krb5-dbg-1.6.3-r6.core2.rpm
>> >     > in
>> >
>>  /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
>> >     > But  there is no specific rpm on krb5 like  krb5-1.6.3-r6.rpm.
>> >     >
>> >     > Again its showing an error as follows:
>> >
>> >     This probably means the contents of the krb5 package was empty and
>> it
>> >     didn't build the package.
>> >
>> >     > I am facing the same problem with some more packages like
>> xcb-proto
>> >
>> >     The contents of xcb-proto *is* empty since its just development
>> headers
>> >     and they end up in the xcb-proto-dev package.
>> >
>> >     Cheers,
>> >
>> >     Richard
>> >
>> >
>> >
>> >
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>>
>>
>


-- 
Thanks & Regards,
SAI

--000e0cd14642af434f049e0599ce
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">Hi,<br><br>I have a dependence of krb5 package, =
so pulled it for openembedded to poky. <br>While build krb5 package I got e=
rror <i>&quot;Unable to find krb5 package&quot;</i> , as poky is not creati=
ng RPM package for krb5.<br>
<br>Here is my understanding, while starting krb5 recipe it pulls <i>&quot;=
krb5-1.9-signed.tar&quot; <br></i>After extracting <i>&quot;krb5-1.9-signed=
.tar&quot;=A0 </i>we got two files <i>&quot;krb5-1.9.tar.gz&quot;</i>=A0 an=
d &quot;<i>krb5-1.9.tar.gz.asc&quot;</i><br>
Then krb5 recipe=A0 further extract <i>&quot;krb5-1.9.tar.gz&quot;</i>=A0 t=
o <i>&quot;krb5-1.9&quot;</i>.<br>Now our source and other file related to =
building ( i.e Makefile, configure, etc. ) krb5 is located at <i>&quot;krb5=
-1.9/src&quot; </i><br>
<br>Openembedded krb5 recipe installs this package at some unstandard locat=
ions due to RPM file it not building.<br><br>I am also attaching recipe for=
 krb5 with this mail, can any one help me to resolve this issue.<br><br>
Thanks &amp; Regards <br>Sai<br><br><br><br><blockquote class=3D"gmail_quot=
e" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">Hi=A0 Hatle,<br><br><br>I need to pull krb5 into=
 poky. But <b>Krb5 rpm is not created</b> at the build time.<br>
its as stated below:<br><br><b>Not creating empty RPM package for krb5.</b>=
<br><br>so that the rpm was not creating for krb5.<br>
Please tell me what are the dependencies and How to resolve this problem. I=
 need to pull it into poky.<br>Your explanation gave me an idea on krb5.<br=
><br><br><br>Thanks &amp; Regards,<br>SAI<div><div></div><div class=3D"h5">
<br><br><br><br><div class=3D"gmail_quote">
<div><br>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0p=
t 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"=
><div>
&gt; Hi,<br>
&gt;<br>
&gt; I came to know with other contacts, building poky with its own krb5 pa=
ckage,<br>
&gt; there were no issues.<br>
&gt; But if we copied that krb5 package from openembedded, it showed the er=
rors.<br>
&gt; Please tell me Why is it so happening?<br>
&gt; Please help me =A0and fixing the problem<br>
<br>
</div>AFAIK, Poky doesn&#39;t have a krb5 recipe of it&#39;s own.<br>
<br>
Before you dig into the krb5 package, why are you adding krb5 support to yo=
ur<br>
device? =A0Is there a specific reason or did it just show up as a dependenc=
y for<br>
something? =A0(Many times on the desktop, krb5 is provided by default and g=
ets<br>
linked into all sorts of things.. =A0but in an embedded environment it&#39;=
s rarely<br>
used as there is no reason to coordinate with a kerberos server on user<br>
identity. =A0If you decide kerberos support is NOT needed, figure out where=
 the<br>
krb5 dependency is coming from and figure out if you can remove it from the=
<br>
package and/or recipe.)<br>
<br>
(But if you do need krb5...) If you import it from OpenEmbedded, something =
is<br>
either wrong with the krb5 recipe -- not populating the base &quot;krb5&quo=
t; package --<br>
or something is wrong with the software that is requiring krb5.<br>
<br>
The first thing to do is look at the krb5 package and see if any of the sof=
tware<br>
it has built belongs in a base krb5 package and isn&#39;t being properly<br=
>
installed.... fix the do_install rule to install the missing components...<=
br>
<br>
if there is no software to install into a krb5 package -- then it appears t=
o me<br>
whatever is attempting to require the run-time dependency of &quot;krb5&quo=
t; is broken.<br>
You should find the recipe that has the RDEPENDS and remove it -- or change=
 the<br>
dependency to something more appropriate such a the krb5-libs. =A0(Note: =
=A0most of<br>
the time there is no reason to manually state a RDEPENDS on a -libs package=
,<br>
because the system figured out run-time library dependencies automatically =
--<br>
only library usages where you can&#39;t automatically detect things need RD=
EPENDS,<br>
this is usually the case when things are dlopened.)<br>
<font color=3D"#888888"><br>
--Mark<br>
</font><div><br>
&gt; Thanks &amp; Regards,<br>
&gt; Sai<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:<br>
&gt; =A0 =A0 &gt; Hi Lianhao,<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; There are krb5-dev-1.6.3-r6.core2.rpm and krb5-dbg-1.6.3-=
r6.core2.rpm<br>
&gt; =A0 =A0 &gt; in<br>
&gt; =A0 =A0 =A0/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/k=
rb5-1.6.3-r6/deploy-rpms.<br>
&gt; =A0 =A0 &gt; But =A0there is no specific rpm on krb5 like =A0krb5-1.6.=
3-r6.rpm.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; Again its showing an error as follows:<br>
&gt;<br>
&gt; =A0 =A0 This probably means the contents of the krb5 package was empty=
 and it<br>
&gt; =A0 =A0 didn&#39;t build the package.<br>
&gt;<br>
&gt; =A0 =A0 &gt; I am facing the same problem with some more packages like=
 xcb-proto<br>
&gt;<br>
&gt; =A0 =A0 The contents of xcb-proto *is* empty since its just developmen=
t headers<br>
&gt; =A0 =A0 and they end up in the xcb-proto-dev package.<br>
&gt;<br>
&gt; =A0 =A0 Cheers,<br>
&gt;<br>
&gt; =A0 =A0 Richard<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div><div><div></div><div>&gt; ___________________________________________=
____<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
</div></div></blockquote></div><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>Thanks &amp=
; Regards,<br>SAI<br><br>

--000e0cd14642af434f049e0599ce--

--000e0cd14642af4359049e0599d0
Content-Type: application/octet-stream; name="krb5_1.6.3.bb"
Content-Disposition: attachment; filename="krb5_1.6.3.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gl1s1tpx0

REVTQ1JJUFRJT04gPSAiQSBuZXR3b3JrIGF1dGhlbnRpY2F0aW9uIHByb3RvY29sIgpIT01FUEFH
RSA9ICJodHRwOi8vd2ViLm1pdC5lZHUvS2VyYmVyb3MvIgpTRUNUSU9OID0gImNvbnNvbGUvbmV0
d29yayIKUFIgPSAicjYiCkxJQ0VOU0UgPSAiTUlUIgpERVBFTkRTID0gInBlcmwtbmF0aXZlIG5j
dXJzZXMgdXRpbC1saW51eC1uZyBlMmZzcHJvZ3MtbmF0aXZlIgoKaW5oZXJpdCBhdXRvdG9vbHMg
YmluY29uZmlnCgojU1JDX1VSSSA9ICJnaXQ6Ly9naXQuc3JvYm8ub3JnL35qbW9yc2Uva2VyYmVy
b3MuZ2l0IFwKU1JDX1VSSSA9ICJodHRwOi8vd2ViLm1pdC5lZHUva2VyYmVyb3MvZGlzdC9rcmI1
LzEuNi9rcmI1LTEuNi4zLXNpZ25lZC50YXIgXAogICAgICAgICAgIGZpbGU6Ly9maXgtdWNsaWJj
LXJ1c2VycGFzcy1jb2xsaXNpb24ucGF0Y2g7YXBwbHk9bm8gXAogICAgICAgICAgIGZpbGU6Ly9j
b3B5cGVybXMucGF0Y2g7YXBwbHk9bm8iCgpTID0gIiR7d29ya2Rpcn0vJHtQTn0tJHtQVn0vc3Jj
LyIKCiMgV2lsbCBjbGVhbiB0aGlzIHVwLi4uCkVYVFJBX09FQ09ORiArPSAiIC0td2l0aG91dC10
Y2wga3JiNV9jdl9hdHRyX2NvbnN0cnVjdG9yX2Rlc3RydWN0b3I9eWVzIGFjX2N2X2Z1bmNfcmVn
Y29tcD15ZXMgXAogICAgICAgICAgICAgICAgICBhY19jdl9wcmludGZfcG9zaXRpb25hbD15ZXMg
YWNfY3ZfZmlsZV9fZXRjX2Vudmlyb25tZW50PXllcyBcCiAgICAgICAgICAgICAgICAgIGFjX2N2
X2ZpbGVfX2V0Y19USU1FWk9ORT1ubyAtLXdpdGgtc3lzdGVtLWV0IgpDRkxBR1NfYXBwZW5kICs9
ICItRERFU1RSVUNUT1JfQVRUUl9XT1JLUz0xIC1JJHtzdGFnaW5nX2luY2Rpcn0vZXQiCkxERkxB
R1NfYXBwZW5kICs9ICItbHB0aHJlYWQiCgpGSUxFU18ke1BOfS1kb2MgKz0gL3Vzci9zaGFyZS9l
eGFtcGxlcwoKa3JiNV9kb191bnBhY2soKSB7Cgl0YXIgeHpmICR7d29ya2Rpcn0va3JiNS0xLjYu
My50YXIuZ3ogLUMgJHt3b3JrZGlyfS8KCXBhdGNoIC1kICR7U30gLXAxIDwgJHt3b3JrZGlyfS9m
aXgtdWNsaWJjLXJ1c2VycGFzcy1jb2xsaXNpb24ucGF0Y2gKCXBhdGNoIC1kICR7U30gLXAxIDwg
JHt3b3JrZGlyfS9jb3B5cGVybXMucGF0Y2gKfQoKcHl0aG9uIGRvX3VucGFjaygpIHsKCWJiLmJ1
aWxkLmV4ZWNfZnVuYygnYmFzZV9kb191bnBhY2snLCBkKQoJYmIuYnVpbGQuZXhlY19mdW5jKCdr
cmI1X2RvX3VucGFjaycsIGQpCn0KCmRvX2NvbmZpZ3VyZSgpIHsKCW9lX3J1bmNvbmYKfQoKCmRv
X2luc3RhbGwoKSB7CglvZV9saWJpbnN0YWxsIC1zbyAtQyB1dGlsL3N1cHBvcnQgbGlia3JiNXN1
cHBvcnQgJHtzdGFnaW5nX2xpYmRpcn0KCW9lX2xpYmluc3RhbGwgLXNvIC1DIHV0aWwvZXQgbGli
Y29tX2VyciAke3N0YWdpbmdfbGliZGlyfQoJb2VfbGliaW5zdGFsbCAtc28gLUMgbGliL2NyeXB0
byBsaWJrNWNyeXB0byAke3N0YWdpbmdfbGliZGlyfQoJb2VfbGliaW5zdGFsbCAtc28gLUMgbGli
L2tyYjUgbGlia3JiNSAke3N0YWdpbmdfbGliZGlyfQoJb2VfbGliaW5zdGFsbCAtc28gLUMgbGli
L2RlczQyNSBsaWJkZXM0MjUgJHtzdGFnaW5nX2xpYmRpcn0KCW9lX2xpYmluc3RhbGwgLXNvIC1D
IGxpYi9rcmI0IGxpYmtyYjQgJHtzdGFnaW5nX2xpYmRpcn0KCW9lX2xpYmluc3RhbGwgLXNvIC1D
IGxpYi9nc3NhcGkgbGliZ3NzYXBpX2tyYjUgJHtzdGFnaW5nX2xpYmRpcn0KCW9lX2xpYmluc3Rh
bGwgLXNvIC1DIGxpYi9ycGMgbGliZ3NzcnBjICR7c3RhZ2luZ19saWJkaXJ9CglvZV9saWJpbnN0
YWxsIC1zbyAtQyBsaWIva2RiIGxpYmtkYjUgJHtzdGFnaW5nX2xpYmRpcn0KCW9lX2xpYmluc3Rh
bGwgLXNvIC1DIGxpYi9rYWRtNS9jbG50IGxpYmthZG01Y2xudCAke3N0YWdpbmdfbGliZGlyfQoJ
b2VfbGliaW5zdGFsbCAtc28gLUMgbGliL2thZG01L3NydiBsaWJrYWRtNXNydiAke3N0YWdpbmdf
bGliZGlyfQoKCWluc3RhbGwgLWQgJHtzdGFnaW5nX2luY2Rpcn0va3JiNQoJZm9yIFggaW4ga3Ji
NS5oIGxvY2F0ZV9wbHVnaW4uaAoJZG8KCQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9pbmNsdWRlL2ty
YjUvJFggJHtzdGFnaW5nX2luY2Rpcn0va3JiNS8kWAoJZG9uZQoKCWluc3RhbGwgLWQgJHtzdGFn
aW5nX2luY2Rpcn0vZ3NzYXBpCglmb3IgWCBpbiBnc3NhcGlfZ2VuZXJpYy5oIGdzc2FwaS5oIGdz
c2FwaV9rcmI1LmgKCWRvCgkJaW5zdGFsbCAtbSAwNjQ0ICR7U30vaW5jbHVkZS9nc3NhcGkvJFgg
JHtzdGFnaW5nX2luY2Rpcn0vZ3NzYXBpLyRYCglkb25lCglpbnN0YWxsIC1tIDA2NDQgJHtTfS9s
aWIvZ3NzYXBpL21lY2hnbHVlL21lY2hnbHVlLmggJHtzdGFnaW5nX2luY2Rpcn0vZ3NzYXBpL21l
Y2hnbHVlLmgKCglpbnN0YWxsIC1kICR7c3RhZ2luZ19pbmNkaXJ9L2tlcmJlcm9zSVYKCWZvciBY
IGluIGtyYi5oIGRlcy5oIG1pdC1jb3B5cmlnaHQuaCBrcmJfZXJyLmgga2FkbV9lcnIuaAoJZG8K
CQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9pbmNsdWRlL2tlcmJlcm9zSVYvJFggJHtzdGFnaW5nX2lu
Y2Rpcn0va2VyYmVyb3NJVi8kWAoJZG9uZQoKCWluc3RhbGwgLWQgJHtzdGFnaW5nX2luY2Rpcn0v
Z3NzcnBjCglmb3IgWCBpbiBhdXRoLmggYXV0aF9nc3MuaCBhdXRoX2dzc2FwaS5oIGF1dGhfdW5p
eC5oIGNsbnQuaCBuZXRkYi5oIHBtYXBfY2xudC5oIHBtYXBfcHJvdC5oIHBtYXBfcm10LmggcmVu
YW1lLmggcnBjLmggcnBjX21zZy5oIHN2Yy5oIHN2Y19hdXRoLmggeGRyLmggdHlwZXMuaAoJZG8K
CQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9pbmNsdWRlL2dzc3JwYy8kWCAke3N0YWdpbmdfaW5jZGly
fS9nc3NycGMvJFgKCWRvbmUKCgkjIGNvbV9lcnIuaCBuZWVkcyB0byBiZSBhZGRlZCBoZXJlIGlm
IHlvdSBjaG9vc2UgdG8gdXNlIHRoaXMgYnVpbHRpbgoJZm9yIFggaW4ga3JiNS5oIHByb2ZpbGUu
aCBnc3NhcGkuaAoJZG8KCQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9pbmNsdWRlLyRYICR7c3RhZ2lu
Z19pbmNkaXJ9LyRYCglkb25lCn0KClNSQ19VUklbbWQ1c3VtXSA9ICIyZGMxMzA3Njg2ZWIxYzJi
ZjFhYjA4ZWE4MDVkYWQ0NiIKU1JDX1VSSVtzaGEyNTZzdW1dID0gIjdhMWJkN2Q0YmQzMjY4Mjhj
OGVlMzgyZWQyYjY5Y2NkNmM1ODc2MjYwMWRmODk3ZDZhMzIxNjlkODQ1ODNkMmEiCg==

--000e0cd14642af4359049e0599d0--
