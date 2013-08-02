Return-Path: <biannm@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5011E015A1
	for <poky@yoctoproject.org>; Fri,  2 Aug 2013 01:09:44 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.89,799,1367942400"; 
   d="scan'208";a="8097346"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 02 Aug 2013 16:06:41 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r7289gkS024820;
	Fri, 2 Aug 2013 16:09:42 +0800
Received: from [127.0.0.1] ([10.167.226.190])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013080216082655-361046 ;
	Fri, 2 Aug 2013 16:08:26 +0800 
Message-ID: <51FB6942.8040002@cn.fujitsu.com>
Date: Fri, 02 Aug 2013 16:09:38 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.28) Gecko/20120306 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <51EF7AD7.7080009@cn.fujitsu.com>
	<EDC7964C-6C92-49D1-BA30-4CE95F5578A3@gmail.com>
	<51FB52D7.1010507@cn.fujitsu.com>
	<9301F5F5-31B5-48AD-8038-8065EBEAD303@gmail.com>
In-Reply-To: <9301F5F5-31B5-48AD-8038-8065EBEAD303@gmail.com>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/08/02 16:08:26,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/08/02 16:08:27,
	Serialize complete at 2013/08/02 16:08:27
Cc: poky@yoctoproject.org
Subject: Re: Why we release yocto on different branch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Aug 2013 08:09:46 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8



said the following on 2013-8-2 15:28:, Khem Raj wrote:
> 
> On Aug 1, 2013, at 11:33 PM, Bian Naimeng <biannm@cn.fujitsu.com> wrote:
> 
>> Thanks for your answer.
>>
>> Do we apply new features into these branches such as denzil/danny/dylan.
>> Only bug fix?
>>
> 
> bug fixes only. And the fix has to be done in master branch if its existing there
> and then back ported into the release branch
> 

I get it.
Thank you very much.

Thanks
 Bian


