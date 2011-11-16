Return-Path: <fdupoux@free.fr>
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0455EE00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 14:34:03 -0800 (PST)
Received: from zimbra33-e6.priv.proxad.net (unknown [172.20.243.183])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 4D82CD482A8;
	Wed, 16 Nov 2011 23:33:57 +0100 (CET)
Date: Wed, 16 Nov 2011 23:33:56 +0100 (CET)
From: Francois Dupoux <fdupoux@free.fr>
To: William Mills <wmills@ti.com>
Message-ID: <3e9f54b5-3bb2-4d4c-b0f0-1ab4a0b50d6b@zimbra33-e6.priv.proxad.net>
In-Reply-To: <4EC431AC.2010207@ti.com>
MIME-Version: 1.0
X-Originating-IP: [46.33.16.32]
X-Mailer: Zimbra 7.1.4-GA3333 (ZimbraWebClient - GC15 (Linux)/7.1.4-GA3333)
X-Authenticated-User: fdupoux@free.fr
Cc: poky@yoctoproject.org
Subject: Re: Qt should be linked to openssl at compilation
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
X-List-Received-Date: Wed, 16 Nov 2011 22:34:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi William,

I confirm I am building all the packages in a 100% automated way using
bitbake, I am not copying any binary manually, and I am just using
the squashfs root filesystem built by bitbake.

Thanks
Francois

----- Original Message -----
From: "William Mills" <wmills@ti.com>
To: "Mark Hatle" <mark.hatle@windriver.com>
Cc: "Francois Dupoux" <fdupoux@free.fr>, poky@yoctoproject.org
Sent: Wednesday, 16 November, 2011 9:57:00 PM
Subject: Re: [poky] Qt should be linked to openssl at compilation


>> Hi Mark,
>>
>> Yes, I am using RPM packages, with the latest stable version (poky-6.0)

Francois,  are you building your application using bitbake or 
externally?  Are you adding it to your board using an RPM package or 
just coping it there?

If your building it externally and just copying it, all the magic others 
are talking about won't happen.  However you can just add the openssl 
packages to you target.  You can do this by building them and using RPM 
or you can create a custom image/task recipie and add the needed 
packages.  You could even use HOB if you want an easy way to create a 
custom image.

If your building your app in bitbake, then ignore me and continue your 
conversation with Mark.




