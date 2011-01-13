Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 949014C81069
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 11:18:27 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Jan 2011 09:18:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,318,1291622400"; d="scan'208";a="696511541"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.24.1.57]) ([10.24.1.57])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2011 09:18:27 -0800
Message-ID: <4D2F33E2.7060808@intel.com>
Date: Thu, 13 Jan 2011 09:18:26 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1294686399.git.elizabeth.flanagan@intel.com>
	<1294749182.2516.12.camel@scimitar>
In-Reply-To: <1294749182.2516.12.camel@scimitar>
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
X-List-Received-Date: Thu, 13 Jan 2011 17:18:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/11/2011 04:33 AM, Joshua Lock wrote:
> Hi Beth,
> 
> I don't see any patches so guess you used the old-style pull script?

No, the patch was too big, so the listserv held it in limbo. :)

> 
> On Mon, 2011-01-10 at 11:09 -0800, Beth Flanagan wrote:
>> Initial commit of license reporting:
>>
>> This is an intial commit for the license reporting system. A few notes:
>> The LICENSE fields needs to be standardized throughout poky.
> 
> Reading this summary I'd suggest we standardise on whatever the filename
> in common-licenses/ is. 
> Furthermore we could (should) add a sanity check whereby a LICENSE field
> with values that aren't a file in common-licenses/ causes a warning or
> error.

Good point, I'll put in a check for that. A question. Could the
LICENSE_FILES_CHECKSUM ever have a non file:/// URI? If so, could you
point out an example of this?

-b

