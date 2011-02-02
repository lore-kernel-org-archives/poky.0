Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 927EB4C800A8
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 09:17:36 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p12FHYV5001633;
	Wed, 2 Feb 2011 07:17:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 07:17:34 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 07:17:33 -0800
Message-ID: <4D49758C.30109@windriver.com>
Date: Wed, 02 Feb 2011 09:17:32 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4D497242.2000409@mlbassoc.com>
	<AANLkTik21AK9-kuM78JU8=GHYmPNCOJobM3_VK1BY+V3@mail.gmail.com>
In-Reply-To: <AANLkTik21AK9-kuM78JU8=GHYmPNCOJobM3_VK1BY+V3@mail.gmail.com>
X-OriginalArrivalTime: 02 Feb 2011 15:17:34.0067 (UTC)
	FILETIME=[5134B430:01CBC2EC]
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: PR and .bbappend
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
X-List-Received-Date: Wed, 02 Feb 2011 15:17:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/2/11 9:13 AM, Chris Larson wrote:
> On Wed, Feb 2, 2011 at 8:03 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> Should .bbappend files have a PR in them?  If so, must it
>> match the one in the main .bb file?
> 
> All metadata in a .bbappend is essentially concatenated to the recipe.
>  If you define PR in the .bbappend, it will override the one in the
> recipe, which is unlikely what you want, as that loses information.
> The better route is to do something like PR .= ".1" in the .bbappend,
> and bump that when changing the bbappend file.

I was going to suggest the same thing.  A good approach is to append a value to
the existing PR.  (I suggest this get added as a best practice in the
documentation on bbappend...  I'm not sure who the correct person is to point
this out to though.)

--Mark

