Return-Path: <eha@dev.doredevelopment.dk>
Received: from mail.doredevelopment.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34FAF4C80578;
	Mon, 25 Apr 2011 02:48:26 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.doredevelopment.dk (Postfix) with ESMTP id 1B3614094;
	Mon, 25 Apr 2011 09:48:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at dev.doredevelopment.dk
Received: from mail.doredevelopment.dk ([127.0.0.1])
	by localhost (public.doredevelopment.dk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id KLvSpJXbsP8o; Mon, 25 Apr 2011 09:48:24 +0200 (CEST)
Received: from [192.168.1.189] (0x55532124.adsl.cybercity.dk [85.83.33.36])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: eha)
	by mail.doredevelopment.dk (Postfix) with ESMTPSA id 482062F66;
	Mon, 25 Apr 2011 09:48:22 +0200 (CEST)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1300408987.30423.2172.camel@rex>
References: <1300408987.30423.2172.camel@rex>
Organization: DoreDevelopment ApS
Date: Mon, 25 Apr 2011 09:48:13 +0200
Message-ID: <1303717693.964.10.camel@eha>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Subject: Re: Shared State - What does it mean and why should I care?
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
X-List-Received-Date: Mon, 25 Apr 2011 07:48:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 00:43 +0000, Richard Purdie wrote:

> As a real world example, the aim is when building an ipk based image,
> only the do_package_write_ipk tasks would have their sstate packages
> fetched and extracted. Since the sysroot isn't used, it would never get
> extracted. This is another reason to prefer the task based approach
> sstate takes over any recipe based approach which would have to install
> the output from every task.

In case anyone cares, the "per-recipe based staging" used in OE-lite,
and proposed as a future design concept for OE-core (although clearly
not going to be used in OE-core anytime soon) is also task based in the
above context, and has the same advantage as described for sstate above.

I just wanted to make the point as the "any recipe based approach" could
easily give casual readers the assumption that this was a weak point in
my proposal.

/Esben


