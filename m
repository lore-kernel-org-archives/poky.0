Return-Path: <walters@verbum.org>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61B98E0123F
	for <poky@yoctoproject.org>; Tue, 10 Jan 2012 06:29:30 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute6.internal (compute6.nyi.mail.srv.osa [10.202.2.46])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id CDC0A206ED
	for <poky@yoctoproject.org>; Tue, 10 Jan 2012 09:29:28 -0500 (EST)
Received: from frontend2.nyi.mail.srv.osa ([10.202.2.161])
	by compute6.internal (MEProxy); Tue, 10 Jan 2012 09:29:28 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=V57soFrMGYvkzhokSqqKoqBTs+o=; b=jC8
	EK/VbiVW/ECuiVovIP3sk4F8QX2QlnkPPXfhpWxqAGE95EiYhTeHEOTbxvJ9tpQc
	5McuAcN+ewO1T79+LSh4y6rbpx6KdxI51HUM90My9oERZZzSHogtjvv4h+vwjdwZ
	kPGSQei6fL25nlRRCgS4JzJ+aFWzNJtfGk+YRt6o=
X-Sasl-enc: SmDqhru9vy4s/Oa05CUnLyRZHfYl/YM87sJY/kdeM/yk 1326205768
Received: from [10.16.189.124] (nat-pool-rdu.redhat.com [66.187.233.202])
	by mail.messagingengine.com (Postfix) with ESMTPA id 658B5482483;
	Tue, 10 Jan 2012 09:29:28 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Tue, 10 Jan 2012 09:29:09 -0500
In-Reply-To: <4F0B6250.8030105@linux.intel.com>
References: <1326144238.18105.22.camel@lenny>
	<4F0B6250.8030105@linux.intel.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1326205750.18105.37.camel@lenny>
Mime-Version: 1.0
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH] util-linux: .pc files should go in the -dev packages for subpackages
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
X-List-Received-Date: Tue, 10 Jan 2012 14:29:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-01-09 at 13:55 -0800, Saul Wold wrote:
> On 01/09/2012 01:23 PM, Colin Walters wrote:
> >      The .pc files were ending up in util-linux-dev, not the correct
> >      subpackage like libuuid1-dev.
> >
> Colin,
> 
> We appreciate these patches against oe-core, can you please send them to 
> openembedded-core@lists.openembedded.org, as these are patches to OE-Core.

Sorry, I'm on the list now.

> Also, I am not sure what format and mailer you are sending, but each 
> patch I have received does not apply cleanly,

It's very likely because I'm building my OS against the Edison release,
so my patches so far are against that.  Sorry for not specifying that
explicitly.

(I'd like to rebase of course, but that's a bit farther back on the task
queue, behind getting NetworkManager working e.g.)



