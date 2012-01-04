Return-Path: <walters@verbum.org>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF7EAE0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 18:17:44 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute5.internal (compute5.nyi.mail.srv.osa [10.202.2.45])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 513A920AA6
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 21:17:43 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute5.internal (MEProxy); Tue, 03 Jan 2012 21:17:43 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=+pAPtQg2vC6OQPIG8yfIU4nXG4M=; b=lLL
	YMo4kkz9vc+EBOHGP9v3NsqFoz/STbAWmBbDL5mHI0kTa1LhSm67/sn9trf3G0uj
	cpu5qxjT5YWgw0+tvDzKmAeSNMuv81zkX50pPggp4imTSt+3KG0/FrGSh3CgHy0I
	tfMIcVGYCVa9ofFvjFMGUZzeCH5FLaMNm28PwMpg=
X-Sasl-enc: xXHdFHw+P43/ge6PTg/IRAQjv4awBhroJ+XXeeZIUIbP 1325643463
Received: from [192.168.1.6] (c-65-96-60-117.hsd1.ct.comcast.net
	[65.96.60.117])
	by mail.messagingengine.com (Postfix) with ESMTPA id 0F7B18E00FD;
	Tue,  3 Jan 2012 21:17:43 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Tue, 03 Jan 2012 21:17:25 -0500
In-Reply-To: <4F03A361.3000408@linux.intel.com>
References: <1325616533.23339.10.camel@lenny>
	<4F03A361.3000408@linux.intel.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1325643446.24646.11.camel@lenny>
Mime-Version: 1.0
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH] rpm: Move postinsts to /var
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
X-List-Received-Date: Wed, 04 Jan 2012 02:17:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-03 at 16:54 -0800, Saul Wold wrote:
> On 01/03/2012 10:48 AM, Colin Walters wrote:
> > My OS has read-only bind mounts over most directories (including
> > /etc), with the exception of /var.  Since these scripts need to
> > be run once and then deleted, it's better for me if these are in
> > /var, and won't hurt anyone else for them to be there.
> >
> >You fixed this for RPM, does it exist for deb and ipkg also?

From a glance, no:

rootfs_deb.bbclass
	# Attempt to run postinsts
	# Mark packages with postinst failures as unpacked
	for i in ${IMAGE_ROOTFS}/var/lib/dpkg/info/*.postinst; do
		if [ -f $i ] && ! sh $i configure; then
			_flag unpacked `basename $i .postinst`
		fi
	done

rootfs_ipk.bbclass:
	for i in ${IMAGE_ROOTFS}${opkglibdir}/info/*.postinst; do
		if [ -f $i ] && ! sh $i configure; then
		     	runtime_script_required=1
			opkg-cl ${IPKG_ARGS} flag unpacked `basename $i .postinst`
		fi
	done



