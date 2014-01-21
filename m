Return-Path: <laurentiu.palcu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A934E0087A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 01:48:18 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2014 01:48:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,695,1384329600"; d="scan'208";a="470001992"
Received: from lpalcu-mobl.ger.corp.intel.com (HELO lpalcu-linux)
	([10.237.105.45])
	by orsmga002.jf.intel.com with ESMTP; 21 Jan 2014 01:48:15 -0800
Date: Tue, 21 Jan 2014 11:48:13 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Roseville House <championoaks@gmail.com>
Message-ID: <20140121094813.GF7512@lpalcu-linux>
References: <CAOqG5mwi7Rcpe+Le5btBg8SKMf1WF4uLVzo3tmYc3C3UGhoMbA@mail.gmail.com>
	<20140121081128.GE7512@lpalcu-linux>
	<CAOqG5myC7zb_Bo1SrcDwULKkMOHYGJTX-tcXN-8bcczVbuQyYA@mail.gmail.com>
	<CAOqG5mw2znFmrSW72P7Dt+twjmTcfwh8h6hrV9x1-OqAMWO0_A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOqG5mw2znFmrSW72P7Dt+twjmTcfwh8h6hrV9x1-OqAMWO0_A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: build issues when behind a proxy
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Jan 2014 09:48:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 21, 2014 at 12:47:21AM -0800, Roseville House wrote:
> When I commented out socat in git-proxy I made some progress but still
> failed on following  URLs
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
> source.
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/matchbox-keyboard;branch=matchbox-keyboard-0-1'.
> Unable to fetch URL from any source.
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/yocto-kernel-tools.git'. Unable to fetch
> URL from any source.
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
> fetch URL from any source.
> WARNING: Failed to fetch URL
> git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta,
> attempting MIRRORS if available
Does 'git clone git://git.yoctoproject.org/linux-yocto-3.10.git' work
in terminal?

> 
> On Tue, Jan 21, 2014 at 12:34 AM, Roseville House
> <championoaks@gmail.com> wrote:
> > Thanks a lot for your reply :)
> > I followed the instructions but still stuck
> >
> > user@user:~/yocto/poky/build$ echo $GIT_PROXY_COMMAND
> > /usr/local/bin/git-proxy
> > user@user:~/yocto/poky/build$ cat /usr/local/bin/git-proxy
> > #!/bin/bash
> > PROXY=proxy.company.com
> > PORT=901
> > exec socat STDIO SOCKS4:$proxy:$1:$2
> > case $1 in
> > # list git servers here that you do not want to use
> > # the proxy with, separated by a pipe character '|' as below:
> >
> > review.tizen.org)
> >    METHOD="-X connect"
> >          ;;
> > *)
> >  METHOD="-X 5 -x ${PROXY}:${PORT}"
> >  #The line above is applicable to Ubuntu and openSUSE.
> >  #For Fedora, use the variation below since it only supports socks v4.
> >  #METHOD="-X 4 -x ${PROXY}:${PORT}"
> >          ;;
> >  esac
> >
> >  nc $METHOD $*
> > user@user:~/yocto/poky/build$ cat ~/.gitconfig
> > [http]
> > proxy = http://proxy.company.com:901
> > [core]
> > gitProxy = git-proxy
> >
It looks like you have an interesting combination of socat and nc in the
same proxy script, plus the GIT_PROXY_COMMAND in your environment and
proxy setting in ~/.gitconfig. :) GIT_PROXY_COMMAND normally overrides
these settings.

Also, it looks like the socat solution has a small bug: s/proxy/PROXY

I suggest you try the following:
 * remove the proxy settings in ~/.gitconfig;
 * set the proxy script to the example below (I'm using this one);
 * put GIT_PROXY_COMMAND in your ~/.bashrc

Here is how my proxy script looks, maybe it helps:

******************
#!/bin/sh

case $1 in
        *.company.com|192.168.*|127.0.*|localhost)
                METHOD="-X connect"
                ;;
        *)
                METHOD="-X 5 -x proxy.company.com:8080"
        ;;
esac
/bin/nc $METHOD $*
******************

Laurentiu

