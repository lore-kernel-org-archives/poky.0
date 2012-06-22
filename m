Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D25ACE006D9
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 06:31:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 65B67F811FA; Fri, 22 Jun 2012 07:31:50 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 630A2F811F9;
	Fri, 22 Jun 2012 07:31:49 -0600 (MDT)
Message-ID: <4FE473C5.5030601@mlbassoc.com>
Date: Fri, 22 Jun 2012 07:31:49 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4FE220B8.2080903@mlbassoc.com> <4FE45BE3.3090200@mlbassoc.com>
	<21623227.IdSUJJ2Hr3@helios> <1665284.yNCLAGgIcC@helios>
In-Reply-To: <1665284.yNCLAGgIcC@helios>
Cc: poky@yoctoproject.org
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 13:31:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-22 07:05, Paul Eggleton wrote:
> On Friday 22 June 2012 14:01:39 Paul Eggleton wrote:
>> Rather than ${MACHINE}.patch, the traditional way to do this is to have a
>> generic name for the file and then use a MACHINE-named subdirectory within
>> your BSP layers to define the machine-specific version. You can always make
>> the dummy patch not apply or specifically check for some aspect added by
>> the dummy in do_configure.
>
> (Assuming you use a dummy file that is - with the COMPATIBLE_MACHINE fix I
> suggested this is not necessary; this was from an earlier edit of my message.)

I like the idea of using COMPATIBLE_MACHINE - I think I can make that work well.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

