Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E16B94C8009A
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 23:18:31 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so40351pzk.35
	for <poky@yoctoproject.org>; Tue, 08 Mar 2011 21:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type;
	bh=cZ6jVIO3Qk42/INpCHbn4Tcz/lZn06n+SBr3nf9IYyo=;
	b=vKc/uaRqqaD1jLSZewH3vbsISYcaQCVICAVdcnpMWLHXPLzGZviXl/iOx4wUclqoBw
	stvRu29f5QASIFv0O5TKEKqruCTqUmKD9sxEbgMJEYgxhjf49dtYCRD3K3Mi9GvWVo1X
	30+xO0blHUc9uWbfvexpyQ0gD9k6wWFI61Ogk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	b=R3/7EjhNsKjzPvXtnNqcFc3TCTgtv4ui91yK56WUaDVNXaqSYpmOCx3wMT6CYK0MkD
	9c39KYAn2dK1Ul4zv/KTzVprQX3lsE2m1TTzyrFPS3SP9oiiFOUVL/qYUUpuGQAlbUXx
	KgCFHN6hYPYDvoFSPA0dKvo0IWHc5xRUC1NNA=
Received: by 10.142.71.1 with SMTP id t1mr5055335wfa.421.1299647911400;
	Tue, 08 Mar 2011 21:18:31 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id d35sm1920372wfj.21.2011.03.08.21.18.27
	(version=SSLv3 cipher=OTHER); Tue, 08 Mar 2011 21:18:30 -0800 (PST)
Message-ID: <4D770DA0.2050007@gmail.com>
Date: Wed, 09 Mar 2011 10:48:24 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110207 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>	<1299066337.26736.10252.camel@rex>	<AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>	<4D6E56EB.1030805@windriver.com>	<AANLkTinie6zPEtXgaRAj31XEOmPYdiiA909oPvorGVAB@mail.gmail.com>
	<AANLkTi=dosgVjmu_OOXz5jpYFGUe9Rbwic-G1bVQUG5u@mail.gmail.com>
In-Reply-To: <AANLkTi=dosgVjmu_OOXz5jpYFGUe9Rbwic-G1bVQUG5u@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 Mar 2011 05:18:32 -0000
Content-Type: multipart/alternative;
	boundary="------------070600010704060803040807"

--------------070600010704060803040807
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am also getting the same problem.
As per my understanding openembedded recipe should work on poky, but it 
not happening.
Can some one guide how to deal with it.

Thanks
Yogesh

On Wednesday 09 March 2011 10:29 AM, v sailaja wrote:
> Hi,
>
> I have a dependence of krb5 package, so pulled it for openembedded to 
> poky.
> While build krb5 package I got error /"Unable to find krb5 package"/ , 
> as poky is not creating RPM package for krb5.
>
> Here is my understanding, while starting krb5 recipe it pulls 
> /"krb5-1.9-signed.tar"
> /After extracting /"krb5-1.9-signed.tar" /we got two files 
> /"krb5-1.9.tar.gz"/  and "/krb5-1.9.tar.gz.asc"/
> Then krb5 recipe  further extract /"krb5-1.9.tar.gz"/  to /"krb5-1.9"/.
> Now our source and other file related to building ( i.e Makefile, 
> configure, etc. ) krb5 is located at /"krb5-1.9/src" /
>
> Openembedded krb5 recipe installs this package at some unstandard 
> locations due to RPM file it not building.
>
> I am also attaching recipe for krb5 with this mail, can any one help 
> me to resolve this issue.
>
> Thanks & Regards
> Sai
>
>
>
>     Hi  Hatle,
>
>
>     I need to pull krb5 into poky. But *Krb5 rpm is not created* at
>     the build time.
>     its as stated below:
>
>     *Not creating empty RPM package for krb5.*
>
>     so that the rpm was not creating for krb5.
>     Please tell me what are the dependencies and How to resolve this
>     problem. I need to pull it into poky.
>     Your explanation gave me an idea on krb5.
>
>
>
>     Thanks & Regards,
>     SAI
>
>
>
>
>
>         > Hi,
>         >
>         > I came to know with other contacts, building poky with its
>         own krb5 package,
>         > there were no issues.
>         > But if we copied that krb5 package from openembedded, it
>         showed the errors.
>         > Please tell me Why is it so happening?
>         > Please help me  and fixing the problem
>
>         AFAIK, Poky doesn't have a krb5 recipe of it's own.
>
>         Before you dig into the krb5 package, why are you adding krb5
>         support to your
>         device?  Is there a specific reason or did it just show up as
>         a dependency for
>         something?  (Many times on the desktop, krb5 is provided by
>         default and gets
>         linked into all sorts of things..  but in an embedded
>         environment it's rarely
>         used as there is no reason to coordinate with a kerberos
>         server on user
>         identity.  If you decide kerberos support is NOT needed,
>         figure out where the
>         krb5 dependency is coming from and figure out if you can
>         remove it from the
>         package and/or recipe.)
>
>         (But if you do need krb5...) If you import it from
>         OpenEmbedded, something is
>         either wrong with the krb5 recipe -- not populating the base
>         "krb5" package --
>         or something is wrong with the software that is requiring krb5.
>
>         The first thing to do is look at the krb5 package and see if
>         any of the software
>         it has built belongs in a base krb5 package and isn't being
>         properly
>         installed.... fix the do_install rule to install the missing
>         components...
>
>         if there is no software to install into a krb5 package -- then
>         it appears to me
>         whatever is attempting to require the run-time dependency of
>         "krb5" is broken.
>         You should find the recipe that has the RDEPENDS and remove it
>         -- or change the
>         dependency to something more appropriate such a the krb5-libs.
>          (Note:  most of
>         the time there is no reason to manually state a RDEPENDS on a
>         -libs package,
>         because the system figured out run-time library dependencies
>         automatically --
>         only library usages where you can't automatically detect
>         things need RDEPENDS,
>         this is usually the case when things are dlopened.)
>
>         --Mark
>
>         > Thanks & Regards,
>         > Sai
>         >
>         >
>         >
>         >     On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:
>         > > Hi Lianhao,
>         > >
>         > > There are krb5-dev-1.6.3-r6.core2.rpm and
>         krb5-dbg-1.6.3-r6.core2.rpm
>         > > in
>         >    
>          /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
>         > > But  there is no specific rpm on krb5 like  krb5-1.6.3-r6.rpm.
>         > >
>         > > Again its showing an error as follows:
>         >
>         >     This probably means the contents of the krb5 package was
>         empty and it
>         >     didn't build the package.
>         >
>         > > I am facing the same problem with some more packages like
>         xcb-proto
>         >
>         >     The contents of xcb-proto *is* empty since its just
>         development headers
>         >     and they end up in the xcb-proto-dev package.
>         >
>         >     Cheers,
>         >
>         >     Richard
>         >
>         >
>         >
>         >
>         >
>         > _______________________________________________
>         > poky mailing list
>         > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>         > https://lists.yoctoproject.org/listinfo/poky
>
>
>
>
>
> -- 
> Thanks & Regards,
> SAI
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------070600010704060803040807
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    Hi,<br>
    <br>
    I am also getting the same problem.<br>
    As per my understanding openembedded recipe should work on poky, but
    it not happening. <br>
    Can some one guide how to deal with it.<br>
    <br>
    Thanks<br>
    Yogesh<br>
    <br>
    On Wednesday 09 March 2011 10:29 AM, v sailaja wrote:
    <blockquote
      cite="mid:AANLkTi=dosgVjmu_OOXz5jpYFGUe9Rbwic-G1bVQUG5u@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">Hi,<br>
        <br>
        I have a dependence of krb5 package, so pulled it for
        openembedded to poky. <br>
        While build krb5 package I got error <i>"Unable to find krb5
          package"</i> , as poky is not creating RPM package for krb5.<br>
        <br>
        Here is my understanding, while starting krb5 recipe it pulls <i>"krb5-1.9-signed.tar"
          <br>
        </i>After extracting <i>"krb5-1.9-signed.tar"&nbsp; </i>we got two
        files <i>"krb5-1.9.tar.gz"</i>&nbsp; and "<i>krb5-1.9.tar.gz.asc"</i><br>
        Then krb5 recipe&nbsp; further extract <i>"krb5-1.9.tar.gz"</i>&nbsp; to
        <i>"krb5-1.9"</i>.<br>
        Now our source and other file related to building ( i.e
        Makefile, configure, etc. ) krb5 is located at <i>"krb5-1.9/src"
        </i><br>
        <br>
        Openembedded krb5 recipe installs this package at some
        unstandard locations due to RPM file it not building.<br>
        <br>
        I am also attaching recipe for krb5 with this mail, can any one
        help me to resolve this issue.<br>
        <br>
        Thanks &amp; Regards <br>
        Sai<br>
        <br>
        <br>
        <br>
        <blockquote class="gmail_quote" style="margin: 0pt 0pt 0pt
          0.8ex; border-left: 1px solid rgb(204, 204, 204);
          padding-left: 1ex;">Hi&nbsp; Hatle,<br>
          <br>
          <br>
          I need to pull krb5 into poky. But <b>Krb5 rpm is not created</b>
          at the build time.<br>
          its as stated below:<br>
          <br>
          <b>Not creating empty RPM package for krb5.</b><br>
          <br>
          so that the rpm was not creating for krb5.<br>
          Please tell me what are the dependencies and How to resolve
          this problem. I need to pull it into poky.<br>
          Your explanation gave me an idea on krb5.<br>
          <br>
          <br>
          <br>
          Thanks &amp; Regards,<br>
          SAI
          <div>
            <div class="h5">
              <br>
              <br>
              <br>
              <br>
              <div class="gmail_quote">
                <div><br>
                  &nbsp;</div>
                <blockquote class="gmail_quote" style="margin: 0pt 0pt
                  0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204);
                  padding-left: 1ex;">
                  <div>
                    &gt; Hi,<br>
                    &gt;<br>
                    &gt; I came to know with other contacts, building
                    poky with its own krb5 package,<br>
                    &gt; there were no issues.<br>
                    &gt; But if we copied that krb5 package from
                    openembedded, it showed the errors.<br>
                    &gt; Please tell me Why is it so happening?<br>
                    &gt; Please help me &nbsp;and fixing the problem<br>
                    <br>
                  </div>
                  AFAIK, Poky doesn't have a krb5 recipe of it's own.<br>
                  <br>
                  Before you dig into the krb5 package, why are you
                  adding krb5 support to your<br>
                  device? &nbsp;Is there a specific reason or did it just
                  show up as a dependency for<br>
                  something? &nbsp;(Many times on the desktop, krb5 is
                  provided by default and gets<br>
                  linked into all sorts of things.. &nbsp;but in an embedded
                  environment it's rarely<br>
                  used as there is no reason to coordinate with a
                  kerberos server on user<br>
                  identity. &nbsp;If you decide kerberos support is NOT
                  needed, figure out where the<br>
                  krb5 dependency is coming from and figure out if you
                  can remove it from the<br>
                  package and/or recipe.)<br>
                  <br>
                  (But if you do need krb5...) If you import it from
                  OpenEmbedded, something is<br>
                  either wrong with the krb5 recipe -- not populating
                  the base "krb5" package --<br>
                  or something is wrong with the software that is
                  requiring krb5.<br>
                  <br>
                  The first thing to do is look at the krb5 package and
                  see if any of the software<br>
                  it has built belongs in a base krb5 package and isn't
                  being properly<br>
                  installed.... fix the do_install rule to install the
                  missing components...<br>
                  <br>
                  if there is no software to install into a krb5 package
                  -- then it appears to me<br>
                  whatever is attempting to require the run-time
                  dependency of "krb5" is broken.<br>
                  You should find the recipe that has the RDEPENDS and
                  remove it -- or change the<br>
                  dependency to something more appropriate such a the
                  krb5-libs. &nbsp;(Note: &nbsp;most of<br>
                  the time there is no reason to manually state a
                  RDEPENDS on a -libs package,<br>
                  because the system figured out run-time library
                  dependencies automatically --<br>
                  only library usages where you can't automatically
                  detect things need RDEPENDS,<br>
                  this is usually the case when things are dlopened.)<br>
                  <font color="#888888"><br>
                    --Mark<br>
                  </font>
                  <div><br>
                    &gt; Thanks &amp; Regards,<br>
                    &gt; Sai<br>
                    &gt;<br>
                    &gt;<br>
                    &gt;<br>
                    &gt; &nbsp; &nbsp; On Wed, 2011-03-02 at 17:05 +0530, v
                    sailaja wrote:<br>
                    &gt; &nbsp; &nbsp; &gt; Hi Lianhao,<br>
                    &gt; &nbsp; &nbsp; &gt;<br>
                    &gt; &nbsp; &nbsp; &gt; There are krb5-dev-1.6.3-r6.core2.rpm
                    and krb5-dbg-1.6.3-r6.core2.rpm<br>
                    &gt; &nbsp; &nbsp; &gt; in<br>
                    &gt; &nbsp; &nbsp;
&nbsp;/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.<br>
                    &gt; &nbsp; &nbsp; &gt; But &nbsp;there is no specific rpm on krb5
                    like &nbsp;krb5-1.6.3-r6.rpm.<br>
                    &gt; &nbsp; &nbsp; &gt;<br>
                    &gt; &nbsp; &nbsp; &gt; Again its showing an error as follows:<br>
                    &gt;<br>
                    &gt; &nbsp; &nbsp; This probably means the contents of the
                    krb5 package was empty and it<br>
                    &gt; &nbsp; &nbsp; didn't build the package.<br>
                    &gt;<br>
                    &gt; &nbsp; &nbsp; &gt; I am facing the same problem with some
                    more packages like xcb-proto<br>
                    &gt;<br>
                    &gt; &nbsp; &nbsp; The contents of xcb-proto *is* empty since
                    its just development headers<br>
                    &gt; &nbsp; &nbsp; and they end up in the xcb-proto-dev
                    package.<br>
                    &gt;<br>
                    &gt; &nbsp; &nbsp; Cheers,<br>
                    &gt;<br>
                    &gt; &nbsp; &nbsp; Richard<br>
                    &gt;<br>
                    &gt;<br>
                    &gt;<br>
                    &gt;<br>
                    &gt;<br>
                  </div>
                  <div>
                    <div>&gt;
                      _______________________________________________<br>
                      &gt; poky mailing list<br>
                      &gt; <a moz-do-not-send="true"
                        href="mailto:poky@yoctoproject.org"
                        target="_blank">poky@yoctoproject.org</a><br>
                      &gt; <a moz-do-not-send="true"
                        href="https://lists.yoctoproject.org/listinfo/poky"
                        target="_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
                      <br>
                    </div>
                  </div>
                </blockquote>
              </div>
              <br>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <br clear="all">
      <br>
      -- <br>
      Thanks &amp; Regards,<br>
      SAI<br>
      <br>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
<a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------070600010704060803040807--
