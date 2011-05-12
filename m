Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC6864C810B1
	for <poky@pokylinux.org>; Thu, 12 May 2011 16:44:57 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0F1931660091; Thu, 12 May 2011 15:44:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id C24C916601B1;
	Thu, 12 May 2011 15:44:21 -0600 (MDT)
Message-ID: <4DCC54B5.9060309@mlbassoc.com>
Date: Thu, 12 May 2011 15:44:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iqessi$mok$1@dough.gmane.org>
	<4DCB16BC.4040205@linux.intel.com>	<1305192197.30391.490.camel@rex>
	<iqhk07$fpf$1@dough.gmane.org>
In-Reply-To: <iqhk07$fpf$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: No rootfs for beagleboard after bernard 5.0
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
X-List-Received-Date: Thu, 12 May 2011 21:44:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 03:38 PM, Robert Berger wrote:
> Hi Darren/Richard,
>
> Thanks for the hints.
> ... but the problem is even more interesting.
> For some strange reason I can't get a valid .tar.bz from the URL which
> is in the recipe.
>
> What helped was to grab it from somewhere else:
>
> diff --git a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> index b6b7b78..f5ae761 100644
> --- a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> +++ b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> @@ -11,7 +11,7 @@ RRECOMMENDS_${PN} = "avahi-daemon"
>
>   # Upstream change this patch periodically so store locally
>   # http://0pointer.de/public/distcc-avahi.patch
> -SRC_URI = "http://distcc.samba.org/ftp/distcc/distcc-${PV}.tar.bz2 \
> +SRC_URI =
> "ftp://ftp.slackware.at/slackware-10.2/source/d/distcc/distcc-${PV}.tar.bz2\
>              file://distcc-avahi.patch;patch=1 \
>             file://default \
>             file://distccmon-gnome.desktop \

Indeed, the samba.org URL is no good:

$ wget http://distcc.samba.org/ftp/distcc/distcc-2.18.3.tar.bz2
--2011-05-12 15:42:03--  http://distcc.samba.org/ftp/distcc/distcc-2.18.3.tar.bz2
Resolving distcc.samba.org... 2001:470:1f05:1a07::1, 216.83.154.106
Connecting to distcc.samba.org|2001:470:1f05:1a07::1|:80... failed: Connection refused.
Connecting to distcc.samba.org|216.83.154.106|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: http://www.distcc.org/ [following]
--2011-05-12 15:42:04--  http://www.distcc.org/
Resolving www.distcc.org... 64.202.189.170
Connecting to www.distcc.org|64.202.189.170|:80... connected.
HTTP request sent, awaiting response... 302 Found
Location: http://distcc.googlecode.com/ [following]
--2011-05-12 15:42:04--  http://distcc.googlecode.com/
Resolving distcc.googlecode.com... 74.125.95.82
Connecting to distcc.googlecode.com|74.125.95.82|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: http://code.google.com/p/distcc [following]
--2011-05-12 15:42:04--  http://code.google.com/p/distcc
Resolving code.google.com... 74.125.95.113, 74.125.95.138, 74.125.95.139, ...
Connecting to code.google.com|74.125.95.113|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

