Return-Path: <vsailub4u@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 592E34C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 23:38:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so354168pvg.35
	for <poky@yoctoproject.org>; Thu, 03 Mar 2011 21:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=cXX+FSaGMlRbzmWAhT0XbYTxmDyGMt75Msg+Rxbzt98=;
	b=DuwbSMnQZoOUZBVki2hMkNIF2K4v0CKTJcBF6fJwm3/RF3RVe+PEcKa7iZD0o7mZ+n
	EHqtWe9SXdmx6ejWN59Fuiv0geru4dnwYs3Tzcf6nMCxFse1EjEq6nC84T/VDrsNHl4V
	S/Zw5erbOZzW7OcRqo0HDqHt1X7MuxrpUlTFk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=RmhbOqUKKSMAHSG4AXIZjdF6+BOOFy3MCTTiRh0NQ37rjMqEI/GCVyiPmt7cY8PsmP
	womz52flRaq/KE7WmajVat8MZJEirExicXV4xvEg6wCJFNOqG51cNKAILAq92E0TKWXM
	cC0OZOAIRzdAQxEBlXH64cEfkyI8yImP6mYTE=
MIME-Version: 1.0
Received: by 10.142.201.17 with SMTP id y17mr212150wff.335.1299217114394; Thu,
	03 Mar 2011 21:38:34 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Thu, 3 Mar 2011 21:38:34 -0800 (PST)
In-Reply-To: <4D6E56EB.1030805@windriver.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>
	<1299066337.26736.10252.camel@rex>
	<AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
	<4D6E56EB.1030805@windriver.com>
Date: Fri, 4 Mar 2011 11:08:34 +0530
Message-ID: <AANLkTinie6zPEtXgaRAj31XEOmPYdiiA909oPvorGVAB@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, poky@yoctoproject.org
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
X-List-Received-Date: Fri, 04 Mar 2011 05:38:35 -0000
Content-Type: multipart/alternative; boundary=000e0cd32e5696f2fc049da18e6d

--000e0cd32e5696f2fc049da18e6d
Content-Type: text/plain; charset=ISO-8859-1

Hi  Hatle,


I need to pull krb5 into poky. But *Krb5 rpm is not created* at the build
time.
its as stated below:

*Not creating empty RPM package for krb5.*

so that the rpm was not creating for krb5.
Please tell me what are the dependencies and How to resolve this problem. I
need to pull it into poky.
Your explanation gave me an idea on krb5.



Thanks & Regards,
SAI






> > Hi,
> >
> > I came to know with other contacts, building poky with its own krb5
> package,
> > there were no issues.
> > But if we copied that krb5 package from openembedded, it showed the
> errors.
> > Please tell me Why is it so happening?
> > Please help me  and fixing the problem
>
> AFAIK, Poky doesn't have a krb5 recipe of it's own.
>
> Before you dig into the krb5 package, why are you adding krb5 support to
> your
> device?  Is there a specific reason or did it just show up as a dependency
> for
> something?  (Many times on the desktop, krb5 is provided by default and
> gets
> linked into all sorts of things..  but in an embedded environment it's
> rarely
> used as there is no reason to coordinate with a kerberos server on user
> identity.  If you decide kerberos support is NOT needed, figure out where
> the
> krb5 dependency is coming from and figure out if you can remove it from the
> package and/or recipe.)
>
> (But if you do need krb5...) If you import it from OpenEmbedded, something
> is
> either wrong with the krb5 recipe -- not populating the base "krb5" package
> --
> or something is wrong with the software that is requiring krb5.
>
> The first thing to do is look at the krb5 package and see if any of the
> software
> it has built belongs in a base krb5 package and isn't being properly
> installed.... fix the do_install rule to install the missing components...
>
> if there is no software to install into a krb5 package -- then it appears
> to me
> whatever is attempting to require the run-time dependency of "krb5" is
> broken.
> You should find the recipe that has the RDEPENDS and remove it -- or change
> the
> dependency to something more appropriate such a the krb5-libs.  (Note:
>  most of
> the time there is no reason to manually state a RDEPENDS on a -libs
> package,
> because the system figured out run-time library dependencies automatically
> --
> only library usages where you can't automatically detect things need
> RDEPENDS,
> this is usually the case when things are dlopened.)
>
> --Mark
>
> > Thanks & Regards,
> > Sai
> >
> >
> >
> >     On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:
> >     > Hi Lianhao,
> >     >
> >     > There are krb5-dev-1.6.3-r6.core2.rpm and
> krb5-dbg-1.6.3-r6.core2.rpm
> >     > in
> >
>  /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
> >     > But  there is no specific rpm on krb5 like  krb5-1.6.3-r6.rpm.
> >     >
> >     > Again its showing an error as follows:
> >
> >     This probably means the contents of the krb5 package was empty and it
> >     didn't build the package.
> >
> >     > I am facing the same problem with some more packages like xcb-proto
> >
> >     The contents of xcb-proto *is* empty since its just development
> headers
> >     and they end up in the xcb-proto-dev package.
> >
> >     Cheers,
> >
> >     Richard
> >
> >
> >
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
>

--000e0cd32e5696f2fc049da18e6d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi=A0 Hatle,<br><br><br>I need to pull krb5 into poky. But <b>Krb5 rpm is n=
ot created</b> at the build time.<br>its as stated below:<br><br><b>Not cre=
ating empty RPM package for krb5.</b><br><br>so that the rpm was not creati=
ng for krb5.<br>
Please tell me what are the dependencies and How to resolve this problem. I=
 need to pull it into poky.<br>Your explanation gave me an idea on krb5.<br=
><br><br><br>Thanks &amp; Regards,<br>SAI<br><br><br><br><div class=3D"gmai=
l_quote">
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

--000e0cd32e5696f2fc049da18e6d--
