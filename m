Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 162CB4C80479
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 08:41:20 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p22EekPe014101
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 Mar 2011 06:40:46 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 2 Mar 2011 06:40:45 -0800
Message-ID: <4D6E56EB.1030805@windriver.com>
Date: Wed, 2 Mar 2011 08:40:43 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>	<1299066337.26736.10252.camel@rex>
	<AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
In-Reply-To: <AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
X-Originating-IP: [172.25.36.227]
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 02 Mar 2011 14:41:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 3/2/11 8:24 AM, v sailaja wrote:
> 
> Hi,
> 
> I came to know with other contacts, building poky with its own krb5 package,
> there were no issues.
> But if we copied that krb5 package from openembedded, it showed the errors.
> Please tell me Why is it so happening?
> Please help me  and fixing the problem

AFAIK, Poky doesn't have a krb5 recipe of it's own.

Before you dig into the krb5 package, why are you adding krb5 support to your
device?  Is there a specific reason or did it just show up as a dependency for
something?  (Many times on the desktop, krb5 is provided by default and gets
linked into all sorts of things..  but in an embedded environment it's rarely
used as there is no reason to coordinate with a kerberos server on user
identity.  If you decide kerberos support is NOT needed, figure out where the
krb5 dependency is coming from and figure out if you can remove it from the
package and/or recipe.)

(But if you do need krb5...) If you import it from OpenEmbedded, something is
either wrong with the krb5 recipe -- not populating the base "krb5" package --
or something is wrong with the software that is requiring krb5.

The first thing to do is look at the krb5 package and see if any of the software
it has built belongs in a base krb5 package and isn't being properly
installed.... fix the do_install rule to install the missing components...

if there is no software to install into a krb5 package -- then it appears to me
whatever is attempting to require the run-time dependency of "krb5" is broken.
You should find the recipe that has the RDEPENDS and remove it -- or change the
dependency to something more appropriate such a the krb5-libs.  (Note:  most of
the time there is no reason to manually state a RDEPENDS on a -libs package,
because the system figured out run-time library dependencies automatically --
only library usages where you can't automatically detect things need RDEPENDS,
this is usually the case when things are dlopened.)

--Mark

> Thanks & Regards,
> Sai
> 
> 
> 
>     On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:
>     > Hi Lianhao,
>     >
>     > There are krb5-dev-1.6.3-r6.core2.rpm and krb5-dbg-1.6.3-r6.core2.rpm
>     > in
>      /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
>     > But  there is no specific rpm on krb5 like  krb5-1.6.3-r6.rpm.
>     >
>     > Again its showing an error as follows:
> 
>     This probably means the contents of the krb5 package was empty and it
>     didn't build the package.
> 
>     > I am facing the same problem with some more packages like xcb-proto
> 
>     The contents of xcb-proto *is* empty since its just development headers
>     and they end up in the xcb-proto-dev package.
> 
>     Cheers,
> 
>     Richard
> 
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


