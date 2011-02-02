Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88D3A4C8008C
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 05:23:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12BPdHH001910; Wed, 2 Feb 2011 11:25:39 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 840gHfYithNv; Wed,  2 Feb 2011 11:25:39 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12BPVMT001907
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 2 Feb 2011 11:25:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D48B24D.8000201@windriver.com>
References: <9DA5872FEF993D41B7173F58FCF6BE9411BF2012@orsmsx504.amr.corp.intel.com>
	<4D48B24D.8000201@windriver.com>
Date: Wed, 02 Feb 2011 11:23:19 +0000
Message-ID: <1296645799.1544.2577.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: 3 versions of elfutils recipes in the poky master tree
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
X-List-Received-Date: Wed, 02 Feb 2011 11:23:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 19:24 -0600, Mark Hatle wrote:
> On 2/1/11 7:15 PM, Kamble, Nitin A wrote:
> > elfutils_0.148.bb 
> > 
> >                 this is the default currently being used.
> > 
> >                 LICENSE = "GPLv2 with exceptions"
> > 
> >  
> > 
> > elfutils_0.108.bb 
> > 
> >                 not being used currently
> > 
> >                 does not have LIC_CHKSUM_FILES
> > 
> >                 also compile fails
> > 
> >                 LICENSE = "OSL & GPLv2"
> > 
> >  
> > 
> > elfutils_0.89.bb
> > 
> >                 fetch fails
> > 
> >                 LICENSE = "OSL"
> > 
> 
> At one time the older versions were required for specific implementations of
> prelink and RPM.  This is no longer true.  I would suggest you remove the older
> versions, and as long as RPM and prelink continue to work (as expected), we're good.

I agree, we don't need those older versions any more as long as prelink,
rpm and other utils work correctly. I've pushed a patch into master
removing the older ones.

Cheers,

Richard



