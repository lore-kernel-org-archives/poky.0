Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8822FE006C3
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 08:41:07 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 40BCDF81251; Wed, 16 Jan 2013 09:41:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7D576F8124F;
	Wed, 16 Jan 2013 09:41:06 -0700 (MST)
Message-ID: <50F6D82B.4040001@mlbassoc.com>
Date: Wed, 16 Jan 2013 09:41:15 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <50F6D326.9000500@mlbassoc.com>
	<CAJTo0LYJtaEAHbsQQ89cwpOJJ3imD3fsp6Gs__WMLr+Xqu+j_A@mail.gmail.com>
In-Reply-To: <CAJTo0LYJtaEAHbsQQ89cwpOJJ3imD3fsp6Gs__WMLr+Xqu+j_A@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Using gnome icons
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
X-List-Received-Date: Wed, 16 Jan 2013 16:41:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-01-16 09:36, Burton, Ross wrote:
> On 16 January 2013 16:19, Gary Thomas <gary@mlbassoc.com> wrote:
>> I have an image based on core-image-sato.  How can I enable this
>> to use the full gnome icon set?  e.g. I run an application
>> which uses GTK+ directly which has a button using GTK_STOCK_MEDIA_RECORD
>> On my Sato based device, this button just says 'Record' whereas on
>> my desktop it shows with a nice red record icon.
>>
>> Is there a way to make this work on my Poky/Yocto based system?
>
> Did your image include the gnome-icon-theme package?

Yes (actually I added it post build but it should be the same)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

