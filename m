Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E51D4C80479
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 08:35:32 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D9DFC16604FC; Wed,  2 Mar 2011 07:35:31 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id ED9AA16603CC;
	Wed,  2 Mar 2011 07:35:30 -0700 (MST)
Message-ID: <4D6E55B2.2000904@mlbassoc.com>
Date: Wed, 02 Mar 2011 07:35:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>	<1299066337.26736.10252.camel@rex>
	<AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
In-Reply-To: <AANLkTin8ceb5+qQc=_NK-wGMG8uEMQSw3M636LDw32cx@mail.gmail.com>
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
X-List-Received-Date: Wed, 02 Mar 2011 14:35:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/2011 07:24 AM, v sailaja wrote:
>
> Hi,
>
> I came to know with other contacts, building poky with its own krb5 package, there were no issues.

What package was that?  I don't see any krb5 packages of any kind in Poky.

> But if we copied that krb5 package from openembedded, it showed the errors.
> Please tell me Why is it so happening?
> Please help me  and fixing the problem

Most likely you need to update the OE recipe to not use do_stage()

>     On Wed, 2011-03-02 at 17:05 +0530, v sailaja wrote:
>     >  Hi Lianhao,
>     >
>     >  There are krb5-dev-1.6.3-r6.core2.rpm and krb5-dbg-1.6.3-r6.core2.rpm
>     >  in  /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
>     >  But  there is no specific rpm on krb5 like  krb5-1.6.3-r6.rpm.
>     >
>     >  Again its showing an error as follows:
>
>     This probably means the contents of the krb5 package was empty and it
>     didn't build the package.
>
>     >  I am facing the same problem with some more packages like xcb-proto
>
>     The contents of xcb-proto *is* empty since its just development headers
>     and they end up in the xcb-proto-dev package.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

