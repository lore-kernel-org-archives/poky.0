Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546084C81067
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:08:44 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EE39816603A6; Thu, 23 Dec 2010 07:08:43 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1404D1660296;
	Thu, 23 Dec 2010 07:08:43 -0700 (MST)
Message-ID: <4D1357EB.5070708@mlbassoc.com>
Date: Thu, 23 Dec 2010 07:08:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D10CB88.4040308@mlbassoc.com> <4D10D857.8080906@intel.com>	
	<4D10F862.5040302@mlbassoc.com>
	<1292966869.25087.6574.camel@rex> <4D112B68.10303@mlbassoc.com>
	<4D12108B.2040503@mlbassoc.com>
In-Reply-To: <4D12108B.2040503@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: Write-protect $DL_DIR
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
X-List-Received-Date: Thu, 23 Dec 2010 14:08:45 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2010 07:51 AM, Gary Thomas wrote:
> On 12/21/2010 03:34 PM, Gary Thomas wrote:
> ... snip
>>
>> I've tried your changes and they solve my problem well, thanks.
>>
>
> I have had a problem with this (after more testing). Originally,
> I had DL_DIR="/work/misc/Poky/sources/", using it somewhat like
> a mirror. With your changes yesterday, I added these lines to
> my distro.conf:
>
> # Provide pre-staged sources
> PREMIRRORS_append = "\
> bzr://.*/.* file:///work/misc/Poky/sources/ \n \
> cvs://.*/.* file:///work/misc/Poky/sources/ \n \
> git://.*/.* file:///work/misc/Poky/sources/ \n \
> hg://.*/.* file:///work/misc/Poky/sources/ \n \
> osc://.*/.* file:///work/misc/Poky/sources/ \n \
> p4://.*/.* file:///work/misc/Poky/sources/ \n \
> svk://.*/.* file:///work/misc/Poky/sources/ \n \
> svn://.*/.* file:///work/misc/Poky/sources/ \n"
>
> MIRRORS_append = "\
> ftp://.*/.* file:///work/misc/Poky/sources/ \n \
> http://.*/.* file:///work/misc/Poky/sources/ \n \
> https://.*/.* file:///work/misc/Poky/sources/ \n"
>
> require conf/distro/include/my-fixed-revisions.inc
> require conf/distro/poky.conf
>
> I also disabled DL_DIR in local.conf, falling back to using
> "downloads" in my build tree (/work/local/new_p60).
>
> As you can see, my distro uses Poky as its base, just overriding
> and/or adding some features for our environment.
>
> With this setup, the build for gconf-dbus_svn fails in the
> unpack stage, with this error:
> NOTE: Unpacking /work/local/new_p60/downloads/trunk_developer.imendio.com_.svn.gconf-dbus_705_.tar.gz to
> /work/local/new_p60/tmp/work/armv7a-poky-linux-gnueabi/gconf-dbus-2.16.0+svnr705-r0/
> tar: /work/local/new_p60/downloads/trunk_developer.imendio.com_.svn.gconf-dbus_705_.tar.gz: Cannot open: No such file or directory
>
> Did I set this up incorrectly?

I've tracked down why this happens, but I've no idea how
to best fix it.

It seems that in bitbake/lib/bb/fetch/__init__.py, the PREMIRRORS
are used by the function go() to figure out where to find a file.
In the case of the SVN: URL used by the gconf-dbus_svn recipe,
this could be a staged tar file representing the SVN tree, which
does exist in my local mirror.  During the 'fetch' phase, all
works properly and fetch decides that the file is available
from the mirror as above.

The problem comes during unpack which is run as a separate step.
All the decisions about where to find the file that were computed
in fetch have been lost (new step, new context?) and unpack goes
looking for the file in downloads where it assumed fetch left it.
The confusion seems to only happen with URLs that need PREMIRROR
support.

Does this make any sense?


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

