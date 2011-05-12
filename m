Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63E144C810D2
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:05:48 -0500 (CDT)
Received: from dlep36.itg.ti.com ([157.170.170.91])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id p4CM5i03023116
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 12 May 2011 17:05:44 -0500
Received: from dlep26.itg.ti.com (localhost [127.0.0.1])
	by dlep36.itg.ti.com (8.13.8/8.13.8) with ESMTP id p4CM5iEl021430;
	Thu, 12 May 2011 17:05:44 -0500 (CDT)
Received: from dlee73.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id p4CM5i5k006963;
	Thu, 12 May 2011 17:05:44 -0500 (CDT)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE73.ent.ti.com
	(157.170.170.88) with Microsoft SMTP Server id 8.3.106.1;
	Thu, 12 May 2011 17:05:43 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	p4CM5hdG006246;	Thu, 12 May 2011 17:05:43 -0500
Message-ID: <4DCC59B7.1070309@ti.com>
Date: Thu, 12 May 2011 18:05:43 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4DCC3BA6.3010406@windriver.com> <4DCC4A51.9010309@linux.intel.com>
	<4DCC4D17.7000600@linux.intel.com>
In-Reply-To: <4DCC4D17.7000600@linux.intel.com>
Cc: poky <poky@yoctoproject.org>, "openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Commit and Patch message guidelines - fifth draft
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
X-List-Received-Date: Thu, 12 May 2011 22:05:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 05:11 PM, Darren Hart wrote:
> One more thing. There is a great deal of cross-posting to the various
> lists. We should discourage this. At least mentioning somewhere in here
> that patches should be sent to the appropriate list with maintainers and
> involved developers on CC and not cross posted would be a help.

Ok, so I am going to go ahead and ask the dumb question.  Where is the 
write up that say what list is for what?

It seems to me there is a whole bunch of discussion happening on the 
poky list about making changes that that would effect everyone using 
openembedded-core.  Do we have two lists for discussion of stuff that 
effect the oe-core?

-- Bill

