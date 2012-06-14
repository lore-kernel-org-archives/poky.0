Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88679E00723
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 07:40:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5EEeLOW002094;
	Thu, 14 Jun 2012 15:40:21 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01153-09; Thu, 14 Jun 2012 15:40:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5EEeCIu002088
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 14 Jun 2012 15:40:13 +0100
Message-ID: <1339684811.24333.88.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patrick <kpa_info@yahoo.fr>
Date: Thu, 14 Jun 2012 15:40:11 +0100
In-Reply-To: <4FD9E759.8010208@yahoo.fr>
References: <4FD753B2.9060705@yahoo.fr> <1339512456.8065.13.camel@ted>
	<4FD83EC0.7050605@yahoo.fr> <1339574880.8065.20.camel@ted>
	<4FD8A5F5.4080001@yahoo.fr> <4FD8B03E.8090408@yahoo.fr>
	<4FD9E759.8010208@yahoo.fr>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Running script after installation (postinst)
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
X-List-Received-Date: Thu, 14 Jun 2012 14:40:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-06-14 at 15:30 +0200, Patrick wrote:
> On 06/13/2012 05:22 PM, Patrick wrote:
> > On 06/13/2012 04:38 PM, Patrick wrote:
> >> On 06/13/2012 10:08 AM, Richard Purdie wrote:
> >>> You would need to add the dependency in and then it sounds like you're
> >>> probably using rpm and it doesn't want to honour the dependency for some
> >>> reason. You could add a rootfs post process command to add in what you
> >>> need which would guarantee all the files are present first...
> >>
> >> That's a good idea ! What would be the correct function name ? Something
> >> like do_rootfs_append() ?
> >> In this case do we have to prefix all the path with ${IMAGE_ROOTFS} ?
> >>
> >> Patrick
> >
> > I reply myself:
> > as suggested above, using do_rootfs_append() and ${IMAGE_ROOTFS} it
> > works nicely !
> >
> 
> Argh, in fact it doesn't work. The script is executed against right 
> files but *after* packaging everything into a single image...
> The script should be executed just before packaging of the image.
> 
> Any idea how to do that ?

ROOTFS_POSTPROCESS_COMMAND is probably what you're looking for.

Cheers,

Richard




