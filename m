Return-Path: <biannm@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8771DE0152B
	for <poky@yoctoproject.org>; Thu,  1 Aug 2013 23:34:06 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.89,799,1367942400"; 
   d="scan'208";a="8096339"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 02 Aug 2013 14:31:03 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r726Y1hV015070;
	Fri, 2 Aug 2013 14:34:01 +0800
Received: from [127.0.0.1] ([10.167.226.190])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013080214324616-357921 ;
	Fri, 2 Aug 2013 14:32:46 +0800 
Message-ID: <51FB52D7.1010507@cn.fujitsu.com>
Date: Fri, 02 Aug 2013 14:33:59 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.28) Gecko/20120306 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <51EF7AD7.7080009@cn.fujitsu.com>
	<EDC7964C-6C92-49D1-BA30-4CE95F5578A3@gmail.com>
In-Reply-To: <EDC7964C-6C92-49D1-BA30-4CE95F5578A3@gmail.com>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/08/02 14:32:46,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/08/02 14:32:49,
	Serialize complete at 2013/08/02 14:32:49
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
X-List-Received-Date: Fri, 02 Aug 2013 06:34:07 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8


said the following on 2013-7-24 15:02:, Khem Raj wrote:
> 
> On Jul 23, 2013, at 11:57 PM, Bian Naimeng <biannm@cn.fujitsu.com> wrote:
> 
>> Hi all,
>>
>> Why we release yocto on different branch?
> 
> These branches are from same trunk which we call master in git terms.
> 
>>
>> Yocto Project 1.2: denzil
>> Yocto Project 1.3: danny
>> Yocto Project 1.4: dylan
>>
> 
> yes denzil danny and dylan and so on are codenames for branches on which releases are made.
> 
>> Some questions.
>> 1. Do we always create a new branch to release the next Yocto Project?
> 
> yes


Thanks for your answer.

Do we apply new features into these branches such as denzil/danny/dylan.
Only bug fix?

Thanks
 Bian


> 
>> 2. If so, which branch/commit the new branch start from?
> 
> There is master branch and when the time comes the next release branch is spawned from master 
> 
>> 3. What's the relation between these branch?
> 
> These are release branches cut from master at some point in time.
> 
>>
>> Thanks,
>> bian
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


