Return-Path: <vsailub4u@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BCCC4C80479
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 08:24:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so1245289pvg.35
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 06:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=ZQPEwu8A57FRomzlS5n44dD4bdT1hDb6UaYkOSreb4Q=;
	b=dOz8umq97WvZ86XecMm6aYwOQLW1xOZSEmZ8ZI7WCatQYZdnEMz8yASswzvn/ghtWO
	fHWkxnbU+YAvgqSDVHnq/58KxhFWPx5o3t5XCRkGs5G0p/jHBVmDXGYwnRf6oyxS7IDt
	LWoLgQ6Wsdr7ivrv6T7HsQQmh+1J/7+SQU4Q0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=gDYZWVYoxlSg06WcnXDFmLQNCxXkcbFJzFhoWKWY/EiAjObaiRzwZfR3AQadewK8tL
	hct1U5DttNiBrJ52TLnes76NrqF6noBRsYW830uTildx+nt1G4XtsE7MDTPYyQ8J5t9P
	EEhHFRtNVLHLt4HLit9xY5gWfLe6eEtVULhOU=
MIME-Version: 1.0
Received: by 10.142.47.2 with SMTP id u2mr6475611wfu.63.1299075889073; Wed, 02
	Mar 2011 06:24:49 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Wed, 2 Mar 2011 06:24:49 -0800 (PST)
In-Reply-To: <1299066337.26736.10252.camel@rex>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>
	<1299066337.26736.10252.camel@rex>
Date: Wed, 2 Mar 2011 19:54:49 +0530
Message-ID: <AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"Lu, Lianhao" <lianhao.lu@intel.com>, "Tian,
	Kevin" <kevin.tian@intel.com>, poky@yoctoproject.org
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
X-List-Received-Date: Wed, 02 Mar 2011 14:24:49 -0000
Content-Type: multipart/alternative; boundary=000e0cd17e4ce78dc8049d80ac4c

--000e0cd17e4ce78dc8049d80ac4c
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I came to know with other contacts, building poky with its own krb5 package,
there were no issues.
But if we copied that krb5 package from openembedded, it showed the errors.
Please tell me Why is it so happening?
Please help me  and fixing the problem

Thanks & Regards,
Sai



On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:
> > Hi Lianhao,
> >
> > There are krb5-dev-1.6.3-r6.core2.rpm and krb5-dbg-1.6.3-r6.core2.rpm
> > in
>  /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
> > But  there is no specific rpm on krb5 like  krb5-1.6.3-r6.rpm.
> >
> > Again its showing an error as follows:
>
> This probably means the contents of the krb5 package was empty and it
> didn't build the package.
>
> > I am facing the same problem with some more packages like xcb-proto
>
> The contents of xcb-proto *is* empty since its just development headers
> and they end up in the xcb-proto-dev package.
>
> Cheers,
>
> Richard
>
>
>

--000e0cd17e4ce78dc8049d80ac4c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br>Hi,<br><br>I came to know with other contacts, building poky with its o=
wn krb5 package, there were no issues.<br>But if we copied that krb5 packag=
e from openembedded, it showed the errors.<br>Please tell me Why is it so h=
appening?<br>
Please help me=A0 and fixing the problem<br><br>Thanks &amp; Regards,<br>Sa=
i<br><br><br><div class=3D"gmail_quote"><br><blockquote class=3D"gmail_quot=
e" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">
<div class=3D"im">On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:<br>
&gt; Hi Lianhao,<br>
&gt;<br>
&gt; There are krb5-dev-1.6.3-r6.core2.rpm and krb5-dbg-1.6.3-r6.core2.rpm<=
br>
&gt; in =A0/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1=
.6.3-r6/deploy-rpms.<br>
&gt; But =A0there is no specific rpm on krb5 like =A0krb5-1.6.3-r6.rpm.<br>
&gt;<br>
&gt; Again its showing an error as follows:<br>
<br>
</div>This probably means the contents of the krb5 package was empty and it=
<br>
didn&#39;t build the package.<br>
<div class=3D"im"><br>
&gt; I am facing the same problem with some more packages like xcb-proto<br=
>
<br>
</div>The contents of xcb-proto *is* empty since its just development heade=
rs<br>
and they end up in the xcb-proto-dev package.<br>
<br>
Cheers,<br>
<font color=3D"#888888"><br>
Richard<br>
<br>
<br>
</font></blockquote></div><br>

--000e0cd17e4ce78dc8049d80ac4c--
