Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 452CC4C808DE
	for <poky@pokylinux.org>; Mon, 18 Apr 2011 02:24:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Apr 2011 00:24:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,231,1301900400"; d="scan'208";a="421043608"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by azsmga001.ch.intel.com with ESMTP; 18 Apr 2011 00:24:27 -0700
Message-ID: <4DABE72B.8080009@intel.com>
Date: Mon, 18 Apr 2011 15:24:27 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <io2h0h$drr$1@dough.gmane.org> <1303105424.5518.40.camel@rex>
In-Reply-To: <1303105424.5518.40.camel@rex>
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: web_svn with yocto 1.0 broken
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
X-List-Received-Date: Mon, 18 Apr 2011 07:24:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Richard Purdie wrote:
>
> On Wed, 2011-04-13 at 00:42 +0300, Robert Berger wrote:
> >
> > ...
> >
> > | web_gtkhtml2.c:525:3: error: too many arguments to function
> > 'css_parser_parse_stylesheet'
> >
> > ...
> >
> > Is there a fix for this?
>
> I've pushed a fix into the web repository for that problem (r131).
>

RP,
Thanks for your fix.
Curious question, who's the current owner of the open-handed's project, 
if I have a fix or patch for upstreaming?

edwin

> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

