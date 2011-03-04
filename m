Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE5664C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 23:12:04 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so351102pvg.35
	for <poky@yoctoproject.org>; Thu, 03 Mar 2011 21:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=shDxIU7K79PLfJLVxey3PZOX1NUmQmlSzfzVlznmJ1I=;
	b=vfZSZagCcoUUZ/ho9qXxGCG98smTPpYKEkbSwvt1XFGgcwFuXep4899bu4sxlneCBb
	lvxllwvhqIjyIqb0uzmZzlrhVuKAxmxTyQqPDSYoxV1UmjYT9Hba5EivHnxdF70R0E47
	uaTK7qHoLvrYbnjGmPVHD0eGuI501BCHNTSUA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=DrIpnIJEjMs8K+5loPNOwQBoLb9X15EDzIiNgk6gg49AYUZ/rOBX6y1Cf5Az5FaFYk
	TlySYZdmoWaYWRaOMrGgwbuT0fJebKDOXY/pRKUSvna64iNz8pea0alnMeolM5V20Y6h
	/PBDKeUl9+GDuWNhJHwsyFxpQzHyuPTDWJlI4=
Received: by 10.142.180.15 with SMTP id c15mr234368wff.49.1299215524362;
	Thu, 03 Mar 2011 21:12:04 -0800 (PST)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id w32sm2432644wfh.7.2011.03.03.21.12.02
	(version=SSLv3 cipher=OTHER); Thu, 03 Mar 2011 21:12:03 -0800 (PST)
Message-ID: <4D70749F.4010207@gmail.com>
Date: Thu, 03 Mar 2011 21:11:59 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1299210292.git.ke.yu@intel.com>
	<98727668717469ae0d90f6d8deb1f8bf224c36f6.1299210292.git.ke.yu@intel.com>
In-Reply-To: <98727668717469ae0d90f6d8deb1f8bf224c36f6.1299210292.git.ke.yu@intel.com>
Subject: Re: [PATCH 1/1] x11vnc: add big endian CFLAG for mips, to fix bug 782
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
X-List-Received-Date: Fri, 04 Mar 2011 05:12:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 3/3/2011 7:50 PM, Yu Ke wrote:
> linux mips is big endian, so need "LIBVNCSERVER_WORDS_BIGENDIAN"
> flag for mips compilling.
>
> this patch fix bug [YOCTO #782]
>
> Signed-off-by: Yu Ke<ke.yu@intel.com>
> ---
>   meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
> index f5a6662..17e9593 100644
> --- a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
> +++ b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
> @@ -17,3 +17,4 @@ SRC_URI[sha256sum] = "60a7cceee2c9a5f1c854340b2bae13f975ac55906237042f81f795b28a
>
>   inherit autotools
>
> +CFLAGS_mips += "-DLIBVNCSERVER_WORDS_BIGENDIAN"

I see that this package uses autconf macro AC_C_BIGENDIAN
to assert endianness. I would interested to know why this test does not 
work.

