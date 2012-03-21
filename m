Return-Path: <Lauri.Hintsala@bluegiga.com>
Received: from darkblue.bluegiga.com (bluegiga.fi [194.100.31.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E65A7E0070C
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 23:14:18 -0700 (PDT)
Received: from [10.1.1.28] ([10.1.1.28]) by darkblue.bluegiga.com with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 21 Mar 2012 08:14:10 +0200
Message-ID: <4F6971AF.7060901@bluegiga.com>
Date: Wed, 21 Mar 2012 08:14:07 +0200
From: Lauri Hintsala <lauri.hintsala@bluegiga.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Lightning/1.0b2 Thunderbird/3.1.19
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F67EA50.7000708@mlbassoc.com>	<1332210703.1041.86.camel@localhost.localdomain>	<1332224231.1848.24.camel@dongxiao-osel>
	<4F68563D.6030206@mlbassoc.com>
In-Reply-To: <4F68563D.6030206@mlbassoc.com>
X-OriginalArrivalTime: 21 Mar 2012 06:14:10.0682 (UTC)
	FILETIME=[D4ADB5A0:01CD0729]
Subject: Re: HOB doesn't see my image recipes
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
X-List-Received-Date: Wed, 21 Mar 2012 06:14:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 03/20/2012 12:04 PM, Gary Thomas wrote:
> On 2012-03-20 00:17, Xu, Dongxiao wrote:
>> On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
>>> maybe all image recipes should be placed in the directory
>>> "meta-xx/images"?
>>
>> Hob recognizes image whose file name is "xxx-image-xxx", like
>> core-image-sato.
>
> Sadly, all of my image recipes are named XXX-image.bb

I have also this issue because I have same name pattern.

Regards,
Lauri Hintsala

