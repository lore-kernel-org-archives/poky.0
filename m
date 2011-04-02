Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BF1C4C800A0
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 07:57:49 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E08E516603C9; Sat,  2 Apr 2011 06:57:48 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0FF36166030F;
	Sat,  2 Apr 2011 06:57:48 -0600 (MDT)
Message-ID: <4D971D4C.60109@mlbassoc.com>
Date: Sat, 02 Apr 2011 06:57:48 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <4D971BF9.7050707@intel.com>
In-Reply-To: <4D971BF9.7050707@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: How to append inc file
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
X-List-Received-Date: Sat, 02 Apr 2011 12:57:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/02/2011 06:52 AM, Yu Ke wrote:
> Hi,
>
> bbappend file can be used to append content to bb file, and it is very useful in BSP meta data. Today I just find the *.inc file is also need to be appended, so I wonder if there
> is similar incappend file that can append content to inc file?
>
> I meet this requirement when trying to fix bug 896 (http://bugzilla.yoctoproject.org/show_bug.cgi?id=896). To make poky-image-clutter build pass in n450, the clutter.inc need to be
> appended to change the COMPATIBLE_MACHINE.

Why can't you just put the change in the .bbappend file (since it's
already recipe/target specific)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

