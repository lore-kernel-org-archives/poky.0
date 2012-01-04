Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27F09E006DD
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 07:55:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q04Ftlqb023338
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 4 Jan 2012 07:55:47 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 4 Jan 2012 07:55:46 -0800
Message-ID: <4F047682.5030204@windriver.com>
Date: Wed, 4 Jan 2012 09:55:46 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1325616533.23339.10.camel@lenny>
	<4F03A361.3000408@linux.intel.com>
	<1325643446.24646.11.camel@lenny>
In-Reply-To: <1325643446.24646.11.camel@lenny>
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
X-List-Received-Date: Wed, 04 Jan 2012 15:55:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/3/12 8:17 PM, Colin Walters wrote:
> On Tue, 2012-01-03 at 16:54 -0800, Saul Wold wrote:
>> On 01/03/2012 10:48 AM, Colin Walters wrote:
>>> My OS has read-only bind mounts over most directories (including
>>> /etc), with the exception of /var.  Since these scripts need to
>>> be run once and then deleted, it's better for me if these are in
>>> /var, and won't hurt anyone else for them to be there.
>>>
>>> You fixed this for RPM, does it exist for deb and ipkg also?
>
>  From a glance, no:
>
> rootfs_deb.bbclass
> 	# Attempt to run postinsts
> 	# Mark packages with postinst failures as unpacked
> 	for i in ${IMAGE_ROOTFS}/var/lib/dpkg/info/*.postinst; do
> 		if [ -f $i ]&&  ! sh $i configure; then
> 			_flag unpacked `basename $i .postinst`
> 		fi
> 	done
>
> rootfs_ipk.bbclass:
> 	for i in ${IMAGE_ROOTFS}${opkglibdir}/info/*.postinst; do
> 		if [ -f $i ]&&  ! sh $i configure; then
> 		     	runtime_script_required=1
> 			opkg-cl ${IPKG_ARGS} flag unpacked `basename $i .postinst`
> 		fi
> 	done

Based on the above, I would then suggest you use /var/lib/rpm/info/*.postinst

That way the files are contained within the rpm directory of database and 
associated files.  Otherwise, I agree, this is a bug in the current 
implementation.  It shouldn't be using etc for things that can change.

--Mark

>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


