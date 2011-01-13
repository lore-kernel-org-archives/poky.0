Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8F204C80039
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:19:41 -0600 (CST)
Received: from [192.168.1.16] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 5D76712EC118
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:59:56 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D2F33E2.7060808@intel.com>
References: <cover.1294686399.git.elizabeth.flanagan@intel.com>
	<1294749182.2516.12.camel@scimitar>  <4D2F33E2.7060808@intel.com>
Date: Thu, 13 Jan 2011 17:28:27 +0000
Message-ID: <1294939708.2564.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 0/1] Poky License Reporting
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
X-List-Received-Date: Thu, 13 Jan 2011 18:19:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 09:18 -0800, Elizabeth Flanagan wrote:
> On 01/11/2011 04:33 AM, Joshua Lock wrote:
> > Hi Beth,
> > 
> > I don't see any patches so guess you used the old-style pull script?
> 
> No, the patch was too big, so the listserv held it in limbo. :)
> 
> > 
> > On Mon, 2011-01-10 at 11:09 -0800, Beth Flanagan wrote:
> >> Initial commit of license reporting:
> >>
> >> This is an intial commit for the license reporting system. A few notes:
> >> The LICENSE fields needs to be standardized throughout poky.
> > 
> > Reading this summary I'd suggest we standardise on whatever the filename
> > in common-licenses/ is. 
> > Furthermore we could (should) add a sanity check whereby a LICENSE field
> > with values that aren't a file in common-licenses/ causes a warning or
> > error.
> 
> Good point, I'll put in a check for that. A question. Could the
> LICENSE_FILES_CHECKSUM ever have a non file:/// URI? If so, could you
> point out an example of this?

Not that I'm aware of, though we can always adjust code to handle this
if required...

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


