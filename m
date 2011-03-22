Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFD0A4C80132
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 19:20:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so1070468pzk.35
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 17:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=1C/rMrDRXZuCF8OkQWZ+VY6YpZpgpRsHTwe3Lamgslg=;
	b=jAtV9ifaEU3TqddsP6jwYd0avG2bO09E++r4Iw0Y5v/ca6HQnXILRII/XiMgPBB2Ko
	GqXVHllQZIh5QRFv0MHczSEt+MJ/kCZcr9to039mxtd+tX11hr2XIr/XuLW/4m9ZTnwo
	BWvv7Y8CHDbO92T430TSmllvX/Hy/CXmI3Htw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=BRYHZDVkiBVhrv2nsgWb3cyWPeWZ/VSGMFe8DDNY3MNsGzdVMIykWcfHMN558jWIEt
	zehPH6rFwXhOCRyB+JYYxkgEIZpFpoewJneHxqhyMJrJB+P3kyTLbYjqBXKwOTsP35zm
	YbpZ5LiDl8KfAJc90XSfF3qCuQOtBqIcKXnYc=
Received: by 10.142.229.21 with SMTP id b21mr3662300wfh.29.1300753245454;
	Mon, 21 Mar 2011 17:20:45 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id n4sm7913862wfl.14.2011.03.21.17.20.42
	(version=SSLv3 cipher=OTHER); Mon, 21 Mar 2011 17:20:43 -0700 (PDT)
Message-ID: <4D87EB44.8090108@gmail.com>
Date: Mon, 21 Mar 2011 17:20:20 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D86B0D2.2070004@mlbassoc.com> <1300708651.30423.3434.camel@rex>
	<4D875A91.8000402@mlbassoc.com>
In-Reply-To: <4D875A91.8000402@mlbassoc.com>
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Tue, 22 Mar 2011 00:20:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


> My only concern is that if rpm is the primary emphasis, ipk/opkg might
> suffer from rot.
>
I think that wont be the case

