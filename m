Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 324204C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 14:23:57 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1PJXUy-0000Fl-H3 from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Fri, 19 Nov 2010 12:23:56 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 19 Nov 2010 12:23:56 -0800
Received: from [172.30.6.141] ([172.30.6.141]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Fri, 19 Nov 2010 13:23:55 -0700
Message-ID: <4CE6DCD8.7080409@mentor.com>
Date: Fri, 19 Nov 2010 13:23:52 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Lightning/1.0b1 Thunderbird/3.0.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290179273.git.josh@linux.intel.com>	<00ec71b3834779b9c4a278b403729f2822a41845.1290179273.git.josh@linux.intel.com>
	<4CE6A7FF.4040507@windriver.com>
In-Reply-To: <4CE6A7FF.4040507@windriver.com>
X-OriginalArrivalTime: 19 Nov 2010 20:23:55.0741 (UTC)
	FILETIME=[B08E50D0:01CB8827]
Subject: Re: [PATCH 1/1] poky.conf: move the SDK install into	versiondirectories
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
X-List-Received-Date: Fri, 19 Nov 2010 20:23:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 09:38 AM, Mark Hatle wrote:
> As we move beyond 1.0 work.  Would it make sense to focus on making sure the SDK
> tooling works no matter where it is installed?
>
> The compiler/linker can already do this... the other components that may be part
> of the SDK may need some slight changes to detect their current run-time
> location and adjust internal paths as necessary.
>
> (We have experience doing this for Wind River Linux, so we should be able to
> help out if it's a desired feature for Poky.)

It's happily no longer the dark ages.  The biggest hurdle, in oe.dev 
anyhow, is fixing up the helper/environment scripts that get made.

-- 
Tom Rini
Mentor Graphics Corporation

