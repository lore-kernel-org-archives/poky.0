Return-Path: <denis@denix.org>
Received: from vms173001pub.verizon.net (vms173001pub.verizon.net
	[206.46.173.1])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24C484C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 14:31:15 -0600 (CST)
Received: from gandalf.denix.org ([unknown] [71.255.236.20])
	by vms173001.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0LD000B5FWZD1GS1@vms173001.mailsrvcs.net> for
	poky@yoctoproject.org; Mon, 06 Dec 2010 14:31:02 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id DB23514AF64; Mon,
	06 Dec 2010 15:30:48 -0500 (EST)
Date: Mon, 06 Dec 2010 15:30:48 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: openembedded-devel@lists.openembedded.org
Message-id: <20101206203048.GA29253@denix.org>
References: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
User-Agent: Mutt/1.5.16 (2007-06-09)
Cc: poky@yoctoproject.org
Subject: Re: [oe] libcdaudio license issue
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
X-List-Received-Date: Mon, 06 Dec 2010 20:31:15 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Mon, Dec 06, 2010 at 08:48:28PM +0100, Frans Meulenbroeks wrote:
> I was checking libcdaudio for LICENSE info.
> recipe says GPL
> COPYING file is the GPLv2 one
> README file says:
> 
> libcdaudio is distributed under the GNU Library General Public
> License, included in this package under the top level source directory
> in the file COPYING
> 
> C files also mention LGPL. but say v2 or later
> 
> What to do with this in the LICENSE field? LGPLv2+ ?

Frans,

I'd agree that LGPLv2+ is a safe bet, especially since that's what is 
specified in the sources.

-- 
Denys

