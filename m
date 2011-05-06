Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A936D4C8007E
	for <poky@yoctoproject.org>; Fri,  6 May 2011 15:24:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 May 2011 13:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="431941249"
Received: from unknown (HELO [10.255.12.61]) ([10.255.12.61])
	by azsmga001.ch.intel.com with ESMTP; 06 May 2011 13:24:44 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 06 May 2011 13:24:39 -0700
In-Reply-To: <4DC446D2.1080301@linux.intel.com>
References: <4DC446D2.1080301@linux.intel.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1304713484.2021.7.camel@scimitar>
Mime-Version: 1.0
Subject: Re: RFC: mkzipimage.sh script
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
X-List-Received-Date: Fri, 06 May 2011 20:24:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-06 at 12:06 -0700, Darren Hart wrote:
> The process for creating the USBZIP format usb key images is tedious, so I threw
> a script together. I suspect there might be demand for an integrated tool to do
> this for the more onerous of the image making processes.
> 
> 1) Any feedback on this particular script?
> 2) Should this go to scripts/contrib? 
> 3) Would an image burning tool (ala unetbootin) be of interest to 
>    others?

I think so, it'd be nice to be able to integrate such a tool as a final
step in the image creator though it should definitely be as independent
as we can make it so that we can offer just the "burner" GUI to people
downloading pre-built images.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


