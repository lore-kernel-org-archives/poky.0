Return-Path: <denis@denix.org>
Received: from vms173009pub.verizon.net (vms173009pub.verizon.net
	[206.46.173.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id A981E4C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 16:52:52 -0600 (CST)
Received: from gandalf.denix.org ([unknown] [71.255.236.20])
	by vms173009.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0LD1008SH3JOBPA4@vms173009.mailsrvcs.net> for
	poky@yoctoproject.org; Mon, 06 Dec 2010 16:52:42 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 1964614AF64; Mon,
	06 Dec 2010 17:52:36 -0500 (EST)
Date: Mon, 06 Dec 2010 17:52:36 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: openembedded-devel@lists.openembedded.org
Message-id: <20101206225236.GD29253@denix.org>
References: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
	<4CFD68A2.20408@intel.com>
MIME-version: 1.0
In-reply-to: <4CFD68A2.20408@intel.com>
User-Agent: Mutt/1.5.16 (2007-06-09)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 06 Dec 2010 22:52:53 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Mon, Dec 06, 2010 at 02:50:10PM -0800, Saul Wold wrote:
> On 12/06/2010 11:48 AM, Frans Meulenbroeks wrote:
>> I was checking libcdaudio for LICENSE info.
>> recipe says GPL
>> COPYING file is the GPLv2 one
>> README file says:
>>
>> libcdaudio is distributed under the GNU Library General Public
>> License, included in this package under the top level source directory
>> in the file COPYING
>>
>> C files also mention LGPL. but say v2 or later
>>
>> What to do with this in the LICENSE field? LGPLv2+ ?
>>
> This seems reasonable, you should also include the header chunk in the 
> LIC_FILES_CHKSUM, you can specify start and end lines for the checksum.

Saul,

We don't have this feature in OpenEmbedded yet... But it would be nice to port 
it from Poky though! :)

-- 
Denys

