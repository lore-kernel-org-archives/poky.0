Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31E9B4C80050
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 18:30:44 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 931AF16602CF; Tue, 22 Mar 2011 17:30:43 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A78F61660298;
	Tue, 22 Mar 2011 17:30:42 -0600 (MDT)
Message-ID: <4D893122.3030204@mlbassoc.com>
Date: Tue, 22 Mar 2011 17:30:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <4D876DD3.5070106@mlbassoc.com>		<1300722848.30423.3751.camel@rex>	<4D877E6B.9000007@mlbassoc.com>		<1300730269.30423.3975.camel@rex>	<4D879883.5010501@linux.intel.com>		<4D879A14.7040104@mlbassoc.com>	<4D87AAF2.3010108@linux.intel.com>		<4D87B30F.90802@mlbassoc.com>	<4D87B434.1070404@windriver.com>	<1300741361.3049.18.camel@elmorro>	<4D87D815.6090404@mlbassoc.com>
	<4D8929B2.6060101@mentor.com>
In-Reply-To: <4D8929B2.6060101@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Tue, 22 Mar 2011 23:30:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/22/2011 04:58 PM, Tom Rini wrote:
> On 03/21/2011 03:58 PM, Gary Thomas wrote:
>
>> Now, if I can just figure out how to make the [live] image larger...
>> (free space)
>> I can get on with the real testing I need to do.
>
> Have you fiddled with IMAGE_OVERHEAD_FACTOR ? If I read meta/classes/image.bbclass right setting that to 2 might give you enough free space. And time to reconcile
> openembedded.master and oe-core on some image creation bits...

Similar to other configs, I was setting IMAGE_ROOTFS_SIZE_ext3, but
this seems ineffective.  Setting IMAGE_ROOTFS_SIZE directly does seem
to work properly.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

