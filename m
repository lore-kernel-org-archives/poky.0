Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70E864C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 07:43:08 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LDixZi004310; Fri, 21 Jan 2011 13:45:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id cHyO1CGhqFCx; Fri, 21 Jan 2011 13:44:59 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LDiSIs004286
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 21 Jan 2011 13:44:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <9C72B623-6A5C-4943-AD7B-0A90E6077903@dominion.thruhere.net>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com> <4D38DFB5.3000907@intel.com>
	<1295600248.2382.10.camel@scimitar> <1295614033.14388.30423.camel@rex>
	<9C72B623-6A5C-4943-AD7B-0A90E6077903@dominion.thruhere.net>
Date: Fri, 21 Jan 2011 13:42:26 +0000
Message-ID: <1295617346.14388.30590.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 13:43:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-21 at 13:58 +0100, Koen Kooi wrote:
> Op 21 jan 2011, om 13:47 heeft Richard Purdie het volgende geschreven:
> 
> > On Fri, 2011-01-21 at 08:57 +0000, Joshua Lock wrote:
> >> On Fri, 2011-01-21 at 09:21 +0800, Zhai, Edwin wrote:
> > 
> >>>> webkit-gtk 1.2.6
> >>>> 
> >>> 
> >>> Our poky seems never has stable release, and always use development 
> >>> branch. Maybe we want some new feature? RP can comment. Another benefit 
> >>> is development branch is under svn, so we can selectively pick some 
> >>> modules instead of big whole repo. Given development branch, there is no 
> >>> even/odd difference.
> >>> 
> >>> I have a plan to change it to stable release with the cost of long 
> >>> download & compile time, but I'm afraid can't make it in this release cycle.
> >> 
> >> I think we need someone else to own downgrading this recipe for the next
> >> release then, we can't commit to a 6month stable cycle with an unstable
> >> software package. Do you have a handle on potential impact of
> >> downgrading this recipe?
> >> 
> >> IIRC only the sato browser (web-webkit) is affected by this recipe?
> > 
> > webkit is an odd beast. My gut instinct says we're better off keeping up
> > to date with webkit and the 1.3.7 version is ok in this case. I don't
> > know how "old" 1.2.6 is and how unstable the 1.3 series is though. For
> > what we use it for (web-webkit), 1.3.7 is probably fine?
> 
> The version is largely concerned with the GTK glue, not really with
> the underlying core webkit stuff. There is an SONAME change (webkit ->
> webkitgtk) in the 1.3.x series that would be nice to have, since it
> fixes namespacing issues when trying to use both webkit-gtk and
> webkit-efl. 1.3.x has been treating me well in angstrom so far.

Ok, that sounds like good reasoning to me. Lets stick with the 1.3.x
version in this case, an exception to the general rule but I think its a
reasonable one.

Cheers,

Richard




