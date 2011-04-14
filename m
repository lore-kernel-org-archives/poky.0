Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E94AB4C806DA
	for <poky@pokylinux.org>; Wed, 13 Apr 2011 22:25:40 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Apr 2011 20:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,208,1301900400"; d="scan'208";a="418894600"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by azsmga001.ch.intel.com with ESMTP; 13 Apr 2011 20:25:39 -0700
Message-ID: <4DA66931.9010009@intel.com>
Date: Thu, 14 Apr 2011 11:25:37 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <io2h0h$drr$1@dough.gmane.org>
In-Reply-To: <io2h0h$drr$1@dough.gmane.org>
Cc: poky@pokylinux.org
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
X-List-Received-Date: Thu, 14 Apr 2011 03:25:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

web is not used for a long time, maybe. Try web-webkit instead.

The build error comes from the interface mismatch.
        css->sheet = css_parser_parse_stylesheet (css->style,
                strlen (css->style), NULL, css->media);

gtkhtml2 defines it as following:
CssStylesheet *
css_parser_parse_stylesheet (const gchar *str, gint len)
,which is extended to accept extra base_url parameter in latest upstream 
(r1161).
 But still mismatch with calling from web:(




Robert Berger wrote:
>
> Hi,
>
> With the release tag bernard-5.0 I'm trying to bitbake web and get:
>
> OE Build Configuration:
> BB_VERSION        = "1.11.0"
> METADATA_BRANCH   = "bernard-5.0_LOCAL"
> METADATA_REVISION = "8b6416db1e04af83ecdf57522240ac859d5d8031"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.0"
> TARGET_FPU        = ""
>
> ...
>
> | web_gtkhtml2.c:525:3: error: too many arguments to function
> 'css_parser_parse_stylesheet'
>
> ...
>
> Is there a fix for this?
>
> Regards,
>
> Robert..."The pure and simple truth is rarely pure and never simple." -
> Oscar Wilde
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1 
> <http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

